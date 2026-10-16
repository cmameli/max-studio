// dseq.js - step sequencer di batteria ispirato al Metropolis (JavaScript ES5)
// 7 voci x 1-64 step (griglia di 32 step per pagina), 16 pattern selezionabili dai pad.
// Per cella (voce, step): on, velocity, ratchet 1-8, probabilita' 0-100, modo (0 singolo, 1 multi)
// Per colonna (step): ripetizioni 1-8 (impulsi di clock, come il pulse count del Metropolis), skip
// Per pattern: lunghezza 1-64, direzione. Swing globale.
autowatch = 1;
inlets = 1;
outlets = 8;
// 0: drums "voce vel" | 1: MIDI "nota vel" | 2: griglia (matrixctrl) | 3: step che suona (1-64, 0 = fermo)
// 4: pad (matrixctrl) | 5: riga skip (matrixctrl) | 6: valori per l'interfaccia "nome valore"
// 7: riga edit (matrixctrl): lo step selezionato per l'editor

var MAXS = 64, NV = 7, NP = 16, COLS = 32;
var VOICES = ["kick", "snare", "hat ch", "hat op", "low tom", "hi tom", "808"];
var DIRS = ["avanti", "indietro", "pendolo", "casuale", "browniano"];
var FILE = "drumpatterns.json";
var drumNotes = [36, 38, 42, 46, 45, 50, 35];  // note MIDI per la modulare

var P = [];                // P[p] = { len, dir, c: [v][s] = [on, vel, rat, prob, mode], rep: [s], skip: [s] }
var edit = 0, play = 0, queued = -1;
var selV = 0, selS = 0;
var editonly = 0;          // 1: il pad sceglie solo il pattern da editare
var swingAmt = 50, bpm = 120, running = 0;
var pos = 0, rcount = 0, adv = 0, sign = 1, lastHead = -1;
var page = 0;              // 0: step 1-32, 1: step 33-64
var drawing = 0;           // 1 mentre ridisegno: le uscite delle matrixctrl non sono clic
var clip = null;

function clamp(x, a, b) { return Math.max(a, Math.min(b, x)); }

function newPattern() {
    var p = { len: 16, dir: 0, c: [], rep: [], skip: [] };
    for (var v = 0; v < NV; v++) {
        p.c[v] = [];
        for (var s = 0; s < MAXS; s++) p.c[v][s] = [0, 100, 1, 100, 0];
    }
    for (s = 0; s < MAXS; s++) { p.rep[s] = 1; p.skip[s] = 0; }
    return p;
}

function demoPatterns() {
    for (var i = 0; i < NP; i++) P[i] = newPattern();
    // pad 1: base a 16 step
    var a = P[0], s;
    for (s = 0; s < 16; s += 4) a.c[0][s][0] = 1;
    a.c[1][4][0] = 1; a.c[1][12][0] = 1;
    for (s = 0; s < 16; s += 2) a.c[2][s][0] = 1;
    a.c[3][14][0] = 1;
    // pad 2: 32 step con ratchet, probabilita' e ripetizioni
    var b = P[1];
    b.len = 32;
    for (s = 0; s < 32; s += 4) b.c[0][s][0] = 1;
    b.c[0][30][0] = 1; b.c[0][30][1] = 70;
    b.c[1][4][0] = 1; b.c[1][12][0] = 1; b.c[1][20][0] = 1; b.c[1][28][0] = 1;
    b.c[1][31][0] = 1; b.c[1][31][2] = 3; b.c[1][31][1] = 60;
    for (s = 0; s < 32; s++) { b.c[2][s][0] = 1; b.c[2][s][1] = s % 2 ? 60 : 100; b.c[2][s][3] = s % 2 ? 70 : 100; }
    b.c[2][15][2] = 2; b.c[2][23][2] = 4;
    b.c[3][14][0] = 1; b.c[3][27][0] = 1;
}

// ---------------- salvataggio ----------------
function filepath() {
    var pt = this.patcher, fp = "";
    while (pt && !fp) { fp = pt.filepath; pt = pt.parentpatcher; }
    if (!fp) return "";
    return fp.substring(0, fp.lastIndexOf("/") + 1) + FILE;
}

// testo JSON scritto/letto a blocchi (File ha un limite sulla lunghezza delle stringhe)
function save() {
    var path = filepath();
    if (!path) { post("dseq: salva prima la patch, non so dove scrivere\n"); return; }
    var txt = JSON.stringify({ patterns: P });
    var f = new File(path, "write", "TEXT");
    if (!f.isopen) { post("dseq: non riesco a scrivere " + path + "\n"); return; }
    f.position = 0;
    for (var i = 0; i < txt.length; i += 4000) f.writestring(txt.substring(i, i + 4000));
    f.eof = f.position;
    f.close();
    post("dseq: pattern salvati in " + path + "\n");
}

