<Cabbage>
form size(500, 900), caption("Test 1"), pluginID("plu1")

label bounds(6, 18, 20, 12), text("ID")
hslider bounds(30, 0, 460, 50), channel("id"), range(10, 99, 1, 1), textBox(1)

checkbox bounds(6, 45, 200, 25), text("Log Controllers"), channel("log_controllers"), value(0), colour("255, 0, 0")

line bounds(6, 80, 488, 1), colour("white")

; k_volume
rslider bounds(6, 90, 100, 100), channel("volume"), range(0, 1, 0.9, 1, 0.01), textBox(1)
label bounds(35, 190, 42, 12), text("Volume")
checkbox bounds(45, 207, 20, 20), channel("read_midi_volume"), value(0), colour("0, 255, 0")

; k_volume_envelope
rslider bounds(150, 90, 75, 75), channel("volume_envelope_attack_time"), range(0, 10, 0.25, 1, 0.01), textBox(1)
rslider bounds(225, 90, 75, 75), channel("volume_envelope_decay_time"), range(0, 10, 0.25, 1, 0.01), textBox(1)
rslider bounds(300, 90, 75, 75), channel("volume_envelope_sustain_level"), range(0, 1, 0.5, 1, 0.01), textBox(1)
rslider bounds(375, 90, 75, 75), channel("volume_envelope_release_time"), range(0, 10, 0.25, 1, 0.01), textBox(1)
label bounds(150, 190, 300, 12), text("Volume Envelope")
label bounds(150, 165, 75, 12), text("Attack")
label bounds(225, 165, 75, 12), text("Decay")
label bounds(300, 165, 75, 12), text("Sustain")
label bounds(375, 165, 75, 12), text("Release")

csoundoutput bounds(0, 600, 500, 200), text("")
keyboard bounds(0, 800, 500, 100)

</Cabbage>
<CsoundSynthesizer>
<CsOptions>

-n -d -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5

</CsOptions>
<CsInstruments>

#include "../../../config.csd-h"
#include "../../../include/variable-logging-opcodes.csd-h"

gi_NoteId = 1

instr 1
	k_read_midi_volume chnget "read_midi_volume"
	if (1 == k_read_midi_volume) then
		k_volume_midi midictrl 7
		chnset k_volume_midi / 127, "volume"
	endif
	k_volume_channel chnget "volume"
	k_volume port k_volume_channel, 0.05
	
	i_volume_envelope_attack_time chnget "volume_envelope_attack_time"
	i_volume_envelope_decay_time chnget "volume_envelope_decay_time"
	i_volume_envelope_sustain_level chnget "volume_envelope_sustain_level"
	i_volume_envelope_release_time chnget "volume_envelope_release_time"
	k_volume_envelope madsr i_volume_envelope_attack_time, i_volume_envelope_decay_time, i_volume_envelope_sustain_level, i_volume_envelope_release_time
	
	k_out_volume = k_volume * k_volume_envelope
	a1 oscili p5, p4, 1
	outs k_out_volume * a1, k_out_volume * a1
	
	; Write envelope data
	i_log_controllers init 0
	i_log_controllers chnget "log_controllers"
	if (1 == i_log_controllers) then
		i_NoteId = gi_NoteId
		gi_NoteId = gi_NoteId + 1
		k_is_last_k_cycle udo__is_last_k_cycle i_volume_envelope_release_time
		i_ udo__write_k i_NoteId, 1, k_out_volume, k_is_last_k_cycle, 2
	endif
	
	#include "../../../include/midi-testing.csd-h"
endin

</CsInstruments>
<CsScore>

f1 0 1024 10 1
f0 3600

</CsScore>
</CsoundSynthesizer>
