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

opcode udo__load_sample, iii, S
    S_sample xin
    i_sample_table ftgen 0, 0, 0, -1, S_sample, 0, 0, 0
    i_sample_length filelen S_sample
    i_sample_channel_count filenchnls S_sample
    xout i_sample_table, i_sample_length, i_sample_channel_count
endop

gi_bass_drum_00_table, gi_bass_drum_00_length, gi_bass_drum_00_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 00.wav")
gi_bass_drum_01_table, gi_bass_drum_01_length, gi_bass_drum_01_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 01.wav")
gi_bass_drum_02_table, gi_bass_drum_02_length, gi_bass_drum_02_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 02.wav")
gi_bass_drum_03_table, gi_bass_drum_03_length, gi_bass_drum_03_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 03.wav")
gi_bass_drum_04_table, gi_bass_drum_04_length, gi_bass_drum_04_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 04.wav")
gi_bass_drum_05_table, gi_bass_drum_05_length, gi_bass_drum_05_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 05.wav")
gi_bass_drum_06_table, gi_bass_drum_06_length, gi_bass_drum_06_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 06.wav")
gi_bass_drum_07_table, gi_bass_drum_07_length, gi_bass_drum_07_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 07.wav")
gi_bass_drum_08_table, gi_bass_drum_08_length, gi_bass_drum_08_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 08.wav")
gi_bass_drum_09_table, gi_bass_drum_09_length, gi_bass_drum_09_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 09.wav")
gi_bass_drum_10_table, gi_bass_drum_10_length, gi_bass_drum_10_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 10.wav")
gi_bass_drum_11_table, gi_bass_drum_11_length, gi_bass_drum_11_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 11.wav")
gi_bass_drum_12_table, gi_bass_drum_12_length, gi_bass_drum_12_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 12.wav")
gi_bass_drum_13_table, gi_bass_drum_13_length, gi_bass_drum_13_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 13.wav")
gi_bass_drum_14_table, gi_bass_drum_14_length, gi_bass_drum_14_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 14.wav")
gi_bass_drum_15_table, gi_bass_drum_15_length, gi_bass_drum_15_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 15.wav")
gi_bass_drum_16_table, gi_bass_drum_16_length, gi_bass_drum_16_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 16.wav")
gi_bass_drum_17_table, gi_bass_drum_17_length, gi_bass_drum_17_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 17.wav")
gi_bass_drum_18_table, gi_bass_drum_18_length, gi_bass_drum_18_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 18.wav")
gi_bass_drum_19_table, gi_bass_drum_19_length, gi_bass_drum_19_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 19.wav")
gi_bass_drum_20_table, gi_bass_drum_20_length, gi_bass_drum_20_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 20.wav")
gi_bass_drum_21_table, gi_bass_drum_21_length, gi_bass_drum_21_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 21.wav")
gi_bass_drum_22_table, gi_bass_drum_22_length, gi_bass_drum_22_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 22.wav")
gi_bass_drum_23_table, gi_bass_drum_23_length, gi_bass_drum_23_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 23.wav")
gi_bass_drum_24_table, gi_bass_drum_24_length, gi_bass_drum_24_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "bass-drums/6BD Analog 24.wav")