function load() {
    var path = filepath(), ok = 0;
    demoPatterns();
    if (path) {
        var f = new File(path, "read");
        if (f.isopen) {
            var txt = "";
            while (f.position < f.eof) txt += f.readstring(4000);
            f.close();
            try {
                var o = JSON.parse(txt);
                if (o && o.patterns && o.patterns.length == NP) { P = o.patterns; ok = 1; upgrade(); }
            } catch (e) { ok = 0; }
        }
    }
    path = path || FILE;
    post(ok ? "dseq: pattern caricati da " + path + "\n" : "dseq: nessun file " + FILE + ", carico i pattern demo\n");
    redraw();
}

// pattern salvati con meno voci: aggiunge le righe nuove vuote
function upgrade() {
    for (var i = 0; i < NP; i++) {
        var e = newPattern();
        for (var v = P[i].c.length; v < NV; v++) P[i].c[v] = e.c[v];
    }
}

// ---------------- interfaccia ----------------
// solo "set" (mai "clear"): set non fa uscire nulla dalle matrixctrl
function redraw() {
    var p = P[edit], o = page * COLS;
    drawing = 1;
    try {
        for (var k = 0; k < COLS; k++) {
            for (var v = 0; v < NV; v++) outlet(2, "set", k, v, p.c[v][o + k][0]);
            outlet(5, "set", k, 0, p.skip[o + k]);
        }
    } catch (e) { post("dseq: errore nel ridisegno: " + e + "\n"); }
    drawing = 0;
    editrow();
    for (k = 0; k < COLS / 4; k++) outlet(6, "lab", k, o + k * 4 + 1);
    outlet(6, "len", p.len);
    outlet(6, "dir", p.dir);
    pads();
    showsel();
}

function pads() {
    drawing = 1;
    try {
        for (var i = 0; i < NP; i++) outlet(4, "set", i, 0, i == play ? 1 : 0);
    } catch (e) { post("dseq: errore nei pad: " + e + "\n"); }
    drawing = 0;
    info();
}

// riga edit: una sola cella accesa, lo step selezionato (se e' nella pagina visibile)
function editrow() {
    drawing = 1;
    for (var k = 0; k < COLS; k++) outlet(7, "set", k, 0, k + page * COLS == selS ? 1 : 0);
    drawing = 0;
}

// step che suona, numerato da 1 (0 = fermo)
function head(s) {
    if (s == lastHead) return;
    outlet(3, s + 1);
    lastHead = s;
}

function setpage(x) {
    page = x ? 1 : 0;
    redraw();
    head(running ? pos : -1);
}

function info() {
    outlet(6, "info", "edit " + (edit + 1) + "  play " + (play + 1) + (queued >= 0 ? "  -> " + (queued + 1) : "") + "  pag " + (page + 1));
}

function showsel() {
    var c = P[edit].c[selV][selS];
    outlet(6, "sel", VOICES[selV] + " step " + (selS + 1));
    outlet(6, "vel", c[1]);
    outlet(6, "rat", c[2]);
    outlet(6, "prob", c[3]);
    outlet(6, "mode", c[4]);
    outlet(6, "rep", P[edit].rep[selS]);
}

// click sulla griglia: colonna (della pagina) riga valore; accende/spegne soltanto
function grid(k, v, val) {
    if (drawing) return;
    var s = k + page * COLS;
    if (s < 0 || s >= MAXS || v < 0 || v >= NV) return;
    P[edit].c[v][s][0] = val ? 1 : 0;
}

// click sulla riga edit: sceglie lo step da modificare (uno alla volta)
function editclick(k, r, val) {
    if (drawing) return;
    var s = k + page * COLS;
    if (s < 0 || s >= MAXS) return;
    selS = s;
    editrow();
    showsel();
}

// clic sul nome dello strumento: stesso step, altra voce
function voice(v) {
    if (v < 0 || v >= NV) return;
    selV = v;
    showsel();
}

function skipclick(k, r, val) {
    if (drawing) return;
    var s = k + page * COLS;
    if (s < 0 || s >= MAXS) return;
    P[edit].skip[s] = val ? 1 : 0;
}

function vel(x)  { P[edit].c[selV][selS][1] = clamp(x, 1, 127); }
function rat(x)  { P[edit].c[selV][selS][2] = clamp(x, 1, 8); }
function prob(x) { P[edit].c[selV][selS][3] = clamp(x, 0, 100); }
function mode(x) { P[edit].c[selV][selS][4] = x ? 1 : 0; }
function rep(x)  { P[edit].rep[selS] = clamp(x, 1, 8); }
function len(x)  { P[edit].len = clamp(x, 1, MAXS); outlet(6, "len", P[edit].len); }
function dir(x)  { P[edit].dir = clamp(x, 0, DIRS.length - 1); }
function swing(x) { swingAmt = clamp(x, 50, 75); }
function only(x) { editonly = x ? 1 : 0; }
function note(v, n) { if (v >= 0 && v < NV) drumNotes[v] = n; }
function tempo(x) { if (x > 0) bpm = x; }

function anything() { post("dseq: messaggio sconosciuto " + messagename + "\n"); }

