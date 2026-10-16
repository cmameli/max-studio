# STUDIO - ambiente di produzione in Max/MSP

Ambiente modulare per produrre musica in **Max 9 standalone** su Mac con chip Apple (M1 Max).
Ableton Live non viene usato. Lingua di lavoro con l'utente: **italiano**.

## Come si apre
L'utente apre **solo `main.maxpat`**, che carica tutti i moduli come bpatcher.
I moduli non vanno mai aperti in parallelo da soli (duplicherebbero oggetti come `receive~`).
L'audio si accende dall'altoparlante (`ezdac~`) nel mixer, poi si preme play nel clock.

## Regola fondamentale: le patch sono generate
Tutti i file `.maxpat` sono **generati** da `tools/gen.py`. Non modificarli a mano:
verrebbero sovrascritti alla rigenerazione. Per cambiare una patch:
1. modifica la sezione corrispondente in `tools/gen.py`
2. esegui `python3 tools/gen.py` dalla cartella `studio`
3. valida il JSON: `python3 -c "import json,glob; [json.load(open(f)) for f in glob.glob('*.maxpat')]"`

I file `.js` invece si modificano direttamente: grazie a `autowatch = 1`, Max li ricarica al salvataggio.

Helper di `gen.py`: `p.obj(testo,x,y)`, `p.msg`, `p.com` (commento), `p.ui(classe,...)`,
`p.bp` (bpatcher), `p.c(sorgente,outlet,destinazione,inlet)`, `knob(p,etichetta,x,y,min,max)` (flonum con etichetta).
Convenzione di layout: l'interfaccia di ogni modulo sta in alto a sinistra (dentro l'area visibile del bpatcher),
il cablaggio interno più in basso (y >= 200), fuori dalla vista.

## Moduli
| File | Ruolo |
|---|---|
| `main.maxpat` | contiene tutti i moduli come bpatcher |
| `clock.maxpat` | `[transport]` + `[metro 16n]` + `[counter]`; invia `clock.step` (indice assoluto in sedicesimi), `clock.tempo`, `clock.running` |
| `sequencer.maxpat` + `seq.js` | sequencer euclideo evolutivo: traccia del sampler + linea di basso |
| `drumseq.maxpat` + `dseq.js` | step sequencer di batteria stile Metropolis: 7 voci × 1-64 step (`matrixctrl` da 32 step, due pagine), per cella vel/ratchet/prob/modo (singolo/multi), scelta con il nome della voce + la riga `edit` (uno step alla volta), per colonna ripetizioni 1-8 e skip, direzione (avanti/indietro/pendolo/casuale/browniano), swing; 16 pattern sui pad, il cambio avviene a fine pattern; salva in `drumpatterns.json` accanto alle patch; uscita MIDI verso la modulare |
| `drums.maxpat` | generatore dei suoni: kick, snare, hat chiuso, hat aperto, low tom, hi tom, kick 808 lungo (tune e decay, saturato con `tanh~`); l'hat aperto ha la precedenza in `dseq.js` |
| `bass.maxpat` | basso mono saw → `lores~`, cutoff modulato da `mod.bass` |
| `mod.maxpat` | ADSR + LFO (sine/tri/saw/square, sync ai BPM con divisioni) sul cutoff del basso |
| `arp.maxpat` + `arp.js` | arpeggiatore su scala/progressione di gradi; invia `lead.note` = "nota vel durata_ms" |
| `lead.maxpat` | synth lead: saw + square desintonizzati, `lores~`, ADSR su ampiezza e filtro |
| `sampler.maxpat` + `grain.js` + `grainvoice.maxpat` | sampler granulare: `grain.js` (con `Task`) genera i grani, `poly~ grainvoice 32` li suona con finestra di Hann; preset freeze/sciame/ritmico |
| `mixer.maxpat` | stereo; per canale: level, send delay, send reverb (post-fader); return e master |
| `delay.maxpat` | ping-pong `tapin~/tapout~`, sync ai BPM, feedback con `onepole~`, EQ in ingresso |
| `reverb.maxpat` | Schroeder: 4 `comb~` + 2 `allpass~` per canale, predelay, EQ in ingresso |

## Nomi dei messaggi (send/receive)
- Controllo: `clock.step`, `clock.tempo`, `clock.running`, `clock.play`, `clock.bpm`, `seq`, `drumseq`
- Note: `drums.note` ("voce vel"), `bass.note` ("nota vel slide accento"), `sampler.note` ("slot vel"), `lead.note`
- Audio (`send~`/`receive~`): `bus.drums`, `bus.bass`, `bus.sampler.L`, `bus.sampler.R`, `bus.lead`,
  `mod.bass`, `fx.delay.in`, `fx.delay.retL/retR`, `fx.rev.in`, `fx.rev.retL/retR`
- Schema per i nomi nuovi: `modulo.cosa` (es. `bass.cutoff`)

## Lezioni imparate (non ripetere questi errori)
- `throw~` / `catch~` sono oggetti di **Pure Data**, non esistono in Max. Usare un solo `send~` per nome
  e sommare i segnali prima (più segnali nello stesso inlet si sommano).
- Prima di usare un oggetto, verificare che esista in Max (non in Pd).
- Ordine di Max: le uscite partono da destra a sinistra, e un fanout da un'uscita raggiunge le destinazioni
  in ordine di posizione x (da destra a sinistra). Nei `loadbang`, le liste di inizializzazione
  (es. per `zl lookup`) vanno posizionate più a destra dei valori che le usano.
- Nelle box di testo di `expr` le virgole vanno evitate o scritte come `\,`: meglio riformulare
  (es. `exp($f1*0.000577623)` invece di `pow(2,$f1/1200)`).
- JavaScript in ES5 (oggetto `[js]`): niente `let`, `const`, arrow function.
- `[noteout]` senza porta scelta suona il synth interno di macOS (suono di piano): è il percorso MIDI verso
  la drum machine modulare dell'utente, attivabile dal toggle nel DRUM SEQ.

## Test
Claude Code non può aprire Max: l'utente prova le patch e incolla gli errori della **Max Console**.
Prima di consegnare: rigenerare, validare il JSON e simulare la logica JS con node
(mock di `outlet`, `post`, `arrayfromargs`, `Task`, `Buffer`).

## Hardware dell'utente
Drum machine modulare (Eurorack), da collegare via MIDI-CV (`noteout` dal sequencer).

## Idee per i prossimi passi
- Preset globali con `pattrstorage`
- Mappatura di un controller MIDI sui parametri
- Più destinazioni per l'LFO (pitch, volume), controlli per voce nei drums
