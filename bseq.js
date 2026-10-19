// bseq.js - step sequencer di basso stile SH-101 (JavaScript ES5)
// 32 step, per step: nota (12 semitoni + ottava -1/0/+1), durata in step 1-8, velocity, accento.
// Una durata > 1 tiene la nota; se dentro la durata c'e' un'altra nota, ci scivola sopra (legato).
// 16 pattern sui pad, cambio a fine pattern; swing condiviso con il DRUM SEQ.
autowatch = 1;
inlets = 1;
outlets = 8;
// 0: bass.note "nota vel legato accento durata_ms" | 1: MIDI "nota vel durata_ms" | 2: griglia (matrixctrl)
// 3: step che suona (1-32, 0 = fermo) | 4: pad (matrixctrl) | 5: riga skip | 6: valori per l'interfaccia | 7: riga edit

var MAXS = 32, NP = 16;
var NR = 15;                       // righe: 0-11 note (B in alto, C in basso), 12 ott+, 13 ott-, 14 accento
var R_OCTUP = 12, R_OCTDN = 13, R_ACC = 14;
var NAMES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];
var DIRS = ["avanti", "indietro", "pendolo", "casuale", "browniano"];
var SCALES = [[0, 2, 3, 5, 7, 8, 10], [0, 2, 4, 5, 7, 9, 11], [0, 2, 3, 5, 7, 9, 10], [0, 1, 3, 5, 7, 8, 10],
              [0, 3, 5, 7, 10], [0, 3, 5, 6, 7, 10], [0, 2, 3, 5, 7, 8, 11]];   // minore, maggiore, dorica, frigia, penta min, blues, min armonica
var FILE = "basspatterns.json";

var P = [];                // P[p] = { len, dir, on[], note[] (0-11), oct[] (-1/0/1), acc[], dur[] (1-8), vel[], skip[] }
var edit = 0, play = 0, queued = -1, selS = 0;
var editonly = 0, swingAmt = 50, bpm = 120, running = 0;
var baseOct = 2, transp_ = 0, gatePct = 60;
var pos = 0, adv = 0, sign = 1, lastHead = -1;
var heldUntil = -1, lastNote = 36;   // indice di clock (escluso) fino a cui la nota corrente resta tenuta
var drawing = 0;           // 1 mentre ridisegno: le uscite delle matrixctrl non sono clic
var clip = null;

function clamp(x, a, b) { return Math.max(a, Math.min(b, x)); }

function newPattern() {
    var p = { len: 16, dir: 0, on: [], note: [], oct: [], acc: [], dur: [], vel: [], skip: [] };
    for (var s = 0; s < MAXS; s++) { p.on[s] = 0; p.note[s] = 0; p.oct[s] = 0; p.acc[s] = 0; p.dur[s] = 1; p.vel[s] = 100; p.skip[s] = 0; }
    return p;
}

function put(p, s, note, oct, dur, acc) {
    p.on[s] = 1; p.note[s] = note; p.oct[s] = oct || 0; p.dur[s] = dur || 1; p.acc[s] = acc || 0;
}

function demoPatterns() {
    for (var i = 0; i < NP; i++) P[i] = newPattern();
    // pad 1: linea acid a 16 step (in Do minore)
    var a = P[0];
    put(a, 0, 0, 0, 1, 1); put(a, 2, 0, 0, 1); put(a, 3, 0, 1, 2); put(a, 5, 0, 0, 1);
    put(a, 7, 3, 0, 1); put(a, 8, 0, 0, 1, 1); put(a, 10, 7, 0, 1); put(a, 11, 0, -1, 3, 1);
    put(a, 13, 0, 0, 1); put(a, 14, 10, -1, 1); put(a, 15, 0, 1, 1);
    // pad 2: 32 step, note tenute e slide
    var b = P[1];
    b.len = 32;
    put(b, 0, 0, 0, 3, 1); put(b, 3, 0, 1, 1); put(b, 6, 0, 0, 2); put(b, 8, 5, 0, 1);
    put(b, 10, 5, 0, 1); put(b, 11, 3, 0, 3, 1); put(b, 14, 0, 0, 1); put(b, 16, 0, 0, 2, 1);
    put(b, 18, 0, 1, 1); put(b, 20, 10, -1, 2); put(b, 22, 0, 0, 1); put(b, 24, 7, 0, 4, 1);
    put(b, 28, 5, 0, 1); put(b, 29, 3, 0, 1); put(b, 30, 2, 0, 2);
}

