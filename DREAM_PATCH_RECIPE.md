# Dream-Level Upgrade Recipe (Max/MSP)

Use this as a **build checklist directly inside Max** to raise your demo to the assignment target.

## A. Clock + 16-step transport

Objects:
- `live.dial` (BPM 40–240)
- `expr 60000./$f1`
- `metro`
- `counter 1 16`
- `number` (display step)
- `sprintf %02ld`

Patch:
1. `live.dial -> expr 60000./$f1 -> metro @active 1`
2. `metro -> counter 1 16`
3. `counter -> number` and `counter -> sprintf %02ld` for `01..16`

## B. Drum sequencer matrix (4x16)

Objects:
- `matrixctrl @columns 16 @rows 4 @one/matrix 0`
- `pak i i i` (x/y/value)
- `prepend setcell`
- `route 1 2 3 4`

Patch logic:
1. Current step from `counter` becomes matrix column index.
2. For each row (1..4), query cell state at current step.
3. Trigger row voices only when cell value == 1.
4. Use `setcell` messages to flash active column white then restore row colors.

## C. Drum synth voices

Kick:
- `click~` trigger -> `curve~` amp env
- `cycle~ 50` carrier
- optional pitch env with second `curve~` into `+~` freq offset

Snare:
- `noise~ -> biquad~` (low shelf/lowpass around 1k)
- `*~` with `curve~` envelope

Hi-hat:
- `noise~ -> biquad~` highpass around 4k+
- short `curve~` envelope

## D. Sampler

Objects:
- `buffer~ play 10000`
- `record~ play`
- `groove~ play @timestretch 1`
- `waveform~ play`
- `kslider`
- `expr pow(2.,$f1/12.)`

Patch:
1. Record toggle -> `record~ play`.
2. `waveform~` bound to `play` buffer for live view.
3. `kslider` note offset (e.g., center at 60) -> semitone delta -> rate expr -> `groove~` rate.

## E. MIDI CC mapping

- `ctlin 1 -> scale 0 127 40 240` (BPM)
- `ctlin 2 -> scale 0 127 0. 1.` (master)
- `ctlin 3 -> scale 0 127 0.25 4.` (sampler rate)
- `ctlin 4 -> scale 0 127 0. 1.` (reverb wet)

## F. Convolution reverb

Objects:
- `convolution~`
- `umenu` (IR preset selector)
- `message read ir_room.wav`, `read ir_hall.wav`
- `*~` dry gain + `*~` wet gain + `+~`

Patch:
1. Main bus split to dry/wet.
2. Wet path -> `convolution~`.
3. CC4 controls wet gain; dry gain = `1-wet` (use `!- 1.`).

## G. HCI presentation points

- Step indicator big number (`01..16`).
- Current-step matrix flash.
- Per-row color legend labels.
- `comment` mode indicator: `DRUM / SAMPLE / EDIT` via `prepend set`.
- Drum trigger text flash (`KICK`, `SNRE`, `HHAT`) with short `delay` reset.
- `scope~ @bgcolor 0 20 0 @fgcolor 0 200 0` on master out.

## Suggested milestone check

- Milestone 1: Clock + matrix stepping works.
- Milestone 2: 3 drum voices triggered correctly.
- Milestone 3: Sampler record/playback + kslider transpose.
- Milestone 4: Convolution + dry/wet + final UI polish.

