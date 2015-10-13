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

; [x] = MIDI Note Number
; [x][0] = Table
; [x][1] = Length
; [x][2] = Channel Count
gi_Samples[][] init 128, 3

opcode udo__load_sample, i, iS
    i_midi_note_number, S_sample xin
    i_sample_table ftgen 0, 0, 0, -1, S_sample, 0, 0, 0
    i_sample_length filelen S_sample
    i_sample_channel_count filenchnls S_sample
    gi_Samples[i_midi_note_number][0] = i_sample_table
    gi_Samples[i_midi_note_number][1] = i_sample_length
    gi_Samples[i_midi_note_number][2] = i_sample_channel_count
    i_ init 0
    xout i_
endop

gi_ udo__load_sample 36, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 00.wav")
gi_ udo__load_sample 37, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 01.wav")
gi_ udo__load_sample 38, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 02.wav")
gi_ udo__load_sample 39, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 03.wav")
gi_ udo__load_sample 40, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 04.wav")
gi_ udo__load_sample 41, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 05.wav")
gi_ udo__load_sample 42, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 06.wav")
gi_ udo__load_sample 43, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 07.wav")
gi_ udo__load_sample 44, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 08.wav")
gi_ udo__load_sample 45, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 09.wav")
gi_ udo__load_sample 46, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 10.wav")
gi_ udo__load_sample 47, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 11.wav")
gi_ udo__load_sample 48, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 12.wav")
gi_ udo__load_sample 49, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 13.wav")
gi_ udo__load_sample 50, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 14.wav")
gi_ udo__load_sample 51, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 15.wav")
gi_ udo__load_sample 52, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 16.wav")
gi_ udo__load_sample 53, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 17.wav")
gi_ udo__load_sample 54, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 18.wav")
gi_ udo__load_sample 55, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 19.wav")
gi_ udo__load_sample 56, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 20.wav")
gi_ udo__load_sample 57, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 21.wav")
gi_ udo__load_sample 58, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 22.wav")
gi_ udo__load_sample 59, strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 23.wav")
gi_ udo__load_sample 60, strcat($SAMPLE_DIRECTORY, "snares+claps/01.wav")
gi_ udo__load_sample 61, strcat($SAMPLE_DIRECTORY, "snares+claps/02.wav")
gi_ udo__load_sample 62, strcat($SAMPLE_DIRECTORY, "snares+claps/03.wav")
gi_ udo__load_sample 63, strcat($SAMPLE_DIRECTORY, "snares+claps/04.wav")
gi_ udo__load_sample 64, strcat($SAMPLE_DIRECTORY, "snares+claps/05.wav")
gi_ udo__load_sample 65, strcat($SAMPLE_DIRECTORY, "snares+claps/06.wav")
gi_ udo__load_sample 66, strcat($SAMPLE_DIRECTORY, "snares+claps/07.wav")
gi_ udo__load_sample 67, strcat($SAMPLE_DIRECTORY, "snares+claps/08.wav")
gi_ udo__load_sample 68, strcat($SAMPLE_DIRECTORY, "snares+claps/09.wav")
gi_ udo__load_sample 69, strcat($SAMPLE_DIRECTORY, "snares+claps/10.wav")
gi_ udo__load_sample 70, strcat($SAMPLE_DIRECTORY, "snares+claps/11.wav")
gi_ udo__load_sample 71, strcat($SAMPLE_DIRECTORY, "snares+claps/12.wav")
gi_ udo__load_sample 72, strcat($SAMPLE_DIRECTORY, "snares+claps/13.wav")
gi_ udo__load_sample 73, strcat($SAMPLE_DIRECTORY, "snares+claps/14.wav")
gi_ udo__load_sample 74, strcat($SAMPLE_DIRECTORY, "snares+claps/15.wav")
gi_ udo__load_sample 75, strcat($SAMPLE_DIRECTORY, "snares+claps/16.wav")
gi_ udo__load_sample 76, strcat($SAMPLE_DIRECTORY, "snares+claps/17.wav")
gi_ udo__load_sample 77, strcat($SAMPLE_DIRECTORY, "snares+claps/18.wav")
gi_ udo__load_sample 78, strcat($SAMPLE_DIRECTORY, "snares+claps/19.wav")
gi_ udo__load_sample 79, strcat($SAMPLE_DIRECTORY, "snares+claps/20.wav")
gi_ udo__load_sample 80, strcat($SAMPLE_DIRECTORY, "snares+claps/21.wav")
gi_ udo__load_sample 82, strcat($SAMPLE_DIRECTORY, "snares+claps/22.wav")
gi_ udo__load_sample 83, strcat($SAMPLE_DIRECTORY, "snares+claps/23.wav")
gi_ udo__load_sample 84, strcat($SAMPLE_DIRECTORY, "snares+claps/24.wav")
gi_ udo__load_sample 85, strcat($SAMPLE_DIRECTORY, "snares+claps/25.wav")
gi_ udo__load_sample 86, strcat($SAMPLE_DIRECTORY, "snares+claps/26.wav")
gi_ udo__load_sample 87, strcat($SAMPLE_DIRECTORY, "snares+claps/27.wav")
gi_ udo__load_sample 88, strcat($SAMPLE_DIRECTORY, "snares+claps/28.wav")
gi_ udo__load_sample 89, strcat($SAMPLE_DIRECTORY, "snares+claps/29.wav")
gi_ udo__load_sample 90, strcat($SAMPLE_DIRECTORY, "snares+claps/30.wav")
gi_ udo__load_sample 91, strcat($SAMPLE_DIRECTORY, "snares+claps/31.wav")
gi_ udo__load_sample 92, strcat($SAMPLE_DIRECTORY, "snares+claps/32.wav")
gi_ udo__load_sample 93, strcat($SAMPLE_DIRECTORY, "snares+claps/33.wav")
gi_ udo__load_sample 94, strcat($SAMPLE_DIRECTORY, "snares+claps/34.wav")
gi_ udo__load_sample 95, strcat($SAMPLE_DIRECTORY, "snares+claps/35.wav")
gi_ udo__load_sample 96, strcat($SAMPLE_DIRECTORY, "snares+claps/36.wav")

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

	; Sample
	;---------------------------------------------------------------------------
	i_midi_note_number = p4
	i_sample_table init gi_Samples[i_midi_note_number][0]
	i_sample_length init gi_Samples[i_midi_note_number][1]
	i_sample_channel_count init gi_Samples[i_midi_note_number][2]

    if 0 == i_sample_length then
        goto ENDIN
    endif
    
    ; Add extra time to play entire sample.
    xtratim i_sample_length
    
    if (1 == i_sample_channel_count) then
        a_sample_left loscil 1, 1, i_sample_table, 1, 0
        a_sample_right = a_sample_left
    elseif (2 == i_sample_channel_count) then
        a_sample_left, a_sample_right loscil 1, 1, i_sample_table, 1, 0
    endif

    ; Velocity  [range: 0,1]
    ;---------------------------------------------------------------------------
    i_velocity veloc 0, 1

	; Volume  [range: 0,1]
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

	; Envelope Log Output
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

i1 0 -1 0
i"set_midi_read_defaults" 0  0

</CsScore>
</CsoundSynthesizer>