// ---------------- salvataggio ----------------
function filepath() {
    var pt = this.patcher, fp = "";
    while (pt && !fp) { fp = pt.filepath; pt = pt.parentpatcher; }
    if (!fp) return "";
    return fp.substring(0, fp.lastIndexOf("/") + 1) + FILE;
}

function save() {
    var path = filepath();
    if (!path) { post("bseq: salva prima la patch, non so dove scrivere\n"); return; }
    var txt = JSON.stringify({ patterns: P });
    var f = new File(path, "write", "TEXT");
    if (!f.isopen) { post("bseq: non riesco a scrivere " + path + "\n"); return; }
    f.position = 0;
    for (var i = 0; i < txt.length; i += 4000) f.writestring(txt.substring(i, i + 4000));
    f.eof = f.position;
    f.close();
    post("bseq: pattern salvati in " + path + "\n");
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
                if (o && o.patterns && o.patterns.length == NP) { P = o.patterns; ok = 1; }
            } catch (e) { ok = 0; }
        }
    }
    path = path || FILE;
    post(ok ? "bseq: pattern caricati da " + path + "\n" : "bseq: nessun file " + FILE + ", carico i pattern demo\n");
    redraw();
}

// ---------------- interfaccia ----------------
// solo "set" (mai "clear"): set non fa uscire nulla dalle matrixctrl
function drawcol(k) {
    var p = P[edit];
    for (var r = 0; r < 12; r++) outlet(2, "set", k, r, (p.on[k] && p.note[k] == 11 - r) ? 1 : 0);
    outlet(2, "set", k, R_OCTUP, p.oct[k] > 0 ? 1 : 0);
    outlet(2, "set", k, R_OCTDN, p.oct[k] < 0 ? 1 : 0);
    outlet(2, "set", k, R_ACC, p.acc[k]);
}

function redraw() {
    var p = P[edit];
    drawing = 1;
    try {
        for (var k = 0; k < MAXS; k++) { drawcol(k); outlet(5, "set", k, 0, p.skip[k]); }
    } catch (e) { post("bseq: errore nel ridisegno: " + e + "\n"); }
    drawing = 0;
    editrow();
    outlet(6, "len", p.len);
    outlet(6, "dir", p.dir);
    pads();
    showsel();
}

function pads() {
    drawing = 1;
    try {
        for (var i = 0; i < NP; i++) outlet(4, "set", i, 0, i == play ? 1 : 0);
    } catch (e) { post("bseq: errore nei pad: " + e + "\n"); }
    drawing = 0;
    info();
}

function editrow() {
    drawing = 1;
    for (var k = 0; k < MAXS; k++) outlet(7, "set", k, 0, k == selS ? 1 : 0);
    drawing = 0;
}

function head(s) {
    if (s == lastHead) return;
    outlet(3, s + 1);
    lastHead = s;
}

function info() {
    outlet(6, "info", "edit " + (edit + 1) + "  play " + (play + 1) + (queued >= 0 ? "  -> " + (queued + 1) : ""));
}

function noteName(p, s) {
    return NAMES[p.note[s]] + (baseOct + p.oct[s]);
}

function showsel() {
    var p = P[edit];
    var txt = "step " + (selS + 1) + ": " + (p.on[selS] ? noteName(p, selS) + (p.acc[selS] ? " acc" : "") : "pausa");
    outlet(6, "sel", txt);
    outlet(6, "vel", p.vel[selS]);
    outlet(6, "dur", p.dur[selS]);
}

// click sulla griglia: colonna riga valore
function grid(k, r, val) {
    if (drawing) return;
    if (k < 0 || k >= MAXS || r < 0 || r >= NR) return;
    var p = P[edit];
    if (r < 12) {
        var note = 11 - r;
        if (val) { p.on[k] = 1; p.note[k] = note; }          // una nota sola per colonna
        else if (p.note[k] == note) p.on[k] = 0;             // spenta la nota attiva: pausa
    } else if (r == R_OCTUP) {
        p.oct[k] = val ? 1 : (p.oct[k] > 0 ? 0 : p.oct[k]);
    } else if (r == R_OCTDN) {
        p.oct[k] = val ? -1 : (p.oct[k] < 0 ? 0 : p.oct[k]);
    } else {
        p.acc[k] = val ? 1 : 0;
    }
    drawing = 1;
    drawcol(k);
    drawing = 0;
    if (k == selS) showsel();
}

// click sulla riga edit: sceglie lo step da modificare (uno alla volta)
function editclick(k, r, val) {
    if (drawing) return;
    if (k < 0 || k >= MAXS) return;
    selS = k;
    editrow();
    showsel();
}

