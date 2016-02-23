<Notes>
This is instrument is for outputting synth data for David Griffee's "Rhapsodic Overture for Two Pianos".
</Notes>
<Cabbage>
form size(450, 900), caption("Test 1"), pluginID("plu1")

checkbox bounds(5, 12, 200, 25), text("Log Variables"), channel("log_variables"), value(0)
label bounds(150, 18, 20, 12), text("ID")
hslider bounds(175, 0, 240, 50), channel("id"), range(10, 99, 1, 1), textBox(1)

groupbox bounds(0, 50, 450, 130), text("Pitch Bend"), plant("pitch_bend") {
	; k_pitchbend
	;===========================================================================
	label bounds(0, 30, 32, 10), text("MIDI")
	label bounds(0, 40, 32, 10), text("in")
	checkbox bounds(4, 55, 20, 20), channel("read_midi_pitchbend"), value(0)
	rslider bounds(30, 25, 95, 95), channel("pitchbend"), range(-2, 2, 0, 1, 0.01), textBox(1)
	hslider bounds(145, 34, 305, 65), channel("pitchbend"), range(-2, 2, 0, 1, 0.01)
}

groupbox bounds(0, 185, 450, 130), text("Volume"), plant("volume") {
	; k_volume
	;===========================================================================
	label bounds(0, 30, 32, 10), text("MIDI")
	label bounds(0, 40, 32, 10), text("in")
	checkbox bounds(4, 55, 20, 20), channel("read_midi_volume"), value(0)
	rslider bounds(30, 25, 95, 95), channel("volume"), range(0, 1, 0.9, 1, 0.01), textBox(1)
	
	; k_volume_envelope
	;===========================================================================
	rslider bounds(145, 45, 75, 75), channel("volume_envelope_attack_time"), range(0, 10, 0.25, 1, 0.01), textBox(1)
	rslider bounds(220, 45, 75, 75), channel("volume_envelope_decay_time"), range(0, 10, 0.25, 1, 0.01), textBox(1)
	rslider bounds(295, 45, 75, 75), channel("volume_envelope_sustain_level"), range(0, 1, 0.5, 1, 0.01), textBox(1)
	rslider bounds(370, 45, 75, 75), channel("volume_envelope_release_time"), range(0, 10, 0.25, 1, 0.01), textBox(1)
	label bounds(145, 30, 75, 10), text("Attack")
	label bounds(220, 30, 75, 10), text("Decay")
	label bounds(295, 30, 75, 10), text("Sustain")
	label bounds(370, 30, 75, 10), text("Release")
}

groupbox bounds(0, 320, 450, 130), text("Modulation Wheel"), plant("modulation_wheel") {
	; k_modulation_wheel
	;===========================================================================
	label bounds(0, 30, 32, 10), text("MIDI")
	label bounds(0, 40, 32, 10), text("in")
	checkbox bounds(4, 55, 20, 20), channel("read_midi_modulation_wheel"), value(0)
	rslider bounds(30, 25, 95, 95), channel("modulation_wheel"), range(0, 1, 0, 1, 0.01), textBox(1)
	hslider bounds(145, 34, 305, 65), channel("modulation_wheel"), range(0, 1, 0, 1, 0.01)
}

csoundoutput bounds(0, 600, 450, 200), text("")
keyboard bounds(0, 800, 450, 100)

</Cabbage>
<CsoundSynthesizer>
<CsOptions>

-n -d -+rtmidi=NULL -M0 --midi-key=4 --midi-velocity-amp=5

</CsOptions>
<CsInstruments>

#include "../../../config.csd-h"
#include "../../../include/variable-logging-opcodes.csd-h"

gi_NoteId = 1

instr 1
	; k_pitchbend  (units: cents/100) [range: -2,2]
	;===========================================================================
	k_pitchbend_midi init 0
	k_read_midi_pitchbend chnget "read_midi_pitchbend"
	if (1 == k_read_midi_pitchbend) then
		READ_MIDI_PITCHBEND:
		k_midi_in_status, k_, k_data1, k_data2 midiin
		if (0 != k_midi_in_status) then
			if (224 == k_midi_in_status) then
				k_pitchbend_midi = (((128 * k_data1) + k_data2) - 8192) / 4096
			else
				kgoto READ_MIDI_PITCHBEND
			endif
		endif
		chnset k_pitchbend_midi, "pitchbend"
	endif
	k_pitchbend_channel chnget "pitchbend"
	k_pitchbend port k_pitchbend_channel, 0.05
	
	; k_out_pitch  (units: cps)
	; k_out_pitch_midi_note_number  (units: MIDI note number)
	;===========================================================================
	k_pitch_midi_note_number init p4
	k_out_pitch_midi_note_number = k_pitch_midi_note_number + k_pitchbend_midi
	k_out_pitch = cpsmidinn(k_out_pitch_midi_note_number)
	
	; k_out_modulation_wheel  [range: 0,1]
	;===========================================================================
	k_read_midi_modulation_wheel chnget "read_midi_modulation_wheel"
	if (1 == k_read_midi_modulation_wheel) then
		k_modulation_wheel_midi midictrl 1
		chnset k_modulation_wheel_midi, "modulation_wheel"
	endif
	k_out_modulation_wheel chnget "modulation_wheel"

	; k_volume  [range: 0,1]
	;===========================================================================
	k_read_midi_volume chnget "read_midi_volume"
	if (1 == k_read_midi_volume) then
		k_volume_midi midictrl 7
		chnset k_volume_midi / 127, "volume"
	endif
	k_volume_channel chnget "volume"
	k_volume port k_volume_channel, 0.05
	
	; k_volume_envelope  [range: 0,1]
	;===========================================================================
	;i_volume_envelope_attack_time chnget "volume_envelope_attack_time"
	;i_volume_envelope_decay_time chnget "volume_envelope_decay_time"
	;i_volume_envelope_sustain_level chnget "volume_envelope_sustain_level"
	i_volume_envelope_release_time chnget "volume_envelope_release_time"
	;k_volume_envelope madsr i_volume_envelope_attack_time, i_volume_envelope_decay_time, i_volume_envelope_sustain_level, i_volume_envelope_release_time
	
	; i_velocity  [range: 0,1]
	;===========================================================================
	i_velocity veloc 0, 1
	
	
	; Output
	;===========================================================================
	k_out_volume = k_volume * i_velocity
	a1 oscili p5, k_out_pitch, 1
	outs k_out_volume * a1, k_out_volume * a1
	
	; Write envelope data
	;===========================================================================
	i_log_variables init 0
	i_log_variables chnget "log_variables"
	if (1 == i_log_variables) then
		i_NoteId = gi_NoteId
		gi_NoteId = gi_NoteId + 1
		k_is_last_k_cycle udo__is_last_k_cycle i_volume_envelope_release_time
		i_ udo__write_k i_NoteId, 0, k_out_pitch_midi_note_number, k_is_last_k_cycle, 2
		i_ udo__write_k i_NoteId, 1, k_out_modulation_wheel, k_is_last_k_cycle, 2
		i_ udo__write_k i_NoteId, 7, k_out_volume, k_is_last_k_cycle, 2
	endif
endin

</CsInstruments>
<CsScore>

f1 0 1024 10 1
f0 3600

</CsScore>
</CsoundSynthesizer>