gi_snare_drum_00_table, gi_snare_drum_00_length, gi_snare_drum_00_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/01.wav")
gi_snare_drum_01_table, gi_snare_drum_01_length, gi_snare_drum_01_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/02.wav")
gi_snare_drum_02_table, gi_snare_drum_02_length, gi_snare_drum_02_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/03.wav")
gi_snare_drum_03_table, gi_snare_drum_03_length, gi_snare_drum_03_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/04.wav")
gi_snare_drum_04_table, gi_snare_drum_04_length, gi_snare_drum_04_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/05.wav")
gi_snare_drum_05_table, gi_snare_drum_05_length, gi_snare_drum_05_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/06.wav")
gi_snare_drum_06_table, gi_snare_drum_06_length, gi_snare_drum_06_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/07.wav")
gi_snare_drum_07_table, gi_snare_drum_07_length, gi_snare_drum_07_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/08.wav")
gi_snare_drum_08_table, gi_snare_drum_08_length, gi_snare_drum_08_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/09.wav")
gi_snare_drum_09_table, gi_snare_drum_09_length, gi_snare_drum_09_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/10.wav")
gi_snare_drum_10_table, gi_snare_drum_10_length, gi_snare_drum_10_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/11.wav")
gi_snare_drum_11_table, gi_snare_drum_11_length, gi_snare_drum_11_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/12.wav")
gi_snare_drum_12_table, gi_snare_drum_12_length, gi_snare_drum_12_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/13.wav")
gi_snare_drum_13_table, gi_snare_drum_13_length, gi_snare_drum_13_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/14.wav")
gi_snare_drum_14_table, gi_snare_drum_14_length, gi_snare_drum_14_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/15.wav")
gi_snare_drum_15_table, gi_snare_drum_15_length, gi_snare_drum_15_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/16.wav")
gi_snare_drum_16_table, gi_snare_drum_16_length, gi_snare_drum_16_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/17.wav")
gi_snare_drum_17_table, gi_snare_drum_17_length, gi_snare_drum_17_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/18.wav")
gi_snare_drum_18_table, gi_snare_drum_18_length, gi_snare_drum_18_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/19.wav")
gi_snare_drum_19_table, gi_snare_drum_19_length, gi_snare_drum_19_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/20.wav")
gi_snare_drum_20_table, gi_snare_drum_20_length, gi_snare_drum_20_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/21.wav")
gi_snare_drum_21_table, gi_snare_drum_21_length, gi_snare_drum_21_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/22.wav")
gi_snare_drum_22_table, gi_snare_drum_22_length, gi_snare_drum_22_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/23.wav")
gi_snare_drum_23_table, gi_snare_drum_23_length, gi_snare_drum_23_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/24.wav")
gi_snare_drum_24_table, gi_snare_drum_24_length, gi_snare_drum_24_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/25.wav")
gi_snare_drum_25_table, gi_snare_drum_25_length, gi_snare_drum_25_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/26.wav")
gi_snare_drum_26_table, gi_snare_drum_26_length, gi_snare_drum_26_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/27.wav")
gi_snare_drum_27_table, gi_snare_drum_27_length, gi_snare_drum_27_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/28.wav")
gi_snare_drum_28_table, gi_snare_drum_28_length, gi_snare_drum_28_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/29.wav")
gi_snare_drum_29_table, gi_snare_drum_29_length, gi_snare_drum_29_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/30.wav")
gi_snare_drum_30_table, gi_snare_drum_30_length, gi_snare_drum_30_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/31.wav")
gi_snare_drum_31_table, gi_snare_drum_31_length, gi_snare_drum_31_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/32.wav")
gi_snare_drum_32_table, gi_snare_drum_32_length, gi_snare_drum_32_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/33.wav")
gi_snare_drum_33_table, gi_snare_drum_33_length, gi_snare_drum_33_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/34.wav")
gi_snare_drum_34_table, gi_snare_drum_34_length, gi_snare_drum_34_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/35.wav")
gi_snare_drum_35_table, gi_snare_drum_35_length, gi_snare_drum_35_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/36.wav")
gi_snare_drum_36_table, gi_snare_drum_36_length, gi_snare_drum_36_channel_count udo__load_sample strcat($SAMPLE_DIRECTORY, "snares+claps/37.wav")

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
	
	; Sample
	;---------------------------------------------------------------------------
	i_sample_table init 0
	i_sample_length init 0
	i_sample_channel_count init 0
	
	if 36 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_00_table
    	i_sample_length = gi_bass_drum_00_length
    	i_sample_channel_count = gi_bass_drum_00_channel_count
	elseif 37 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_01_table
    	i_sample_length = gi_bass_drum_01_length
    	i_sample_channel_count = gi_bass_drum_01_channel_count
	elseif 38 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_02_table
    	i_sample_length = gi_bass_drum_02_length
    	i_sample_channel_count = gi_bass_drum_02_channel_count
	elseif 39 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_03_table
    	i_sample_length = gi_bass_drum_03_length
    	i_sample_channel_count = gi_bass_drum_03_channel_count
	elseif 40 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_04_table
    	i_sample_length = gi_bass_drum_04_length
    	i_sample_channel_count = gi_bass_drum_04_channel_count
	elseif 41 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_05_table
    	i_sample_length = gi_bass_drum_05_length
    	i_sample_channel_count = gi_bass_drum_05_channel_count
	elseif 42 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_06_table
    	i_sample_length = gi_bass_drum_06_length
    	i_sample_channel_count = gi_bass_drum_06_channel_count
	elseif 43 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_07_table
    	i_sample_length = gi_bass_drum_07_length
    	i_sample_channel_count = gi_bass_drum_07_channel_count
	elseif 44 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_08_table
    	i_sample_length = gi_bass_drum_08_length
    	i_sample_channel_count = gi_bass_drum_08_channel_count
	elseif 45 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_09_table
    	i_sample_length = gi_bass_drum_09_length
    	i_sample_channel_count = gi_bass_drum_09_channel_count
	elseif 46 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_10_table
    	i_sample_length = gi_bass_drum_10_length
    	i_sample_channel_count = gi_bass_drum_10_channel_count
	elseif 47 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_11_table
    	i_sample_length = gi_bass_drum_11_length
    	i_sample_channel_count = gi_bass_drum_11_channel_count
	elseif 48 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_12_table
    	i_sample_length = gi_bass_drum_12_length
    	i_sample_channel_count = gi_bass_drum_12_channel_count
	elseif 49 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_13_table
    	i_sample_length = gi_bass_drum_13_length
    	i_sample_channel_count = gi_bass_drum_13_channel_count
	elseif 50 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_14_table
    	i_sample_length = gi_bass_drum_14_length
    	i_sample_channel_count = gi_bass_drum_14_channel_count
	elseif 51 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_15_table
    	i_sample_length = gi_bass_drum_15_length
    	i_sample_channel_count = gi_bass_drum_15_channel_count
	elseif 52 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_16_table
    	i_sample_length = gi_bass_drum_16_length
    	i_sample_channel_count = gi_bass_drum_16_channel_count
	elseif 53 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_17_table
    	i_sample_length = gi_bass_drum_17_length
    	i_sample_channel_count = gi_bass_drum_17_channel_count
	elseif 54 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_18_table
    	i_sample_length = gi_bass_drum_18_length
    	i_sample_channel_count = gi_bass_drum_18_channel_count
	elseif 55 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_19_table
    	i_sample_length = gi_bass_drum_19_length
    	i_sample_channel_count = gi_bass_drum_19_channel_count
	elseif 56 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_20_table
    	i_sample_length = gi_bass_drum_20_length
    	i_sample_channel_count = gi_bass_drum_20_channel_count
	elseif 57 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_21_table
    	i_sample_length = gi_bass_drum_21_length
    	i_sample_channel_count = gi_bass_drum_21_channel_count
	elseif 58 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_22_table
    	i_sample_length = gi_bass_drum_22_length
    	i_sample_channel_count = gi_bass_drum_22_channel_count
	elseif 59 == i_midi_note_number then
    	i_sample_table = gi_bass_drum_23_table
    	i_sample_length = gi_bass_drum_23_length
    	i_sample_channel_count = gi_bass_drum_23_channel_count
    elseif 60 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_00_table
    	i_sample_length = gi_snare_drum_00_length
    	i_sample_channel_count = gi_snare_drum_00_channel_count
    elseif 61 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_01_table
    	i_sample_length = gi_snare_drum_01_length
    	i_sample_channel_count = gi_snare_drum_01_channel_count
    elseif 62 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_02_table
    	i_sample_length = gi_snare_drum_02_length
    	i_sample_channel_count = gi_snare_drum_02_channel_count
    elseif 63 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_03_table
    	i_sample_length = gi_snare_drum_03_length
    	i_sample_channel_count = gi_snare_drum_03_channel_count
    elseif 64 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_04_table
    	i_sample_length = gi_snare_drum_04_length
    	i_sample_channel_count = gi_snare_drum_04_channel_count
    elseif 65 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_05_table
    	i_sample_length = gi_snare_drum_05_length
    	i_sample_channel_count = gi_snare_drum_05_channel_count
    elseif 66 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_06_table
    	i_sample_length = gi_snare_drum_06_length
    	i_sample_channel_count = gi_snare_drum_06_channel_count
    elseif 67 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_07_table
    	i_sample_length = gi_snare_drum_07_length
    	i_sample_channel_count = gi_snare_drum_07_channel_count
    elseif 68 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_08_table
    	i_sample_length = gi_snare_drum_08_length
    	i_sample_channel_count = gi_snare_drum_08_channel_count
    elseif 69 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_09_table
    	i_sample_length = gi_snare_drum_09_length
    	i_sample_channel_count = gi_snare_drum_09_channel_count
    elseif 70 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_10_table
    	i_sample_length = gi_snare_drum_10_length
    	i_sample_channel_count = gi_snare_drum_10_channel_count
    elseif 71 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_11_table
    	i_sample_length = gi_snare_drum_11_length
    	i_sample_channel_count = gi_snare_drum_11_channel_count
    elseif 72 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_12_table
    	i_sample_length = gi_snare_drum_12_length
    	i_sample_channel_count = gi_snare_drum_12_channel_count
    elseif 73 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_13_table
    	i_sample_length = gi_snare_drum_13_length
    	i_sample_channel_count = gi_snare_drum_13_channel_count
    elseif 74 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_14_table
    	i_sample_length = gi_snare_drum_14_length
    	i_sample_channel_count = gi_snare_drum_14_channel_count
    elseif 75 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_15_table
    	i_sample_length = gi_snare_drum_15_length
    	i_sample_channel_count = gi_snare_drum_15_channel_count
    elseif 76 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_16_table
    	i_sample_length = gi_snare_drum_16_length
    	i_sample_channel_count = gi_snare_drum_16_channel_count
    elseif 77 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_17_table
    	i_sample_length = gi_snare_drum_17_length
    	i_sample_channel_count = gi_snare_drum_17_channel_count
    elseif 78 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_18_table
    	i_sample_length = gi_snare_drum_18_length
    	i_sample_channel_count = gi_snare_drum_18_channel_count
    elseif 79 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_19_table
    	i_sample_length = gi_snare_drum_19_length
    	i_sample_channel_count = gi_snare_drum_19_channel_count
    elseif 80 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_20_table
    	i_sample_length = gi_snare_drum_20_length
    	i_sample_channel_count = gi_snare_drum_20_channel_count
    elseif 81 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_21_table
    	i_sample_length = gi_snare_drum_21_length
    	i_sample_channel_count = gi_snare_drum_21_channel_count
    elseif 82 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_22_table
    	i_sample_length = gi_snare_drum_22_length
    	i_sample_channel_count = gi_snare_drum_22_channel_count
    elseif 83 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_23_table
    	i_sample_length = gi_snare_drum_23_length
    	i_sample_channel_count = gi_snare_drum_23_channel_count
    elseif 84 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_24_table
    	i_sample_length = gi_snare_drum_24_length
    	i_sample_channel_count = gi_snare_drum_24_channel_count
    elseif 85 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_25_table
    	i_sample_length = gi_snare_drum_25_length
    	i_sample_channel_count = gi_snare_drum_25_channel_count
    elseif 86 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_26_table
    	i_sample_length = gi_snare_drum_26_length
    	i_sample_channel_count = gi_snare_drum_26_channel_count
    elseif 87 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_27_table
    	i_sample_length = gi_snare_drum_27_length
    	i_sample_channel_count = gi_snare_drum_27_channel_count
    elseif 88 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_28_table
    	i_sample_length = gi_snare_drum_28_length
    	i_sample_channel_count = gi_snare_drum_28_channel_count
    elseif 89 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_29_table
    	i_sample_length = gi_snare_drum_29_length
    	i_sample_channel_count = gi_snare_drum_29_channel_count
    elseif 90 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_30_table
    	i_sample_length = gi_snare_drum_30_length
    	i_sample_channel_count = gi_snare_drum_30_channel_count
    elseif 91 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_31_table
    	i_sample_length = gi_snare_drum_31_length
    	i_sample_channel_count = gi_snare_drum_31_channel_count
    elseif 92 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_32_table
    	i_sample_length = gi_snare_drum_32_length
    	i_sample_channel_count = gi_snare_drum_32_channel_count
    elseif 93 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_33_table
    	i_sample_length = gi_snare_drum_33_length
    	i_sample_channel_count = gi_snare_drum_33_channel_count
    elseif 94 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_34_table
    	i_sample_length = gi_snare_drum_34_length
    	i_sample_channel_count = gi_snare_drum_34_channel_count
    elseif 95 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_35_table
    	i_sample_length = gi_snare_drum_35_length
    	i_sample_channel_count = gi_snare_drum_35_channel_count
    elseif 96 == i_midi_note_number then
    	i_sample_table = gi_snare_drum_36_table
    	i_sample_length = gi_snare_drum_36_length
    	i_sample_channel_count = gi_snare_drum_36_channel_count
	endif

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
