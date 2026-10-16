// grain.js - generatore di grani per il sampler granulare (JavaScript ES5)
// Uscita 0 -> poly~: "note inizio_ms fine_ms durata_ms pan ampiezza"
// Uscita 1 -> display informazioni
autowatch = 1;
inlets = 1;
outlets = 2;

var BUF = "samp1";
var lenMs = 0;

var position = 0.3;   // centro della zona di lettura (0..1 del file)
var spread = 0.2;     // ampiezza della zona da cui pescare i grani (0..1)
var sizeMs = 80;      // durata del grano
var density = 25;     // grani al secondo
var pitchSt = 0;      // trasposizione in semitoni
var pitchRnd = 0;     // variazione casuale di pitch (semitoni)
var panSpread = 0.6;  // apertura stereo (0..1)
var jitter = 0.3;     // irregolarita' del tempo tra i grani (0..1)
var burstMs = 400;    // durata della nuvola quando suona il sequencer
var level = 0.5;

var running = 1, seqMode = 0;
var burstEnd = 0, burstAmp = 1;

var task = new Task(tick, this);
task.interval = 40;

function clamp(x, a, b) { return Math.max(a, Math.min(b, x)); }
function rnd() { return Math.random() * 2 - 1; }   // -1..1

function loaded() {
    try {
        var b = new Buffer(BUF);
        lenMs = b.framecount() > 0 ? b.length() : 0;
    } catch (e) { lenMs = 0; }
    outlet(1, "set", lenMs > 0 ? ("campione: " + Math.round(lenMs) + " ms") : "nessun campione caricato");
}

function schedule() {
    var base = 1000 / clamp(density, 0.5, 400);
    task.interval = Math.max(2, base * (1 + rnd() * jitter));
}

function tick() {
    schedule();
    if (lenMs <= 0) { loaded(); if (lenMs <= 0) return; }
    var amp = level;
    if (seqMode) {
        if (new Date().getTime() > burstEnd) return;
        amp *= burstAmp;
    }
    var rate = Math.pow(2, (pitchSt + rnd() * pitchRnd) / 12);
    var span = sizeMs * rate;                       // quanta parte del file legge il grano
    var center = position + rnd() * spread * 0.5;
    var start = clamp(center, 0, 1) * lenMs;
    if (start + span > lenMs) start = Math.max(0, lenMs - span);
    var pan = clamp(0.5 + rnd() * panSpread * 0.5, 0, 1);
    outlet(0, "note", start, start + span, sizeMs, pan, amp);
}

function start() { running = 1; schedule(); task.repeat(); }
function stop()  { running = 0; task.cancel(); }
function run(v)  { if (v) start(); else stop(); }

// nota dal sequencer (traccia sampler): apre una nuvola di grani
function note(slot, vel) {
    burstEnd = new Date().getTime() + burstMs;
    burstAmp = clamp(vel / 127, 0, 1);
}

function seq(v)    { seqMode = v ? 1 : 0; }
function pos(v)    { position = clamp(v, 0, 1); }
function spr(v)    { spread = clamp(v, 0, 1); }
function size(v)   { sizeMs = clamp(v, 2, 2000); }
function dens(v)   { density = clamp(v, 0.5, 400); }
function pitch(v)  { pitchSt = clamp(v, -36, 36); }
function prnd(v)   { pitchRnd = clamp(v, 0, 24); }
function pan(v)    { panSpread = clamp(v, 0, 1); }
function jit(v)    { jitter = clamp(v, 0, 0.95); }
function burst(v)  { burstMs = clamp(v, 20, 5000); }
function lvl(v)    { level = clamp(v, 0, 1); }

function notifydeleted() { task.cancel(); task.freepeer(); }
