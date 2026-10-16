// seq.js - sequencer euclideo evolutivo dello studio (JavaScript ES5)
// Ingresso: "step n" dal clock + messaggi di editing
autowatch = 1;
inlets = 1;
outlets = 6;
// 0: drums "voce vel" | 1: bass "nota vel slide accento" | 2: sampler "slot vel"
// 3: step corrente (0-15) | 4: MIDI drums "nota vel" | 5: display "traccia set ..."

var STEPS = 16;
var TR = 5;                        // tracce 0-3 batteria, 4 sampler
var drumNotes = [36, 38, 42, 46];  // note MIDI per la modulare
var pat = [];                      // pat[t][s] = velocity (0 = spento)
var len = [];                      // lunghezza del ciclo per traccia
var prb = [];                      // probabilita' 0..1
var E = [];                        // stato euclideo ed evoluzione per traccia
var bassSteps = [], bassLen = 16, bassOct = 0;

function clamp(x, a, b) { return Math.max(a, Math.min(b, x)); }

function init() {
    for (var t = 0; t < TR; t++) {
        pat[t] = []; len[t] = 16; prb[t] = 1;
        for (var s = 0; s < STEPS; s++) pat[t][s] = 0;
        E[t] = { h: 0, st: 16, r: 0, baseH: 0, baseR: 0, evo: 0, every: 4, rstep: 1, walk: 0 };
    }
    for (s = 0; s < STEPS; s++) bassSteps[s] = { n: 0, v: 100, sl: 0, ac: 0 };
}
init();

// ---------------- euclideo ----------------
function build(t) {
    var e = E[t];
    len[t] = e.st;
    for (var s = 0; s < STEPS; s++) {
        var on = s < e.st && e.h > 0 && (((s + e.r) * e.h) % e.st) < e.h;
        pat[t][s] = on ? 100 : 0;
    }
    show(t);
}

// euclid t hits steps rot
function euclid(t, h, st, r) {
    if (t < 0 || t >= TR) return;
    var e = E[t];
    e.st = clamp(st, 1, STEPS);
    e.baseH = e.h = clamp(h, 0, e.st);
    e.baseR = e.r = ((r % e.st) + e.st) % e.st;
    build(t);
}

// evo t on ogni_quante_battute spostamento_rotazione ampiezza_walk
function evo(t, on, every, rstep, walk) {
    if (t < 0 || t >= TR) return;
    var e = E[t];
    e.evo = on ? 1 : 0;
    e.every = Math.max(1, every);
    e.rstep = rstep;
    e.walk = Math.max(0, walk);
    if (!e.evo) { e.h = e.baseH; e.r = e.baseR; build(t); }
}

function evolve(bar) {
    for (var t = 0; t < TR; t++) {
        var e = E[t];
        if (!e.evo || bar % e.every != 0) continue;
        e.r = (((e.r + e.rstep) % e.st) + e.st) % e.st;
        if (e.walk > 0) {
            var d = Math.floor(Math.random() * 3) - 1; // -1, 0, +1
            e.h = clamp(e.h + d, Math.max(0, e.baseH - e.walk), Math.min(e.st, e.baseH + e.walk));
        }
        build(t);
    }
}

function evoreset() {
    for (var t = 0; t < TR; t++) { E[t].h = E[t].baseH; E[t].r = E[t].baseR; build(t); }
}

function show(t) {
    var a = [t, "set", E[t].h + "/" + E[t].st, "r" + E[t].r, ":"];
    for (var s = 0; s < len[t]; s++) a.push(pat[t][s] > 0 ? "x" : "-");
    outlet(5, a);
}

function prob(t, p) { prb[t] = clamp(p, 0, 1); }
function note(t, n) { drumNotes[t] = n; }

// ---------------- clock ----------------
function step(n) {
    if (n == 0) evoreset();                         // ogni play riparte dai valori base
    else if (n % STEPS == 0) evolve(n / STEPS);     // inizio di ogni battuta

    var fire = [];
    for (var t = 0; t < TR; t++) {
        var v = pat[t][n % len[t]];
        fire[t] = (v > 0 && Math.random() < prb[t]) ? v : 0;
    }
    if (fire[3] > 0) fire[2] = 0;                   // l'hat aperto ha la precedenza su quello chiuso

    for (t = 0; t < 4; t++) {
        if (fire[t] > 0) { outlet(4, drumNotes[t], fire[t]); outlet(0, t, fire[t]); }
    }
    if (fire[4] > 0) outlet(2, 0, fire[4]);

    var b = bassSteps[n % bassLen];
    if (b.n > 0) outlet(1, b.n + bassOct * 12, b.v, b.sl, b.ac);

    outlet(3, n % STEPS);
}

// ---------------- basso ----------------
function bass(s, n, v, sl, ac) {
    var a = arrayfromargs(arguments);
    bassSteps[s] = { n: n, v: a.length > 2 ? v : 100, sl: a.length > 3 ? sl : 0, ac: a.length > 4 ? ac : 0 };
}
function brest(s) { bassSteps[s].n = 0; }
function bline() {
    var a = arrayfromargs(arguments);
    for (var s = 0; s < STEPS; s++) bassSteps[s] = { n: s < a.length ? a[s] : 0, v: 100, sl: 0, ac: 0 };
}
function bslide(s, on) { bassSteps[s].sl = on ? 1 : 0; }
function boct(o)  { bassOct = clamp(o, -3, 3); }
function blen(l)  { bassLen = clamp(l, 1, STEPS); }
function bclear() { for (var s = 0; s < STEPS; s++) bassSteps[s].n = 0; }

function demo() {
    bline(36, 0, 36, 48, 0, 36, 0, 39, 36, 0, 43, 0, 36, 48, 0, 41);
    bslide(3, 1); bslide(11, 1);
    post("seq: linea di basso demo caricata\n");
}
