# Max/MSP Groovebox Feature Audit

This audit maps the assignment requirements to the current demo patch `groovebox_complete.maxpat`.

## Quick status

- **Must-have features found:** 7 / 12
- **HCI points found:** 3 / 8
- **Distinction features found:** 1 / 4

## Requirement mapping

### 1) Clock Engine
- ✅ `metro` present
- ✅ `counter` present
- ⚠️ BPM range 40–240 not confirmed in patch logic
- ❌ Step index display `01–16` not confirmed

### 2) Drum Sequencer
- ❌ `matrixctrl` 4x16 grid missing
- ❌ 4 independent rows (Kick/Snare/Hi-hat/Sample) not implemented as matrix rows
- ❌ Current-step pad flashing not present
- ⚠️ Track color labeling partly present via comments, but no matrix row color logic

### 3) Percussion Synthesis
- ✅ Kick synthesis chain present (`cycle~` + envelope)
- ✅ Snare synthesis chain present (`noise~` + filter + envelope)
- ✅ Hi-hat synthesis chain present (`noise~` + high-pass + envelope)
- ❌ On-screen KICK/SNRE/HHAT flash feedback missing

### 4) Sampler
- ✅ `buffer~` present
- ✅ `record~` present
- ✅ `groove~` present
- ⚠️ Semitone keyboard transposition via `kslider` missing
- ❌ `waveform~` visualization missing

### 5) Scope Display
- ✅ `scope~` present
- ❌ Mode text display (DRUM / SAMPLE / EDIT) missing

### 6) MIDI CC
- ✅ `ctlin 1` present (BPM control path)
- ✅ `ctlin 2` present (master gain path)
- ✅ `ctlin 3` present (sample rate path)
- ✅ `ctlin 4` present (assigned to FX amount)

### 7) Convolution Reverb
- ❌ `convolution~` missing
- ❌ ≥2 IR presets missing
- ❌ Dry/Wet mixing stage for convolution not present

## Priority build order

1. Add **matrixctrl 16x4** and route with step counter gate logic.
2. Add **kslider + expr pow(2,$f1/12)** into sampler rate path.
3. Add **waveform~** connected to `buffer~ play`.
4. Add **convolution~** with two IR loaders and dry/wet blend.
5. Add visual HCI polish: active-step flash + mode text + drum-hit flash text.