// click su un pad: colonna riga valore
function pad(i) {
    if (drawing) return;
    if (i < 0 || i >= NP) return;
    edit = i;
    if (!editonly) {
        if (!running || i == play) { play = i; queued = -1; blinker.cancel(); }
        else { queued = i; blinker.repeat(); }
    }
    redraw();
}

function copy()  { clip = JSON.stringify(P[edit]); post("dseq: copiato pattern " + (edit + 1) + "\n"); }
function paste() { if (clip) { P[edit] = JSON.parse(clip); redraw(); } }
function clear() { P[edit] = newPattern(); redraw(); }

// lampeggio del pad in coda
var blinkOn = 0;
var blinker = new Task(function () {
    blinkOn = 1 - blinkOn;
    drawing = 1;
    outlet(4, "set", queued, 0, blinkOn);
    drawing = 0;
}, this);
blinker.interval = 150;

// ---------------- riproduzione ----------------
function active(p) {
    var n = 0;
    for (var s = 0; s < p.len; s++) if (!p.skip[s]) n++;
    return n;
}

function first(p) {
    var s;
    if (p.dir == 1) { for (s = p.len - 1; s >= 0; s--) if (!p.skip[s]) return s; }
    else { for (s = 0; s < p.len; s++) if (!p.skip[s]) return s; }
    return 0;
}

function nextPos(p) {
    var L = p.len, q = pos, k;
    if (p.dir == 3) {
        var cand = [];
        for (k = 0; k < L; k++) if (!p.skip[k]) cand.push(k);
        return cand.length ? cand[Math.floor(Math.random() * cand.length)] : 0;
    }
    var d = 1;
    if (p.dir == 1) d = -1;
    if (p.dir == 4) { var r = Math.random(); d = r < 0.5 ? 1 : (r < 0.75 ? 0 : -1); if (d == 0 && !p.skip[q] && q < L) return q; if (d == 0) d = 1; }
    for (k = 0; k < 2 * L + 2; k++) {
        if (p.dir == 2) {
            if (L == 1) return 0;
            var n = q + sign;
            if (n < 0 || n >= L) { sign = -sign; n = q + sign; }
            q = n;
        } else {
            q = ((q + d) % L + L) % L;
        }
        if (!p.skip[q]) return q;
    }
    return q;
}

function restart() {
    pos = first(P[play]); rcount = 0; adv = 0; sign = 1;
}

function cycleLen(p) {
    var n = active(p);
    return p.dir == 2 ? Math.max(1, 2 * (n - 1)) : Math.max(1, n);
}

function switchQueued() {
    if (queued < 0) return;
    play = queued; queued = -1;
    blinker.cancel();
    pads();
}

function step(n) {
    var p = P[play];
    if (n == 0) {
        switchQueued(); p = P[play]; restart();
    } else {
        rcount++;
        if (pos >= p.len) { rcount = 0; adv = cycleLen(p); }
        else if (rcount >= p.rep[pos]) { rcount = 0; pos = nextPos(p); adv++; }
        if (adv >= cycleLen(p)) {                 // fine del pattern
            switchQueued(); p = P[play]; restart();
        }
    }
    if (active(p) == 0) { head(-1); return; }
    head(pos);
    fire(p, n);
}

function fire(p, n) {
    var hits = [];
    for (var v = 0; v < NV; v++) {
        var c = p.c[v][pos];
        hits[v] = c[0] && (rcount == 0 || c[4] == 1) && Math.random() * 100 < c[3];
    }
    if (hits[3]) hits[2] = false;                 // l'hat aperto ha la precedenza su quello chiuso

    var stepms = 15000 / bpm, s = swingAmt / 100;
    var odd = n % 2 == 1;
    var delay = odd ? (2 * s - 1) * stepms : 0;
    var dur = odd ? (2 - 2 * s) * stepms : 2 * s * stepms;
    for (v = 0; v < NV; v++) {
        if (!hits[v]) continue;
        var cc = p.c[v][pos];
        for (var k = 0; k < cc[2]; k++) later(delay + k * dur / cc[2], v, cc[1]);
    }
}

// pool di Task per swing e ratchet
var POOL = 64, pool = [], pi = 0;
for (var i = 0; i < POOL; i++) { pool[i] = new Task(hit, this); }

function hit(v, velocity) {
    outlet(1, drumNotes[v], velocity);
    outlet(0, v, velocity);
}

function later(ms, v, velocity) {
    if (ms < 1) { hit(v, velocity); return; }
    var t = pool[pi]; pi = (pi + 1) % POOL;
    t.cancel();
    t.arguments = [v, velocity];
    t.schedule(ms);
}

function run(x) {
    running = x ? 1 : 0;
    if (!running) { switchQueued(); head(-1); }
}

function notifydeleted() {
    blinker.cancel(); blinker.freepeer();
    for (var i = 0; i < POOL; i++) { pool[i].cancel(); pool[i].freepeer(); }
}

demoPatterns();
