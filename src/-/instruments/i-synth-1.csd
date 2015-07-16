<Cabbage>
form size(1100, 1000), caption("Synth-1"), pluginID("i001")

; Akai MIDIMix
groupbox bounds(0, 0, 1100, 850), plant("Akai MIDIMix 1") {
    ; Background Image
	image bounds(0, 0, 1, 1), file("overlay--synth-1--akai-midimix.jpg"), shape("sharp")

	; Column 1
	rslider bounds(.102727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_1a"), range(0, 48000, 0, 1, 10)
	rslider bounds(.102727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_1b"), range(0, 48000, 0, 1, 10)
	rslider bounds(.102727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_1c"), range(-1, 1, 0, 1, .02)
	checkbox bounds(.118181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_1a")
	checkbox bounds(.118181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_1b")
	vslider bounds(.102727273, .690588235, .074545455, .247058824), channel("akai_midimix__slider_1"), range(0, 127, 0, 1, 1)
	checkbox bounds(.132727273, .198823529, .014545455, .018823529), channel("akai_midimix__knob_1a__read_midi"), shape("circle")
	checkbox bounds(.132727273, .344705882, .014545455, .018823529), channel("akai_midimix__knob_1b__read_midi"), shape("circle")
	checkbox bounds(.132727273, .491764706, .014545455, .018823529), channel("akai_midimix__knob_1c__read_midi"), shape("circle")
	checkbox bounds(.132727273, .597647059, .014545455, .018823529), channel("akai_midimix__button_1a__read_midi"), shape("circle")
	checkbox bounds(.132727273, .668235294, .014545455, .018823529), channel("akai_midimix__button_1b__read_midi"), shape("circle")
	checkbox bounds(.132727273, .931764706, .014545455, .018823529), channel("akai_midimix__slider_1__read_midi"), shape("circle")
	
	; Column 2
	rslider bounds(.194545455, .115294118, .072727273, .094117647), channel("akai_midimix__knob_2a"), range(0, 127, 0, 1, 1)
	rslider bounds(.194545455, .261176471, .072727273, .094117647), channel("akai_midimix__knob_2b"), range(0, 127, 0, 1, 1)
	rslider bounds(.194545455, .408235294, .072727273, .094117647), channel("akai_midimix__knob_2c"), range(0, 127, 0, 1, 1)
	checkbox bounds(.21, .577647059, .043636364, .030588235), channel("akai_midimix__button_2a")
	checkbox bounds(.21, .648235294, .043636364, .030588235), channel("akai_midimix__button_2b")
	vslider bounds(.193636364, .690588235, .074545455, .247058824), channel("akai_midimix__slider_2"), range(0, 127, 0, 1, 1)
	checkbox bounds(.223636364, .198823529, .014545455, .018823529), channel("akai_midimix__knob_2a__read_midi"), shape("circle")
	checkbox bounds(.223636364, .344705882, .014545455, .018823529), channel("akai_midimix__knob_2b__read_midi"), shape("circle")
	checkbox bounds(.223636364, .491764706, .014545455, .018823529), channel("akai_midimix__knob_2c__read_midi"), shape("circle")
	checkbox bounds(.223636364, .597647059, .014545455, .018823529), channel("akai_midimix__button_2a__read_midi"), shape("circle")
	checkbox bounds(.223636364, .668235294, .014545455, .018823529), channel("akai_midimix__button_2b__read_midi"), shape("circle")
	checkbox bounds(.223636364, .931764706, .014545455, .018823529), channel("akai_midimix__slider_2__read_midi"), shape("circle")

	; Column 3
	rslider bounds(.284545455, .115294118, .072727273, .094117647), channel("akai_midimix__knob_3a"), range(0, 127, 0, 1, 1)
	rslider bounds(.284545455, .261176471, .072727273, .094117647), channel("akai_midimix__knob_3b"), range(0, 127, 0, 1, 1)
	rslider bounds(.284545455, .408235294, .072727273, .094117647), channel("akai_midimix__knob_3c"), range(0, 127, 0, 1, 1)
	checkbox bounds(.3, .577647059, .043636364, .030588235), channel("akai_midimix__button_3a")
	checkbox bounds(.3, .648235294, .043636364, .030588235), channel("akai_midimix__button_3b")
	vslider bounds(.283636364, .690588235, .074545455, .247058824), channel("akai_midimix__slider_3"), range(0, 127, 0, 1, 1)
	checkbox bounds(.313636364, .198823529, .014545455, .018823529), channel("akai_midimix__knob_3a__read_midi"), shape("circle")
	checkbox bounds(.313636364, .344705882, .014545455, .018823529), channel("akai_midimix__knob_3b__read_midi"), shape("circle")
	checkbox bounds(.313636364, .491764706, .014545455, .018823529), channel("akai_midimix__knob_3c__read_midi"), shape("circle")
	checkbox bounds(.313636364, .597647059, .014545455, .018823529), channel("akai_midimix__button_3a__read_midi"), shape("circle")
	checkbox bounds(.313636364, .668235294, .014545455, .018823529), channel("akai_midimix__button_3b__read_midi"), shape("circle")
	checkbox bounds(.313636364, .931764706, .014545455, .018823529), channel("akai_midimix__slider_3__read_midi"), shape("circle")
	
	; Column 4
	rslider bounds(.373636364, .115294118, .072727273, .094117647), channel("akai_midimix__knob_4a"), range(0, 127, 0, 1, 1)
	rslider bounds(.373636364, .261176471, .072727273, .094117647), channel("akai_midimix__knob_4b"), range(0, 127, 0, 1, 1)
	rslider bounds(.373636364, .408235294, .072727273, .094117647), channel("akai_midimix__knob_4c"), range(0, 127, 0, 1, 1)
	checkbox bounds(.389090909, .577647059, .043636364, .030588235), channel("akai_midimix__button_4a")
	checkbox bounds(.389090909, .648235294, .043636364, .030588235), channel("akai_midimix__button_4b")
	vslider bounds(.372727273, .690588235, .074545455, .247058824), channel("akai_midimix__slider_4"), range(0, 127, 0, 1, 1)
	checkbox bounds(.402727273, .198823529, .014545455, .018823529), channel("akai_midimix__knob_4a__read_midi"), shape("circle")
	checkbox bounds(.402727273, .344705882, .014545455, .018823529), channel("akai_midimix__knob_4b__read_midi"), shape("circle")
	checkbox bounds(.402727273, .491764706, .014545455, .018823529), channel("akai_midimix__knob_4c__read_midi"), shape("circle")
	checkbox bounds(.402727273, .597647059, .014545455, .018823529), channel("akai_midimix__button_4a__read_midi"), shape("circle")
	checkbox bounds(.402727273, .668235294, .014545455, .018823529), channel("akai_midimix__button_4b__read_midi"), shape("circle")
	checkbox bounds(.402727273, .931764706, .014545455, .018823529), channel("akai_midimix__slider_4__read_midi"), shape("circle")
	
	; Column 5
	rslider bounds(.462727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_5a"), range(0, 127, 0, 1, 1)
	rslider bounds(.462727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_5b"), range(0, 127, 0, 1, 1)
	rslider bounds(.462727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_5c"), range(0, 127, 0, 1, 1)
	checkbox bounds(.478181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_5a")
	checkbox bounds(.478181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_5b")
	vslider bounds(.461818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_5"), range(0, 127, 0, 1, 1)
	checkbox bounds(.491818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_5a__read_midi"), shape("circle")
	checkbox bounds(.491818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_5b__read_midi"), shape("circle")
	checkbox bounds(.491818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_5c__read_midi"), shape("circle")
	checkbox bounds(.491818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_5a__read_midi"), shape("circle")
	checkbox bounds(.491818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_5b__read_midi"), shape("circle")
	checkbox bounds(.491818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_5__read_midi"), shape("circle")
	
	; Column 6
	rslider bounds(.552727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_6a"), range(0, 127, 0, 1, 1)
	rslider bounds(.552727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_6b"), range(0, 127, 0, 1, 1)
	rslider bounds(.552727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_6c"), range(0, 127, 0, 1, 1)
	checkbox bounds(.568181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_6a")
	checkbox bounds(.568181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_6b")
	vslider bounds(.551818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_6"), range(0, 127, 0, 1, 1)
	checkbox bounds(.581818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_6a__read_midi"), shape("circle")
	checkbox bounds(.581818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_6b__read_midi"), shape("circle")
	checkbox bounds(.581818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_6c__read_midi"), shape("circle")
	checkbox bounds(.581818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_6a__read_midi"), shape("circle")
	checkbox bounds(.581818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_6b__read_midi"), shape("circle")
	checkbox bounds(.581818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_6__read_midi"), shape("circle")
	
	; Column 7
	rslider bounds(.642727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_7a"), range(0, 127, 0, 1, 1)
	rslider bounds(.642727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_7b"), range(0, 127, 0, 1, 1)
	rslider bounds(.642727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_7c"), range(0, 127, 0, 1, 1)
	checkbox bounds(.658181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_7a")
	checkbox bounds(.658181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_7b")
	vslider bounds(.641818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_7"), range(0, 127, 0, 1, 1)
	checkbox bounds(.671818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_7a__read_midi"), shape("circle")
	checkbox bounds(.671818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_7b__read_midi"), shape("circle")
	checkbox bounds(.671818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_7c__read_midi"), shape("circle")
	checkbox bounds(.671818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_7a__read_midi"), shape("circle")
	checkbox bounds(.671818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_7b__read_midi"), shape("circle")
	checkbox bounds(.671818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_7__read_midi"), shape("circle")
	
	; Column 8
	rslider bounds(.732727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_8a"), range(0, 127, 0, 1, 1)
	rslider bounds(.732727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_8b"), range(0, 127, 0, 1, 1)
	rslider bounds(.732727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_8c"), range(0, 127, 0, 1, 1)
	checkbox bounds(.748181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_8a")
	checkbox bounds(.748181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_8b")
	vslider bounds(.731818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_8"), range(0, 127, 0, 1, 1)
	checkbox bounds(.761818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_8a__read_midi"), shape("circle")
	checkbox bounds(.761818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_8b__read_midi"), shape("circle")
	checkbox bounds(.761818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_8c__read_midi"), shape("circle")
	checkbox bounds(.761818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_8a__read_midi"), shape("circle")
	checkbox bounds(.761818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_8b__read_midi"), shape("circle")
	checkbox bounds(.761818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_8__read_midi"), shape("circle")
	
	; Column 9
	vslider bounds(.820909091, .690588235, .074545455, .247058824), channel("akai_midimix__slider_9"), range(0, 127, 0, 1, 1)
	checkbox bounds(.850909091, .931764706, .014545455, .018823529), channel("akai_midimix__slider_9__read_midi"), shape("circle")
	
	; Oscillator Combo-boxes
	combobox bounds(.84, .270588235, .06, .017647059), channel("akai_midimix__osc_1_combobox"), items("sine", "square", "triangle", "saw"), colour("white"), fontcolour(127, 127, 0)
	combobox bounds(.84, .288235294, .06, .017647059), channel("akai_midimix__osc_2_combobox"), items("sine", "square", "triangle", "saw"), colour("white"), fontcolour(127, 127, 0)
	combobox bounds(.84, .305882353, .06, .017647059), channel("akai_midimix__osc_3_combobox"), items("sine", "square", "triangle", "saw"), colour("white"), fontcolour(127, 127, 0)

	; LFO Combo-boxes
	combobox bounds(.84, .418823529, .06, .017647059), channel("akai_midimix__lfo_1_combobox"), items("sine", "square", "triangle", "saw"), colour("white"), fontcolour(127, 63, 63)
	combobox bounds(.84, .436470588, .06, .017647059), channel("akai_midimix__lfo_2_combobox"), items("sine", "square", "triangle", "saw"), colour("white"), fontcolour(127, 63, 63)
	combobox bounds(.84, .454117647, .06, .017647059), channel("akai_midimix__lfo_3_combobox"), items("sine", "square", "triangle", "saw"), colour("white"), fontcolour(127, 63, 63)
}

; M-Audio ProKeys Sono 61
groupbox bounds(0, 850, 1100, 150), plant("M-Audio ProKeys 1") {
    ; Background Image
	image bounds(0, 0, 1, 1), file("overlay--common--m-audio-prokeys.jpg"), shape("sharp")

    ; Controls
    keyboard bounds(.08, .3, .54725, .6), value(36)
    vslider bounds(.002, .125, .1, .78), channel("m_audio_prokeys__wheel_1"), range(0, 16383, 8191, 1, 1)
    vslider bounds(.03175, .125, .1, .78), channel("m_audio_prokeys__wheel_2"), range(0, 127, 0, 1, 1)
    rslider bounds(.215, 0, .25, .25), channel("m_audio_prokeys__knob"), range(0, 127, 0, 1, 1)
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

-n -d -+rtmidi=NULL -M0 --midi-key=4 --midi-velocity-amp=5
;-n -d -+rtmidi=NULL -M0 --midi-key=4 --midi-velocity-amp=5 --messagelevel=0

</CsOptions>
<CsInstruments>

#include "../../../config.csd-h"
#include "../../../config-akai-midimix.csd-h"
#include "../../../include/constants.csd-h"
#include "../../../include/opcodes/midi-testing.csd-h"
#include "../../../include/opcodes/read-midi.csd-h"
#include "../../../include/opcodes/variable-logging.csd-h"

massign 0, 1

gi_NoteId = -1

/*
 *******************************************************************************
 * Main Instrument
 *******************************************************************************
 */
instr 1
    i_note_id = gi_NoteId
    gi_NoteId += 1
    
    if (0 == i_note_id) then
        i_ udo__set_midi_control_default 0
        i_ udo__set_midi_control_default 1
        i_ udo__set_midi_control_default 2
        i_ udo__set_midi_control_default 3
        i_ udo__set_midi_control_default 4
        i_ udo__set_midi_control_default 5
        i_ udo__set_midi_control_default 6
        i_ udo__set_midi_control_default 7
        i_ udo__set_midi_control_default 8
        i_ udo__set_midi_control_default 9
        i_ udo__set_midi_control_default 10
        i_ udo__set_midi_control_default 11
        i_ udo__set_midi_control_default 12
        i_ udo__set_midi_control_default 13
        i_ udo__set_midi_control_default 14
        i_ udo__set_midi_control_default 15
        i_ udo__set_midi_control_default 16
        i_ udo__set_midi_control_default 17
        i_ udo__set_midi_control_default 18
        i_ udo__set_midi_control_default 19
        i_ udo__set_midi_control_default 20
        i_ udo__set_midi_control_default 21
        i_ udo__set_midi_control_default 22
        i_ udo__set_midi_control_default 23
        i_ udo__set_midi_control_default 24
        i_ udo__set_midi_control_default 25
        i_ udo__set_midi_control_default 26
        i_ udo__set_midi_control_default 27
        i_ udo__set_midi_control_default 28
        i_ udo__set_midi_control_default 29
        i_ udo__set_midi_control_default 30
        i_ udo__set_midi_control_default 31
        i_ udo__set_midi_control_default 32
        i_ udo__set_midi_control_default 33
        i_ udo__set_midi_control_default 34
        i_ udo__set_midi_control_default 35
        i_ udo__set_midi_control_default 36
        i_ udo__set_midi_control_default 37
        i_ udo__set_midi_control_default 38
        i_ udo__set_midi_control_default 39
        i_ udo__set_midi_control_default 40
        i_ udo__set_midi_control_default 41
        i_ udo__set_midi_control_default 42
        i_ udo__set_midi_control_default 43
        i_ udo__set_midi_control_default 44
        i_ udo__set_midi_control_default 45
        i_ udo__set_midi_control_default 46
        i_ udo__set_midi_control_default 47
        i_ udo__set_midi_control_default 48
        i_ udo__set_midi_control_default 49
        i_ udo__set_midi_control_default 50
        i_ udo__set_midi_control_default 51
        i_ udo__set_midi_control_default 52
        i_ udo__set_midi_control_default 53
        i_ udo__set_midi_control_default 54
        i_ udo__set_midi_control_default 55
        i_ udo__set_midi_control_default 56
        i_ udo__set_midi_control_default 57
        i_ udo__set_midi_control_default 58
        i_ udo__set_midi_control_default 59
        i_ udo__set_midi_control_default 60
        i_ udo__set_midi_control_default 61
        i_ udo__set_midi_control_default 62
        i_ udo__set_midi_control_default 63
        i_ udo__set_midi_control_default 64
        i_ udo__set_midi_control_default 65
        i_ udo__set_midi_control_default 66
        i_ udo__set_midi_control_default 67
        i_ udo__set_midi_control_default 68
        i_ udo__set_midi_control_default 69
        i_ udo__set_midi_control_default 70
        i_ udo__set_midi_control_default 71
        i_ udo__set_midi_control_default 72
        i_ udo__set_midi_control_default 73
        i_ udo__set_midi_control_default 74
        i_ udo__set_midi_control_default 75
        i_ udo__set_midi_control_default 76
        i_ udo__set_midi_control_default 77
        i_ udo__set_midi_control_default 78
        i_ udo__set_midi_control_default 79
        i_ udo__set_midi_control_default 80
        i_ udo__set_midi_control_default 81
        i_ udo__set_midi_control_default 82
        i_ udo__set_midi_control_default 83
        i_ udo__set_midi_control_default 84
        i_ udo__set_midi_control_default 85
        i_ udo__set_midi_control_default 86
        i_ udo__set_midi_control_default 87
        i_ udo__set_midi_control_default 88
        i_ udo__set_midi_control_default 89
        i_ udo__set_midi_control_default 90
        i_ udo__set_midi_control_default 91
        i_ udo__set_midi_control_default 92
        i_ udo__set_midi_control_default 93
        i_ udo__set_midi_control_default 94
        i_ udo__set_midi_control_default 95
        i_ udo__set_midi_control_default 96
        i_ udo__set_midi_control_default 97
        i_ udo__set_midi_control_default 98
        i_ udo__set_midi_control_default 99
        i_ udo__set_midi_control_default 100
        i_ udo__set_midi_control_default 101
        i_ udo__set_midi_control_default 102
        i_ udo__set_midi_control_default 103
        i_ udo__set_midi_control_default 104
        i_ udo__set_midi_control_default 105
        i_ udo__set_midi_control_default 106
        i_ udo__set_midi_control_default 107
        i_ udo__set_midi_control_default 108
        i_ udo__set_midi_control_default 109
        i_ udo__set_midi_control_default 110
        i_ udo__set_midi_control_default 111
        i_ udo__set_midi_control_default 112
        i_ udo__set_midi_control_default 113
        i_ udo__set_midi_control_default 114
        i_ udo__set_midi_control_default 115
        i_ udo__set_midi_control_default 116
        i_ udo__set_midi_control_default 117
        i_ udo__set_midi_control_default 118
        i_ udo__set_midi_control_default 119
        i_ udo__set_midi_control_default 120
        i_ udo__set_midi_control_default 121
        i_ udo__set_midi_control_default 122
        i_ udo__set_midi_control_default 123
        i_ udo__set_midi_control_default 124
        i_ udo__set_midi_control_default 125
        i_ udo__set_midi_control_default 126
        i_ udo__set_midi_control_default 127

        i_ udo__add_midi_pitchbend "m_audio_prokeys__wheel_1"
        i_ udo__add_midi_control 1, "m_audio_prokeys__wheel_2"
        i_ udo__add_midi_control 7, "m_audio_prokeys__knob"
        
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_1A_CC, "akai_midimix__knob_1a", 0, 0, 48000 * $128_OVER_127, 0
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_1B_CC, "akai_midimix__knob_1b", 0, 0, 48000 * $128_OVER_127, 48000
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_1C_CC, "akai_midimix__knob_1c", 0, -1, 1, 0
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_1A_CC, "akai_midimix__button_1a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_1B_CC, "akai_midimix__button_1b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_1_CC, "akai_midimix__slider_1", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_2A_CC, "akai_midimix__knob_2a", 0, 0, 9600 * $128_OVER_127, 4800
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_2B_CC, "akai_midimix__knob_2b", 0, 0, 48000 * $128_OVER_127, 24000
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_2C_CC, "akai_midimix__knob_2c", 0, -1, 1, 0
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_2A_CC, "akai_midimix__button_2a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_2B_CC, "akai_midimix__button_2b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_2_CC, "akai_midimix__slider_2", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_3A_CC, "akai_midimix__knob_3a"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_3B_CC, "akai_midimix__knob_3b"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_3C_CC, "akai_midimix__knob_3c"
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_3A_CC, "akai_midimix__button_3a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_3B_CC, "akai_midimix__button_3b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_3_CC, "akai_midimix__slider_3", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_4A_CC, "akai_midimix__knob_4a"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_4B_CC, "akai_midimix__knob_4b"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_4C_CC, "akai_midimix__knob_4c"
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_4A_CC, "akai_midimix__button_4a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_4B_CC, "akai_midimix__button_4b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_4_CC, "akai_midimix__slider_4", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_5A_CC, "akai_midimix__knob_5a"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_5B_CC, "akai_midimix__knob_5b"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_5C_CC, "akai_midimix__knob_5c"
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_5A_CC, "akai_midimix__button_5a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_5B_CC, "akai_midimix__button_5b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_5_CC, "akai_midimix__slider_5", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_6A_CC, "akai_midimix__knob_6a"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_6B_CC, "akai_midimix__knob_6b"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_6C_CC, "akai_midimix__knob_6c"
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_6A_CC, "akai_midimix__button_6a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_6B_CC, "akai_midimix__button_6b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_6_CC, "akai_midimix__slider_6", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_7A_CC, "akai_midimix__knob_7a"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_7B_CC, "akai_midimix__knob_7b"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_7C_CC, "akai_midimix__knob_7c"
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_7A_CC, "akai_midimix__button_7a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_7B_CC, "akai_midimix__button_7b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_7_CC, "akai_midimix__slider_7", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_8A_CC, "akai_midimix__knob_8a"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_8B_CC, "akai_midimix__knob_8b"
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_8C_CC, "akai_midimix__knob_8c"
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_8A_CC, "akai_midimix__button_8a", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__BUTTON_8B_CC, "akai_midimix__button_8b", 1
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_8_CC, "akai_midimix__slider_8", 0, 0, 127, 0

        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_9_CC, "akai_midimix__slider_9", 0, 0, 127, 0

        i_ udo__update_midi_switches

    endif
/*
	; M-Audio ProKeys
	;---------------------------------------------------------------------------
   	k_m_audio_prokeys__wheel_1 udo__read_midi_pitchbend "m_audio_prokeys__wheel_1"
   	k_m_audio_prokeys__wheel_2 udo__read_midi_controller 1, "m_audio_prokeys__wheel_2"
   	k_m_audio_prokeys__knob udo__read_midi_controller 7, "m_audio_prokeys__knob"

	; Akai MIDIMix
	;---------------------------------------------------------------------------
	k_akai_midimix__knob_1a chnget gS_MidiControlChannels[$AKAI_MIDIMIX__KNOB_1A_CC]
	k_akai_midimix__knob_1b chnget gS_MidiControlChannels[$AKAI_MIDIMIX__KNOB_1B_CC]
	k_akai_midimix__knob_1c chnget gS_MidiControlChannels[$AKAI_MIDIMIX__KNOB_1C_CC]
	k_akai_midimix__slider_1 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_1_CC, "akai_midimix__slider_1"
	
	k_akai_midimix__knob_2a udo__read_midi_controller $AKAI_MIDIMIX__KNOB_2A_CC, "akai_midimix__knob_2a"
	k_akai_midimix__knob_2b udo__read_midi_controller $AKAI_MIDIMIX__KNOB_2B_CC, "akai_midimix__knob_2b"
	k_akai_midimix__knob_2c udo__read_midi_controller $AKAI_MIDIMIX__KNOB_2C_CC, "akai_midimix__knob_2c"
	k_akai_midimix__slider_2 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_2_CC, "akai_midimix__slider_2"
	
	k_akai_midimix__knob_3a udo__read_midi_controller $AKAI_MIDIMIX__KNOB_3A_CC, "akai_midimix__knob_3a"
	k_akai_midimix__knob_3b udo__read_midi_controller $AKAI_MIDIMIX__KNOB_3B_CC, "akai_midimix__knob_3b"
	i_akai_midimix__knob_3c udo__read_midi_controller $AKAI_MIDIMIX__KNOB_3C_CC, "akai_midimix__knob_3c"
	k_akai_midimix__slider_3 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_3_CC, "akai_midimix__slider_3"
	
	k_akai_midimix__knob_4a udo__read_midi_controller $AKAI_MIDIMIX__KNOB_4A_CC, "akai_midimix__knob_4a"
	k_akai_midimix__knob_4b udo__read_midi_controller $AKAI_MIDIMIX__KNOB_4B_CC, "akai_midimix__knob_4b"
	i_akai_midimix__knob_4c udo__read_midi_controller $AKAI_MIDIMIX__KNOB_4C_CC, "akai_midimix__knob_4c"
	k_akai_midimix__slider_4 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_4_CC, "akai_midimix__slider_4"
	
	k_akai_midimix__knob_5a udo__read_midi_controller $AKAI_MIDIMIX__KNOB_5A_CC, "akai_midimix__knob_5a"
	k_akai_midimix__knob_5b udo__read_midi_controller $AKAI_MIDIMIX__KNOB_5B_CC, "akai_midimix__knob_5b"
	i_akai_midimix__knob_5c udo__read_midi_controller $AKAI_MIDIMIX__KNOB_5C_CC, "akai_midimix__knob_5c"
	k_akai_midimix__slider_5 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_5_CC, "akai_midimix__slider_5"
	
	k_akai_midimix__knob_6a udo__read_midi_controller $AKAI_MIDIMIX__KNOB_6A_CC, "akai_midimix__knob_6a"
	k_akai_midimix__knob_6b udo__read_midi_controller $AKAI_MIDIMIX__KNOB_6B_CC, "akai_midimix__knob_6b"
	i_akai_midimix__knob_6c udo__read_midi_controller $AKAI_MIDIMIX__KNOB_6C_CC, "akai_midimix__knob_6c"
	k_akai_midimix__slider_6 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_6_CC, "akai_midimix__slider_6"
	
	k_akai_midimix__knob_7a udo__read_midi_controller $AKAI_MIDIMIX__KNOB_7A_CC, "akai_midimix__knob_7a"
	k_akai_midimix__knob_7b udo__read_midi_controller $AKAI_MIDIMIX__KNOB_7B_CC, "akai_midimix__knob_7b"
	k_akai_midimix__knob_7c udo__read_midi_controller $AKAI_MIDIMIX__KNOB_7C_CC, "akai_midimix__knob_7c"
	k_akai_midimix__slider_7 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_7_CC, "akai_midimix__slider_7"
	
	k_akai_midimix__knob_8a udo__read_midi_controller $AKAI_MIDIMIX__KNOB_8A_CC, "akai_midimix__knob_8a"
	k_akai_midimix__knob_8b udo__read_midi_controller $AKAI_MIDIMIX__KNOB_8B_CC, "akai_midimix__knob_8b"
	k_akai_midimix__knob_8c udo__read_midi_controller $AKAI_MIDIMIX__KNOB_8C_CC, "akai_midimix__knob_8c"
	k_akai_midimix__slider_8 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_8_CC, "akai_midimix__slider_8"
	
	k_akai_midimix__slider_9 udo__read_midi_controller $AKAI_MIDIMIX__SLIDER_9_CC, "akai_midimix__slider_9"
	
	i_akai_midimix__osc_1_combobox chnget "akai_midimix__osc_1_combobox"
	i_akai_midimix__osc_2_combobox chnget "akai_midimix__osc_2_combobox"
	i_akai_midimix__osc_3_combobox chnget "akai_midimix__osc_3_combobox"
	
	i_akai_midimix__lfo_1_combobox chnget "akai_midimix__lfo_1_combobox"
	i_akai_midimix__lfo_2_combobox chnget "akai_midimix__lfo_2_combobox"
	i_akai_midimix__lfo_3_combobox chnget "akai_midimix__lfo_3_combobox"
	
;===============================================================================

	; k_pitchbend  (units: cents/100) [range: -2,2]
	;---------------------------------------------------------------------------
	k_pitchbend init 0
	k_m_audio_prokeys__wheel_1 = -2 + (k_m_audio_prokeys__wheel_1 / 4096)
    k_pitchbend port k_m_audio_prokeys__wheel_1, .05

	; k_pitch  (units: cps)
	;---------------------------------------------------------------------------
	k_pitch_midi_note_number = p4 + k_pitchbend
	k_pitch = cpsmidinn(k_pitch_midi_note_number)

	; k_out_modulation_wheel  [range: 0,127]
	;---------------------------------------------------------------------------
	k_modulation_wheel init 0
	k_modulation_wheel port k_m_audio_prokeys__wheel_2, .05

	; k_out_volume  [range: 0,1]
	;---------------------------------------------------------------------------
	k_volume init 0
	k_m_audio_prokeys__knob = k_m_audio_prokeys__knob / 128
	k_volume port k_m_audio_prokeys__knob, .05
	
	; k_volume_envelope  [range: 0,1]
	;---------------------------------------------------------------------------
	i_volume_envelope_attack_time = i_akai_midimix__knob_3c / 12.8
	i_volume_envelope_decay_time = i_akai_midimix__knob_4c / 12.8
	i_volume_envelope_sustain_level = i_akai_midimix__knob_5c / 128
	i_volume_envelope_release_time = i_akai_midimix__knob_6c / 12.8
	k_volume_envelope madsr i_volume_envelope_attack_time, i_volume_envelope_decay_time, i_volume_envelope_sustain_level, i_volume_envelope_release_time
	
	; k_hipass_hz  [range: 0, 48000]
	;---------------------------------------------------------------------------
    k_hipass_hz init 0
    k_hipass_hz port k_akai_midimix__knob_1a, .05
	
	; k_lopass_hz  [range: 0, 48000]
	;---------------------------------------------------------------------------
    k_lopass_hz init 0
    k_lopass_hz port k_akai_midimix__knob_2a, .05
	
;===============================================================================

	; Audio Output
	;---------------------------------------------------------------------------
	k_volume = k_volume * k_volume_envelope
	a1 oscili p5, k_pitch, 1
	outs k_volume * a1, k_volume * a1

	
	; Write envelope data
	;---------------------------------------------------------------------------
	i_log_variables init 0
	i_log_variables chnget "log_variables"
	if (1 == i_log_variables) then
		k_is_last_k_cycle udo__is_last_k_cycle i_volume_envelope_release_time
		i_ udo__write_k i_note_id, 0, k_pitch_midi_note_number, k_is_last_k_cycle, 2
		i_ udo__write_k i_note_id, 1, k_modulation_wheel, k_is_last_k_cycle, 2
		i_ udo__write_k i_note_id, 7, k_volume, k_is_last_k_cycle, 2
	endif
*/
endin

instr set_midi_read_defaults
    chnset 1, "m_audio_prokeys__wheel_1__read_midi"
    chnset 1, "m_audio_prokeys__wheel_2__read_midi"
    chnset 1, "m_audio_prokeys__knob__read_midi"
    
    chnset 1, "akai_midimix__knob_1a__read_midi"
    chnset 1, "akai_midimix__knob_1b__read_midi"
    chnset 1, "akai_midimix__knob_1c__read_midi"
    chnset 1, "akai_midimix__button_1a__read_midi"
    chnset 1, "akai_midimix__button_1b__read_midi"
    chnset 1, "akai_midimix__slider_1__read_midi"
    
    chnset 1, "akai_midimix__knob_2a__read_midi"
    chnset 1, "akai_midimix__knob_2b__read_midi"
    chnset 1, "akai_midimix__knob_2c__read_midi"
    chnset 1, "akai_midimix__button_2a__read_midi"
    chnset 1, "akai_midimix__button_2b__read_midi"
    chnset 1, "akai_midimix__slider_2__read_midi"
    
    chnset 1, "akai_midimix__knob_3a__read_midi"
    chnset 1, "akai_midimix__knob_3b__read_midi"
    chnset 1, "akai_midimix__knob_3c__read_midi"
    chnset 1, "akai_midimix__button_3a__read_midi"
    chnset 1, "akai_midimix__button_3b__read_midi"
    chnset 1, "akai_midimix__slider_3__read_midi"
    
    chnset 1, "akai_midimix__knob_4a__read_midi"
    chnset 1, "akai_midimix__knob_4b__read_midi"
    chnset 1, "akai_midimix__knob_4c__read_midi"
    chnset 1, "akai_midimix__button_4a__read_midi"
    chnset 1, "akai_midimix__button_4b__read_midi"
    chnset 1, "akai_midimix__slider_4__read_midi"
    
    chnset 1, "akai_midimix__knob_5a__read_midi"
    chnset 1, "akai_midimix__knob_5b__read_midi"
    chnset 1, "akai_midimix__knob_5c__read_midi"
    chnset 1, "akai_midimix__button_5a__read_midi"
    chnset 1, "akai_midimix__button_5b__read_midi"
    chnset 1, "akai_midimix__slider_5__read_midi"
    
    chnset 1, "akai_midimix__knob_6a__read_midi"
    chnset 1, "akai_midimix__knob_6b__read_midi"
    chnset 1, "akai_midimix__knob_6c__read_midi"
    chnset 1, "akai_midimix__button_6a__read_midi"
    chnset 1, "akai_midimix__button_6b__read_midi"
    chnset 1, "akai_midimix__slider_6__read_midi"
    
    chnset 1, "akai_midimix__knob_7a__read_midi"
    chnset 1, "akai_midimix__knob_7b__read_midi"
    chnset 1, "akai_midimix__knob_7c__read_midi"
    chnset 1, "akai_midimix__button_7a__read_midi"
    chnset 1, "akai_midimix__button_7b__read_midi"
    chnset 1, "akai_midimix__slider_7__read_midi"
    
    chnset 1, "akai_midimix__knob_8a__read_midi"
    chnset 1, "akai_midimix__knob_8b__read_midi"
    chnset 1, "akai_midimix__knob_8c__read_midi"
    chnset 1, "akai_midimix__button_8a__read_midi"
    chnset 1, "akai_midimix__button_8b__read_midi"
    chnset 1, "akai_midimix__slider_8__read_midi"
    
    chnset 1, "akai_midimix__slider_9__read_midi"
endin

instr trace_midi_input
    i_ udo__trace_midi
endin

</CsInstruments>
<CsScore>

f1 0 1024 10 1
f0 3600

i1 0 -1
i"set_midi_read_defaults" 0  0
;i"trace_midi_input" 0 -1

</CsScore>
</CsoundSynthesizer>
