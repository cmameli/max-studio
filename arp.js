// arp.js - arpeggiatore melodico dello studio (JavaScript ES5)
// Ingresso: "step n" dal clock, "tempo bpm", messaggi di configurazione
// Uscite: 0 -> "nota velocity durata_ms" verso il synth | 1 -> display
autowatch = 1;
inlets = 1;
outlets = 2;

var NAMES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];
// stesso ordine del menu "scala"
var SCALES = [
    [0, 2, 3, 5, 7, 8, 10],   // minore naturale
    [0, 2, 4, 5, 7, 9, 11],   // maggiore
    [0, 2, 3, 5, 7, 9, 10],   // dorica
    [0, 1, 3, 5, 7, 8, 10],   // frigia
    [0, 2, 4, 6, 7, 9, 11],   // lidia
    [0, 2, 3, 5, 7, 8, 11],   // minore armonica
    [0, 3, 5, 7, 10],         // pentatonica minore
    [0, 2, 4, 7, 9]           // pentatonica maggiore
];
var RATES = [1, 2, 3, 4];     // in sedicesimi: 1/16, 1/8, 1/8 puntato, 1/4

var isOn = 1, rootNote = 9, octave = 4, scaleIdx = 0, chordType = 1, mode = 2;
var rateSteps = 1, octRange = 2, gateLen = 0.5, density = 0.85, barsPerChord = 1;
var progArr = [1, 6, 3, 7], bpm = 120;
var pos = 0, lastChord = -1;

function clamp(x, a, b) { return Math.max(a, Math.min(b, x)); }

function deg2note(d) {
    var sc = SCALES[scaleIdx], L = sc.length;
    var o = Math.floor(d / L), i = ((d % L) + L) % L;
    return 12 * (octave + 1) + rootNote + 12 * o + sc[i];
}

function chordOffsets() {
    switch (chordType) {
        case 0: return [0, 2, 4];        // triade
        case 1: return [0, 2, 4, 6];     // settima
        case 2: return [0, 1, 4];        // sus2
        case 3: return [0, 3, 4];        // sus4
        case 4: return [0, 4];           // quinta
        default:                         // tutta la scala
            var a = [];
            for (var k = 0; k < SCALES[scaleIdx].length; k++) a.push(k);
            return a;
    }
}

function chordNotes(degree) {
    var offs = chordOffsets(), notes = [], seen = {};
    // condotta delle voci: tiene gli accordi vicini all'ottava di partenza
    var base = 12 * (octave + 1) + rootNote;
    var shift = (deg2note(degree - 1) - base > 6) ? -12 : 0;
    for (var o = 0; o < octRange; o++) {
        for (var k = 0; k < offs.length; k++) {
            var n = deg2note(degree - 1 + offs[k]) + 12 * o + shift;
            if (n >= 0 && n <= 127 && !seen[n]) { seen[n] = 1; notes.push(n); }
        }
    }
    notes.sort(function (a, b) { return a - b; });
    return notes;
}

function nextIndex(L) {
    if (L <= 1) { pos++; return 0; }
    var i;
    switch (mode) {
        case 0: i = pos % L; pos++; break;                       // su
        case 1: i = L - 1 - (pos % L); pos++; break;             // giu'
        case 2: var per = 2 * L - 2, p = pos % per;              // su e giu'
                i = p < L ? p : per - p; pos++; break;
        case 3: i = Math.floor(Math.random() * L); break;        // casuale
        default:                                                 // passeggiata
            pos = clamp(pos, 0, L - 1) + (Math.random() < 0.5 ? -1 : 1);
            if (pos < 0) pos = 1;
            if (pos > L - 1) pos = L - 2;
            i = pos;
    }
    return i;
}

function showChord(ci, notes) {
    var a = ["set", "grado", progArr[ci], ":"];
    for (var k = 0; k < notes.length && k < 10; k++)
        a.push(NAMES[notes[k] % 12] + (Math.floor(notes[k] / 12) - 1));
    outlet(1, a);
}

function step(n) {
    if (n == 0) { pos = 0; lastChord = -1; }
    if (!isOn || n % rateSteps != 0) return;
    var bar = Math.floor(n / 16);
    var ci = Math.floor(bar / barsPerChord) % progArr.length;
    var notes = chordNotes(progArr[ci]);
    if (ci != lastChord) { lastChord = ci; showChord(ci, notes); }
    if (!notes.length) return;
    var idx = nextIndex(notes.length);
    if (Math.random() > density) return;
    var vel = (n % 4 == 0) ? 112 : 88;                // accento sui quarti
    var dur = 60000 / bpm / 4 * rateSteps * gateLen;
    outlet(0, notes[idx], vel, dur);
}

// ---------------- configurazione ----------------
function changed() { lastChord = -1; }
function on(v)     { isOn = v ? 1 : 0; }
function root(v)   { rootNote = clamp(v, 0, 11); changed(); }
function oct(v)    { octave = clamp(v, 1, 7); changed(); }
function scale(v)  { scaleIdx = clamp(v, 0, SCALES.length - 1); changed(); }
function chord(v)  { chordType = clamp(v, 0, 5); changed(); }
function arpmode(v){ mode = clamp(v, 0, 4); pos = 0; }
function rate(v)   { rateSteps = RATES[clamp(v, 0, RATES.length - 1)]; }
function range(v)  { octRange = clamp(v, 1, 4); changed(); }
function gate(v)   { gateLen = clamp(v, 0.05, 1.5); }
function dens(v)   { density = clamp(v, 0, 1); }
function bars(v)   { barsPerChord = clamp(v, 1, 8); changed(); }
function tempo(v)  { if (v > 0) bpm = v; }
// prog 1 6 3 7  -> gradi della scala, un accordo ogni "bars" battute
function prog() {
    var a = arrayfromargs(arguments);
    if (a.length) progArr = a;
    changed();
}