function skipclick(k, r, val) {
    if (drawing) return;
    if (k < 0 || k >= MAXS) return;
    P[edit].skip[k] = val ? 1 : 0;
}

function vel(x)  { P[edit].vel[selS] = clamp(x, 1, 127); }
function dur(x)  { P[edit].dur[selS] = clamp(x, 1, 8); }
function len(x)  { P[edit].len = clamp(x, 1, MAXS); outlet(6, "len", P[edit].len); }
function dir(x)  { P[edit].dir = clamp(x, 0, DIRS.length - 1); }
function swing(x) { swingAmt = clamp(x, 50, 75); }
function tempo(x) { if (x > 0) bpm = x; }
function gate(x) { gatePct = clamp(x, 5, 100); }
function baseoct(x) { baseOct = clamp(x, 0, 6); showsel(); }
function transp(x) { transp_ = clamp(x, -24, 24); }
function only(x) { editonly = x ? 1 : 0; }

function anything() { post("bseq: messaggio sconosciuto " + messagename + "\n"); }

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

function copy()  { clip = JSON.stringify(P[edit]); post("bseq: copiato pattern " + (edit + 1) + "\n"); }
function paste() { if (clip) { P[edit] = JSON.parse(clip); redraw(); } }
function clear() { P[edit] = newPattern(); redraw(); }

// genera root scala: linea casuale sulla scala, nel pattern in edit
function genera(root, scale) {
    var p = P[edit], sc = SCALES[clamp(scale, 0, SCALES.length - 1)];
    root = clamp(root, 0, 11);
    for (var s = 0; s < p.len; s++) {
        p.on[s] = 0; p.oct[s] = 0; p.acc[s] = 0; p.dur[s] = 1; p.vel[s] = 100;
        var r = Math.random();
        if (s == 0 || r < 0.65) {
            p.on[s] = 1;
            var deg = (s % 4 == 0 && Math.random() < 0.6) ? 0 : Math.floor(Math.random() * sc.length);
            p.note[s] = (root + sc[deg]) % 12;
            var o = Math.random();
            p.oct[s] = o < 0.15 ? -1 : (o < 0.25 ? 1 : 0);
            if (Math.random() < 0.2) p.dur[s] = 2;
            if (Math.random() < 0.25) p.acc[s] = 1;
            if (Math.random() < 0.3) p.vel[s] = 80;
        }
    }
    redraw();
}

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

function restart() { pos = first(P[play]); adv = 0; sign = 1; }

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
        switchQueued(); p = P[play]; restart(); heldUntil = -1;
    } else {
        if (pos >= p.len) adv = cycleLen(p);
        else { pos = nextPos(p); adv++; }
        if (adv >= cycleLen(p)) { switchQueued(); p = P[play]; restart(); }
    }
    if (active(p) == 0) { head(-1); return; }
    head(pos);
    fire(p, n);
}

function midi(p, s) {
    return clamp(12 * (baseOct + 1 + p.oct[s]) + p.note[s] + transp_, 0, 127);
}

function fire(p, n) {
    if (!p.on[pos]) return;
    var stepms = 15000 / bpm, sw = swingAmt / 100;
    var delay = (n % 2 == 1) ? (2 * sw - 1) * stepms : 0;
    var legato = n < heldUntil ? 1 : 0;              // la nota precedente e' ancora tenuta: slide
    var durms = Math.max(5, ((p.dur[pos] - 1) + gatePct / 100) * stepms);
    heldUntil = n + p.dur[pos];
    lastNote = midi(p, pos);
    later(delay, [lastNote, p.vel[pos], legato, p.acc[pos], durms]);
}

// pool di Task per lo swing
var POOL = 16, pool = [], pi = 0;
for (var i = 0; i < POOL; i++) { pool[i] = new Task(hit, this); }

function hit(note, velocity, legato, acc, durms) {
    outlet(0, note, velocity, legato, acc, durms);
    outlet(1, note, velocity, durms);
}

function later(ms, a) {
    if (ms < 1) { hit(a[0], a[1], a[2], a[3], a[4]); return; }
    var t = pool[pi]; pi = (pi + 1) % POOL;
    t.cancel();
    t.arguments = a;
    t.schedule(ms);
}

function run(x) {
    running = x ? 1 : 0;
    if (!running) {
        switchQueued(); head(-1); heldUntil = -1;
        outlet(0, lastNote, 0, 0, 0, 0);             // spegne la nota tenuta
    }
}

function notifydeleted() {
    blinker.cancel(); blinker.freepeer();
    for (var i = 0; i < POOL; i++) { pool[i].cancel(); pool[i].freepeer(); }
}

demoPatterns();
