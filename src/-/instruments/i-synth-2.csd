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
	if 36 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 00.wav"
	elseif 37 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 01.wav"
	elseif 38 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 02.wav"
	elseif 39 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 03.wav"
	elseif 40 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 04.wav"
	elseif 41 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 05.wav"
	elseif 42 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 06.wav"
	elseif 43 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 07.wav"
	elseif 44 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 08.wav"
	elseif 45 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 09.wav"
	elseif 46 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 10.wav"
	elseif 47 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 12.wav"
	elseif 48 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 13.wav"
	elseif 49 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 14.wav"
	elseif 50 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 15.wav"
	elseif 51 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 16.wav"
	elseif 52 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 17.wav"
	elseif 53 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 18.wav"
	elseif 54 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 19.wav"
	elseif 55 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 20.wav"
	elseif 56 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 21.wav"
	elseif 57 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 22.wav"
	elseif 58 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 23.wav"
	elseif 59 == i_midi_note_number then
	    S_sample strcat $SAMPLE_DIRECTORY, "bass-drums/6BD Analog 24.wav"
    elseif 60 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/01.wav"
    elseif 61 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/02.wav"
    elseif 62 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/03.wav"
    elseif 63 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/04.wav"
    elseif 64 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/05.wav"
    elseif 65 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/06.wav"
    elseif 66 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/07.wav"
    elseif 67 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/08.wav"
    elseif 68 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/09.wav"
    elseif 69 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/10.wav"
    elseif 70 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/11.wav"
    elseif 71 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/12.wav"
    elseif 72 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/13.wav"
    elseif 73 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/14.wav"
    elseif 74 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/15.wav"
    elseif 75 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/16.wav"
    elseif 76 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/17.wav"
    elseif 77 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/18.wav"
    elseif 78 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/19.wav"
    elseif 79 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/20.wav"
    elseif 80 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/21.wav"
    elseif 81 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/22.wav"
    elseif 82 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/23.wav"
    elseif 83 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/24.wav"
    elseif 84 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/25.wav"
    elseif 85 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/26.wav"
    elseif 86 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/27.wav"
    elseif 87 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/28.wav"
    elseif 88 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/29.wav"
    elseif 89 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/30.wav"
    elseif 90 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/31.wav"
    elseif 91 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/32.wav"
    elseif 92 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/33.wav"
    elseif 93 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/34.wav"
    elseif 94 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/35.wav"
    elseif 95 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/36.wav"
    elseif 96 == i_midi_note_number then
        S_sample strcat $SAMPLE_DIRECTORY, "snares+claps/37.wav"
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
    
    ; Velocity  [range: 0,1]
    ;---------------------------------------------------------------------------
    i_velocity veloc 0, 1

	; k_out_volume  [range: 0,1]
	;---------------------------------------------------------------------------
	k_volume init 0
	k_volume port gk_MidiControlValues[7], $CONTROLLER_INPUT_PORTAMENTO_TIME

;===============================================================================

	; Audio Output
	;---------------------------------------------------------------------------
	a_volume = i_velocity * k_volume
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
