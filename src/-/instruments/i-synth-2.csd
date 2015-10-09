<Cabbage>
form size(1100, 1000), caption("Synth-2"), pluginID("i002")

; Akai MIDIMix
groupbox bounds(0, 0, 1100, 850), plant("Akai MIDIMix 1") {
}

; M-Audio ProKeys Sono 61
groupbox bounds(0, 850, 1100, 150), plant("M-Audio ProKeys 1") {
    ; Background Image
	image bounds(0, 0, 1, 1), file("/Users/andy/-/home/code/csound-instruments/overlays/templates/m-audio-prokeys.jpg"), shape("sharp")

    ; Controls
    keyboard bounds(.08, .3, .54725, .6), value(36)
    vslider bounds(.002, .125, .1, .78), channel("m_audio_prokeys__wheel_1"), range(0, 16383, 8191, 1, 1) ; Pitch Bend
    vslider bounds(.03175, .125, .1, .78), channel("m_audio_prokeys__wheel_2"), range(0, 127, 0, 1, 1) ; Modulation
    rslider bounds(.215, 0, .25, .25), channel("m_audio_prokeys__knob"), range(0, 1, 1, 1, .01) ; Volume
    
	checkbox bounds(.020909091, .866666667, .014545455, .106666667), channel("m_audio_prokeys__wheel_1__read_midi"), shape("circle")
	checkbox bounds(.05, .866666667, .014545455, .106666667), channel("m_audio_prokeys__wheel_2__read_midi"), shape("circle")
	checkbox bounds(.223636364, .186666667, .014545455, .106666667), channel("m_audio_prokeys__knob__read_midi"), shape("circle")
}

groupbox bounds(700, 875, 375, 113), plant("Csound Output 00"), colour("white") {
    csoundoutput bounds(0, 0, 1, 1)
}

</Cabbage>
<CsoundSynthesizer>
<CsOptions>

;-n -d -+rtmidi=NULL -M0 --midi-key=4 --midi-velocity-amp=5
-n -d -+rtmidi=NULL -M0 --midi-key=4 --midi-velocity-amp=5 --messagelevel=0

</CsOptions>
<CsInstruments>

#include "../../../config.csd-h"
#include "../../../include/definitions.csd-h"
#include "../../../include/opcodes/read-midi.csd-h"
#include "../../../include/opcodes/variable-logging.csd-h"

#define SAMPLE_DIRECTORY #"../../../samples/sixbitdeep.com/"#

massign 0, $MAIN_INSTRUMENT_NUMBER

gi_NoteId = -1

/*
 *******************************************************************************
 * Main Instrument
 *******************************************************************************
 */
instr $MAIN_INSTRUMENT_NUMBER
    i_note_id = gi_NoteId
    gi_NoteId += 1

    ; Always on.
	;---------------------------------------------------------------------------
    if (0 == i_note_id) then        
        i_ udo__add_midi_control 7, "m_audio_prokeys__knob", 0, 1, 1
        goto ENDIN
    endif
    
;===============================================================================

    ; MIDI Note Number
	;---------------------------------------------------------------------------
	i_midi_note_number = p4
	
	S_sample = ""
	if 48 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 00.wav"
    elseif 60 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/01.wav"
	endif
	if 0 == strlen(S_sample) then
	    goto ENDIN
    endif
    
    i_sample_channel_count filenchnls S_sample
    if 1 == i_sample_channel_count then
        a_sample_left diskin2 S_sample, 1
        a_sample_right = a_sample_left
    elseif 2 == i_sample_channel_count then
        a_sample_left, a_sample_right diskin2 S_sample, 1
    endif

	; k_out_volume  [range: 0,1]
	;---------------------------------------------------------------------------
	k_volume init 0
	k_volume port gk_MidiControlValues[7], $CONTROLLER_INPUT_PORTAMENTO_TIME

;===============================================================================

	; Audio Output
	;---------------------------------------------------------------------------
	a_volume = k_volume
	a_out_left = a_volume * a_sample_left
	a_out_right = a_volume * a_sample_right
	outs a_out_left, a_out_right

    ; Play entire sample
    ;---------------------------------------------------------------------------
    i_sample_length filelen S_sample
    xtratim i_sample_length

	; Write envelope data
	;---------------------------------------------------------------------------
	i_log_variables init 0
	i_log_variables chnget "log_variables"
	if (1 == i_log_variables) then
	    k_is_last_k_cycle = 0
		i_ udo__write_k i_note_id, 0, k(i_midi_note_number), k_is_last_k_cycle, 2
		i_ udo__write_k i_note_id, 7, k_volume, k_is_last_k_cycle, 2
	endif
ENDIN:
endin

instr set_midi_read_defaults
    chnset 1, "m_audio_prokeys__knob__read_midi"
endin

</CsInstruments>
<CsScore>

f0 999999999

i1 0 -1
i"set_midi_read_defaults" 0  0

</CsScore>
</CsoundSynthesizer>
