// lead.js - gestione delle voci del poly synth LEAD (JavaScript ES5)
// Riceve le note (dall'arpeggiatore o da una tastiera MIDI), sceglie le voci di poly~,
// gestisce unison (1/2/4 voci per nota con detune e spread stereo) e i modi poly / mono / legato.
autowatch = 1;
inlets = 1;
outlets = 2;
// 0: verso poly~: "target v" seguito da "on nota vel detune_cent pan glide_ms legato" oppure "off"
// 1: info per l'interfaccia

var NV = 8;
var V = [];                        // V[v] = { note (-1 = libera), age }
for (var i = 0; i < NV; i++) V[i] = { note: -1, age: 0 };
var tick = 0;
var uni = 1, det = 10, spread = 0.5, mode = 0, porta = 80;   // mode: 0 poly, 1 mono, 2 legato
var held = [], lastVel = 100;      // note tenute nei modi mono/legato, in ordine di arrivo
var DET = { 1: [0], 2: [-0.5, 0.5], 4: [-1, -0.33, 0.33, 1] };
var PAN = { 1: [0], 2: [-0.5, 0.5], 4: [-0.5, -0.17, 0.17, 0.5] };

function clamp(x, a, b) { return Math.max(a, Math.min(b, x)); }

function on(v, n, vel, cents, pan, glide, legato) {
    outlet(0, "target", v + 1);
    outlet(0, "on", n, vel, cents, clamp(pan, 0, 1), glide, legato);
}

function off(v) {
    outlet(0, "target", v + 1);
    outlet(0, "off");
    V[v].note = -1; V[v].age = ++tick;         // appena rilasciata: viene rubata per ultima
}

// voce libera piu' vecchia; se non ce ne sono, ruba la nota piu' vecchia
function alloc() {
    var best = -1, v;
    for (v = 0; v < NV; v++) if (V[v].note < 0 && (best < 0 || V[v].age < V[best].age)) best = v;
    if (best < 0) for (v = 0; v < NV; v++) if (best < 0 || V[v].age < V[best].age) best = v;
    return best;
}

function noteOn(n, vel, dur) {
    var k = uni, offs = DET[k], pans = PAN[k], i, v;
    lastVel = vel;
    if (mode == 0) {
        for (v = 0; v < NV; v++) if (V[v].note == n) off(v);     // stessa nota ancora su: la riparto
        for (i = 0; i < k; i++) {
            v = alloc();
            V[v].note = n; V[v].age = ++tick;
            on(v, n, vel, offs[i] * det, 0.5 + pans[i] * spread, 0, 0);
        }
    } else {
        var legato = (mode == 2 && held.length > 0) ? 1 : 0;
        var glide = (mode == 1 || held.length > 0) ? porta : 0;  // mono: porta sempre; legato: solo tra note legate
        for (i = 0; i < k; i++) {
            V[i].note = n; V[i].age = ++tick;
            on(i, n, vel, offs[i] * det, 0.5 + pans[i] * spread, glide, legato);
        }
        if (held.indexOf(n) < 0) held.push(n);
    }
    if (dur > 0) later(dur, n);
    info();
}

function noteOff(n) {
    var i, v, k = uni;
    if (mode == 0) {
        for (v = 0; v < NV; v++) if (V[v].note == n) off(v);
    } else {
        i = held.indexOf(n);
        if (i >= 0) held.splice(i, 1);
        if (V[0].note != n) { info(); return; }                   // non e' la nota che suona
        if (held.length) {                                        // torna all'ultima nota ancora premuta
            var m = held[held.length - 1], offs = DET[k], pans = PAN[k];
            for (i = 0; i < k; i++) { V[i].note = m; on(i, m, lastVel, offs[i] * det, 0.5 + pans[i] * spread, porta, mode == 2 ? 1 : 0); }
        } else {
            for (i = 0; i < k; i++) off(i);
        }
    }
    info();
}

// dall'arpeggiatore: nota vel durata_ms
function note(n, vel, dur) { noteOn(n, vel, dur > 0 ? dur : 0); }
// dalla tastiera MIDI: nota vel (vel 0 = note off)
function midi(n, vel) { if (vel > 0) noteOn(n, vel, 0); else noteOff(n); }

function panic() {
    for (var v = 0; v < NV; v++) off(v);
    held = [];
    for (var i = 0; i < POOL; i++) pool[i].cancel();
    info();
}

function unison(i) { uni = [1, 2, 4][clamp(i, 0, 2)]; panic(); }
function detune(c) { det = clamp(c, 0, 100); }
function setspread(s) { spread = clamp(s, 0, 1); }
function setmode(m) { mode = clamp(m, 0, 2); panic(); }
function setporta(ms) { porta = Math.max(0, ms); }

// "spread", "mode" e "porta" sono anche nomi di variabili: i messaggi passano da qui
function anything() {
    var a = arrayfromargs(arguments);
    if (messagename == "spread") setspread(a[0]);
    else if (messagename == "mode") setmode(a[0]);
    else if (messagename == "porta") setporta(a[0]);
    else post("lead: messaggio sconosciuto " + messagename + "\n");
}

function info() {
    var n = 0;
    for (var v = 0; v < NV; v++) if (V[v].note >= 0) n++;
    outlet(1, "voci " + n + "/" + NV + "  " + ["poly", "mono", "legato"][mode] + "  unison " + uni);
}

// pool di Task per le durate delle note dell'arpeggiatore
var POOL = 32, pool = [], pi = 0;
for (i = 0; i < POOL; i++) pool[i] = new Task(function (n) { noteOff(n); }, this);

function later(ms, n) {
    var t = pool[pi]; pi = (pi + 1) % POOL;
    t.cancel();
    t.arguments = [n];
    t.schedule(ms);
}

function notifydeleted() {
    for (var i = 0; i < POOL; i++) { pool[i].cancel(); pool[i].freepeer(); }
}
