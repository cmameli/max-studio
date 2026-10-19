// seq.js - sequencer euclideo evolutivo dello studio (JavaScript ES5)
// Ingresso: "step n" dal clock + messaggi di editing
// Batteria (dseq.js) e basso (bseq.js) hanno i loro moduli: qui resta il sampler.
autowatch = 1;
inlets = 1;
outlets = 3;
// 0: sampler "slot vel" | 1: step corrente (0-15) | 2: display "traccia set ..."

var STEPS = 16;
var TR = 1;                        // traccia 0: sampler
var pat = [];                      // pat[t][s] = velocity (0 = spento)
var len = [];                      // lunghezza del ciclo per traccia
var prb = [];                      // probabilita' 0..1
var E = [];                        // stato euclideo ed evoluzione per traccia

function clamp(x, a, b) { return Math.max(a, Math.min(b, x)); }

function init() {
    for (var t = 0; t < TR; t++) {
        pat[t] = []; len[t] = 16; prb[t] = 1;
        for (var s = 0; s < STEPS; s++) pat[t][s] = 0;
        E[t] = { h: 0, st: 16, r: 0, baseH: 0, baseR: 0, evo: 0, every: 4, rstep: 1, walk: 0 };
    }
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
    outlet(2, a);
}

function prob(t, p) { prb[t] = clamp(p, 0, 1); }

// ---------------- clock ----------------
function step(n) {
    if (n == 0) evoreset();                         // ogni play riparte dai valori base
    else if (n % STEPS == 0) evolve(n / STEPS);     // inizio di ogni battuta

    var fire = [];
    for (var t = 0; t < TR; t++) {
        var v = pat[t][n % len[t]];
        fire[t] = (v > 0 && Math.random() < prb[t]) ? v : 0;
    }
    if (fire[0] > 0) outlet(0, 0, fire[0]);

    outlet(1, n % STEPS);
}
