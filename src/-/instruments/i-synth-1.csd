<Cabbage>
form size(1100, 1000), caption("Synth-1"), pluginID("i001")

; Akai MIDIMix
groupbox bounds(0, 0, 1100, 850), plant("Akai MIDIMix 1") {
    ; Background Image
	image bounds(0, 0, 1, 1), file("overlay--synth-1--akai-midimix.jpg"), shape("sharp")

	; Column 1
	rslider bounds(.102727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_1a"), range(10, 9990, 0, 1, 10) ; Hi-Pass:Hz
	rslider bounds(.102727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_1b"), range(10, 9990, 9990, 1, 10) ; Lo-Pass:Hz
	rslider bounds(.102727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_1c"), range(-1, 1, 0, 1, .02) ; Pan
	checkbox bounds(.118181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_1a") ; Hi-Pass:On/Off
	checkbox bounds(.118181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_1b") ; Lo-Pass:On/Off
	vslider bounds(.102727273, .690588235, .074545455, .247058824), channel("akai_midimix__slider_1"), range(0, 127, 0, 1, 1) ; Pan:Randomize

	; Column 2
	rslider bounds(.194545455, .115294118, .072727273, .094117647), channel("akai_midimix__knob_2a"), range(0, 1, 0, 1, .01) ; EQ:Q
	rslider bounds(.194545455, .261176471, .072727273, .094117647), channel("akai_midimix__knob_2b"), range(10, 11980, 1000, 1, 5) ; EQ:Hz
	rslider bounds(.194545455, .408235294, .072727273, .094117647), channel("akai_midimix__knob_2c"), range(-1, 1, 0, 1, .02) ; EQ:dB
	checkbox bounds(.21, .577647059, .043636364, .030588235), channel("akai_midimix__button_2a") ; EQ:On/Off
	checkbox bounds(.21, .648235294, .043636364, .030588235), channel("akai_midimix__button_2b") ; EQ:2x
	vslider bounds(.193636364, .690588235, .074545455, .247058824), channel("akai_midimix__slider_2"), range(0, 127, 0, 1, 1) ; EQ:Randomize

	; Column 3
	rslider bounds(.284545455, .115294118, .072727273, .094117647), channel("akai_midimix__knob_3a"), range(.01, 10, 1, 1, .01) ; A
	rslider bounds(.284545455, .261176471, .072727273, .094117647), channel("akai_midimix__knob_3b"), range(-1, 1, 0, 1, .02) ; Osc.1:Hz
	rslider bounds(.284545455, .408235294, .072727273, .094117647), channel("akai_midimix__knob_3c"), range(0, 1, 1, 1, .01) ; Osc.1:dB
	checkbox bounds(.3, .577647059, .043636364, .030588235), channel("akai_midimix__button_3a"), value(1) ; Osc.1:On/Off
	checkbox bounds(.3, .648235294, .043636364, .030588235), channel("akai_midimix__button_3b"), value(1) ; Osc.1:2x
	vslider bounds(.283636364, .690588235, .074545455, .247058824), channel("akai_midimix__slider_3"), range(0, 127, 0, 1, 1) ; Osc.1:Randomize
	
	; Column 4
	rslider bounds(.373636364, .115294118, .072727273, .094117647), channel("akai_midimix__knob_4a"), range(.01, 10, 1, 1, .01) ; D
	rslider bounds(.373636364, .261176471, .072727273, .094117647), channel("akai_midimix__knob_4b"), range(-1, 1, 0, 1, .02) ; Osc.2:Hz
	rslider bounds(.373636364, .408235294, .072727273, .094117647), channel("akai_midimix__knob_4c"), range(0, 1, 1, 1, .01) ; Osc.2:dB
	checkbox bounds(.389090909, .577647059, .043636364, .030588235), channel("akai_midimix__button_4a"), value(1) ; Osc.2:On/Off
	checkbox bounds(.389090909, .648235294, .043636364, .030588235), channel("akai_midimix__button_4b"), value(1) ; Osc.2:2x
	vslider bounds(.372727273, .690588235, .074545455, .247058824), channel("akai_midimix__slider_4"), range(0, 127, 0, 1, 1) ; Osc.2:Randomize
	
	; Column 5
	rslider bounds(.462727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_5a"), range(0, 1, .5, 1, .01) ; S
	rslider bounds(.462727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_5b"), range(-1, 1, 0, 1, .02) ; Osc.3:Hz
	rslider bounds(.462727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_5c"), range(0, 1, 1, 1, .01) ; Osc.3:dB
	checkbox bounds(.478181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_5a"), value(1) ; Osc.3:On/Off
	checkbox bounds(.478181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_5b"), value(1) ; Osc.3:2x
	vslider bounds(.461818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_5"), range(0, 127, 0, 1, 1) ; Osc.3:Randomize
	
	; Column 6
	rslider bounds(.552727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_6a"), range(.01, 10, 1, 1, .01) ; R
	rslider bounds(.552727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_6b"), range(.0, 10, 0, 1, .1) ; LFO.1:Hz
	rslider bounds(.552727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_6c"), range(0, 1, 1, 1, .01) ; LFO.1:dB
	checkbox bounds(.568181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_6a") ; LFO.1:On/Off
	checkbox bounds(.568181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_6b"), value(1) ; 2x:5va/8va
	vslider bounds(.551818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_6"), range(0, 127, 0, 1, 1) ; LFO.1:Randomize
	
	; Column 7
	rslider bounds(.642727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_7a"), range(.5, 1, .75, 1, .01) ; Reverb:Size
	rslider bounds(.642727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_7b"), range(.0, 10, 0, 1, .1) ; LFO.2:Hz
	rslider bounds(.642727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_7c"), range(0, 1, 1, 1, .01) ; LFO.2:dB
	checkbox bounds(.658181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_7a") ; LFO.2:On/Off
	checkbox bounds(.658181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_7b") ; Log Values
	vslider bounds(.641818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_7"), range(0, 127, 0, 1, 1) ; LFO.2:Randomize
	
	; Column 8
	rslider bounds(.732727273, .115294118, .072727273, .094117647), channel("akai_midimix__knob_8a"), range(0, 48000, 48000, 1, 10) ; Reverb:Cutoff-Hz
	rslider bounds(.732727273, .261176471, .072727273, .094117647), channel("akai_midimix__knob_8b"), range(.0, 10, 0, 1, .1) ; LFO.3:Hz
	rslider bounds(.732727273, .408235294, .072727273, .094117647), channel("akai_midimix__knob_8c"), range(0, 1, 1, 1, .01) ; LFO.3:dB
	checkbox bounds(.748181818, .577647059, .043636364, .030588235), channel("akai_midimix__button_8a") ; LFO.3:On/Off
	checkbox bounds(.748181818, .648235294, .043636364, .030588235), channel("akai_midimix__button_8b") ; Toggle Read MIDI
	vslider bounds(.731818182, .690588235, .074545455, .247058824), channel("akai_midimix__slider_8"), range(0, 127, 0, 1, 1) ; LFO.2:Randomize
	
	; Column 9
	vslider bounds(.820909091, .690588235, .074545455, .247058824), channel("akai_midimix__slider_9"), range(0, 1, 1, 1, .01) ; Reverb:dB
	
	; Oscillator Combo-boxes
	combobox bounds(.84, .270588235, .11, .017647059), channel("akai_midimix__osc_1_shape"), items("sine", "triangle", "square", "saw", "pulse"), value(3), colour("white"), fontcolour(127, 127, 0) ; Osc.1:Shape
	combobox bounds(.84, .288235294, .11, .017647059), channel("akai_midimix__osc_2_shape"), items("sine", "triangle", "square", "saw", "pulse"), value(3), colour("white"), fontcolour(127, 127, 0) ; Osc.2:Shape
	combobox bounds(.84, .305882353, .11, .017647059), channel("akai_midimix__osc_3_shape"), items("sine", "triangle", "square", "saw", "pulse"), value(3), colour("white"), fontcolour(127, 127, 0) ; Osc.3:Shape

	; LFO Combo-boxes
	combobox bounds(.84, .418823529, .11, .017647059), channel("akai_midimix__lfo_1_shape"), items("sine", "triangle", "square [bipolar]", "square [unipolar]", "saw", "saw [down]"), colour("white"), fontcolour(127, 63, 63) ; LFO.1:Shape
	combobox bounds(.84, .436470588, .11, .017647059), channel("akai_midimix__lfo_2_shape"), items("sine", "triangle", "square [bipolar]", "square [unipolar]", "saw", "saw [down]"), colour("white"), fontcolour(127, 63, 63) ; LFO.2:Shape
	combobox bounds(.84, .454117647, .11, .017647059), channel("akai_midimix__lfo_3_shape"), items("sine", "triangle", "square [bipolar]", "square [unipolar]", "saw", "saw [down]"), colour("white"), fontcolour(127, 63, 63) ; LFO.3:Shape
	combobox bounds(.84, .528235294, .11, .017647059), channel("akai_midimix__lfo_1_route"), items("hi-pass:hz", "lo-pass:hz", "pan", "eq:q", "eq:hz", "eq:db", "osc.1:hz", "osc.1:db", "osc.2:hz", "osc.2:db", "osc.3:hz", "osc.3:db", "pitchbend", "modulation", "volume"), colour("white"), fontcolour(127, 63, 63), value(13) ; LFO.1:Route
	combobox bounds(.84, .545882353, .11, .017647059), channel("akai_midimix__lfo_2_route"), items("hi-pass:hz", "lo-pass:hz", "pan", "eq:q", "eq:hz", "eq:db", "osc.1:hz", "osc.1:db", "osc.2:hz", "osc.2:db", "osc.3:hz", "osc.3:db", "pitchbend", "modulation", "volume"), colour("white"), fontcolour(127, 63, 63) ; LFO.2:Route
	combobox bounds(.84, .563529412, .11, .017647059), channel("akai_midimix__lfo_3_route"), items("hi-pass:hz", "lo-pass:hz", "pan", "eq:q", "eq:hz", "eq:db", "osc.1:hz", "osc.1:db", "osc.2:hz", "osc.2:db", "osc.3:hz", "osc.3:db", "pitchbend", "modulation", "volume"), colour("white"), fontcolour(127, 63, 63) ; LFO.3:Route
	
	checkbox bounds(.132727273, .198823529, .014545455, .018823529), channel("akai_midimix__knob_1a__read_midi"), shape("circle")
	checkbox bounds(.132727273, .344705882, .014545455, .018823529), channel("akai_midimix__knob_1b__read_midi"), shape("circle")
	checkbox bounds(.132727273, .491764706, .014545455, .018823529), channel("akai_midimix__knob_1c__read_midi"), shape("circle")
	checkbox bounds(.132727273, .597647059, .014545455, .018823529), channel("akai_midimix__button_1a__read_midi"), shape("circle")
	checkbox bounds(.132727273, .668235294, .014545455, .018823529), channel("akai_midimix__button_1b__read_midi"), shape("circle")
	checkbox bounds(.132727273, .931764706, .014545455, .018823529), channel("akai_midimix__slider_1__read_midi"), shape("circle")
	checkbox bounds(.223636364, .198823529, .014545455, .018823529), channel("akai_midimix__knob_2a__read_midi"), shape("circle")
	checkbox bounds(.223636364, .344705882, .014545455, .018823529), channel("akai_midimix__knob_2b__read_midi"), shape("circle")
	checkbox bounds(.223636364, .491764706, .014545455, .018823529), channel("akai_midimix__knob_2c__read_midi"), shape("circle")
	checkbox bounds(.223636364, .597647059, .014545455, .018823529), channel("akai_midimix__button_2a__read_midi"), shape("circle")
	checkbox bounds(.223636364, .668235294, .014545455, .018823529), channel("akai_midimix__button_2b__read_midi"), shape("circle")
	checkbox bounds(.223636364, .931764706, .014545455, .018823529), channel("akai_midimix__slider_2__read_midi"), shape("circle")
	checkbox bounds(.313636364, .198823529, .014545455, .018823529), channel("akai_midimix__knob_3a__read_midi"), shape("circle")
	checkbox bounds(.313636364, .344705882, .014545455, .018823529), channel("akai_midimix__knob_3b__read_midi"), shape("circle")
	checkbox bounds(.313636364, .491764706, .014545455, .018823529), channel("akai_midimix__knob_3c__read_midi"), shape("circle")
	checkbox bounds(.313636364, .597647059, .014545455, .018823529), channel("akai_midimix__button_3a__read_midi"), shape("circle")
	checkbox bounds(.313636364, .668235294, .014545455, .018823529), channel("akai_midimix__button_3b__read_midi"), shape("circle")
	checkbox bounds(.313636364, .931764706, .014545455, .018823529), channel("akai_midimix__slider_3__read_midi"), shape("circle")
	checkbox bounds(.402727273, .198823529, .014545455, .018823529), channel("akai_midimix__knob_4a__read_midi"), shape("circle")
	checkbox bounds(.402727273, .344705882, .014545455, .018823529), channel("akai_midimix__knob_4b__read_midi"), shape("circle")
	checkbox bounds(.402727273, .491764706, .014545455, .018823529), channel("akai_midimix__knob_4c__read_midi"), shape("circle")
	checkbox bounds(.402727273, .597647059, .014545455, .018823529), channel("akai_midimix__button_4a__read_midi"), shape("circle")
	checkbox bounds(.402727273, .668235294, .014545455, .018823529), channel("akai_midimix__button_4b__read_midi"), shape("circle")
	checkbox bounds(.402727273, .931764706, .014545455, .018823529), channel("akai_midimix__slider_4__read_midi"), shape("circle")
	checkbox bounds(.491818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_5a__read_midi"), shape("circle")
	checkbox bounds(.491818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_5b__read_midi"), shape("circle")
	checkbox bounds(.491818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_5c__read_midi"), shape("circle")
	checkbox bounds(.491818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_5a__read_midi"), shape("circle")
	checkbox bounds(.491818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_5b__read_midi"), shape("circle")
	checkbox bounds(.491818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_5__read_midi"), shape("circle")
	checkbox bounds(.581818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_6a__read_midi"), shape("circle")
	checkbox bounds(.581818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_6b__read_midi"), shape("circle")
	checkbox bounds(.581818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_6c__read_midi"), shape("circle")
	checkbox bounds(.581818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_6a__read_midi"), shape("circle")
	checkbox bounds(.581818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_6b__read_midi"), shape("circle")
	checkbox bounds(.581818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_6__read_midi"), shape("circle")
	checkbox bounds(.671818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_7a__read_midi"), shape("circle")
	checkbox bounds(.671818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_7b__read_midi"), shape("circle")
	checkbox bounds(.671818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_7c__read_midi"), shape("circle")
	checkbox bounds(.671818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_7a__read_midi"), shape("circle")
	checkbox bounds(.671818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_7b__read_midi"), shape("circle")
	checkbox bounds(.671818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_7__read_midi"), shape("circle")
	checkbox bounds(.761818182, .198823529, .014545455, .018823529), channel("akai_midimix__knob_8a__read_midi"), shape("circle")
	checkbox bounds(.761818182, .344705882, .014545455, .018823529), channel("akai_midimix__knob_8b__read_midi"), shape("circle")
	checkbox bounds(.761818182, .491764706, .014545455, .018823529), channel("akai_midimix__knob_8c__read_midi"), shape("circle")
	checkbox bounds(.761818182, .597647059, .014545455, .018823529), channel("akai_midimix__button_8a__read_midi"), shape("circle")
	checkbox bounds(.761818182, .668235294, .014545455, .018823529), channel("akai_midimix__button_8b__read_midi"), shape("circle")
	checkbox bounds(.761818182, .931764706, .014545455, .018823529), channel("akai_midimix__slider_8__read_midi"), shape("circle")
	checkbox bounds(.850909091, .931764706, .014545455, .018823529), channel("akai_midimix__slider_9__read_midi"), shape("circle")
}

; M-Audio ProKeys Sono 61
groupbox bounds(0, 850, 1100, 150), plant("M-Audio ProKeys 1") {
    ; Background Image
	image bounds(0, 0, 1, 1), file("overlay--common--m-audio-prokeys.jpg"), shape("sharp")

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
#include "../../../config-akai-midimix.csd-h"
#include "../../../include/definitions.csd-h"
#include "../../../include/opcodes/midi-testing.csd-h"
#include "../../../include/opcodes/read-midi.csd-h"
#include "../../../include/opcodes/variable-logging.csd-h"

#define OSC_2X_5VA # 0 #
#define OSC_2X_8VA # 1 #

#define LFO_SHAPE__SINE             # 1 #
#define LFO_SHAPE__TRIANGLE         # 2 #
#define LFO_SHAPE__SQUARE_BIPOLAR   # 3 #
#define LFO_SHAPE__SQUARE_UNIPOLAR  # 4 #
#define LFO_SHAPE__SAW              # 5 #
#define LFO_SHAPE__SAW_DOWN         # 6 #

#define LFO_ROUTE__HI_PASS_HZ   # 1 #
#define LFO_ROUTE__LO_PASS_HZ   # 2 #
#define LFO_ROUTE__PAN          # 3 #
#define LFO_ROUTE__EQ_Q         # 4 #
#define LFO_ROUTE__EQ_HZ        # 5 #
#define LFO_ROUTE__EQ_DB        # 6 #
#define LFO_ROUTE__OSC_1_HZ     # 7 #
#define LFO_ROUTE__OSC_1_DB     # 8 #
#define LFO_ROUTE__OSC_2_HZ     # 9 #
#define LFO_ROUTE__OSC_2_DB     # 10 #
#define LFO_ROUTE__OSC_3_HZ     # 11 #
#define LFO_ROUTE__OSC_3_DB     # 12 #
#define LFO_ROUTE__PITCHBEND    # 13 #
#define LFO_ROUTE__MODULATION   # 14 #
#define LFO_ROUTE__VOLUME       # 15 #

gi_MidiControlLfoRouteNumbers[] init 128
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_1A_CC] = $LFO_ROUTE__HI_PASS_HZ
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_1B_CC] = $LFO_ROUTE__LO_PASS_HZ
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_1C_CC] = $LFO_ROUTE__PAN
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_2A_CC] = $LFO_ROUTE__EQ_Q
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_2B_CC] = $LFO_ROUTE__EQ_HZ
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_2C_CC] = $LFO_ROUTE__EQ_DB
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_3B_CC] = $LFO_ROUTE__OSC_1_HZ
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_3C_CC] = $LFO_ROUTE__OSC_1_DB
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_4B_CC] = $LFO_ROUTE__OSC_2_HZ
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_4C_CC] = $LFO_ROUTE__OSC_2_DB
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_5A_CC] = $LFO_ROUTE__OSC_3_HZ
gi_MidiControlLfoRouteNumbers[$AKAI_MIDIMIX__KNOB_5C_CC] = $LFO_ROUTE__OSC_3_DB
gi_MidiControlLfoRouteNumbers[1]                         = $LFO_ROUTE__MODULATION
gi_MidiControlLfoRouteNumbers[7]                         = $LFO_ROUTE__VOLUME

gk_Lfo1Route init 0
gk_Lfo2Route init 0
gk_Lfo3Route init 0

opcode udo__add_control_lfo, k, kii
    k_signal, i_lfo_number, i_controller_number xin
    
    if (-1 != i_controller_number) then
        k_lfo_db init 1
        k_lfo_hz init 0
        k_lfo_shape init 0
        if (1 == i_lfo_number) then
            k_lfo_db port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_6C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
            k_lfo_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_6B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
            k_lfo_shape chnget "akai_midimix__lfo_1_shape"
        elseif (2 == i_lfo_number) then
            k_lfo_db port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_7C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
            k_lfo_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_7B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
            k_lfo_shape chnget "akai_midimix__lfo_2_shape"
        elseif (3 == i_lfo_number) then
            k_lfo_db port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_8C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
            k_lfo_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_8B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
            k_lfo_shape chnget "akai_midimix__lfo_3_shape"
        endif
        if ($LFO_SHAPE__SINE == k_lfo_shape) then
            k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SINE - 1
        elseif ($LFO_SHAPE__TRIANGLE == k_lfo_shape) then
            k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__TRIANGLE - 1
        elseif ($LFO_SHAPE__SQUARE_BIPOLAR == k_lfo_shape) then
            k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SQUARE_BIPOLAR - 1
        elseif ($LFO_SHAPE__SQUARE_UNIPOLAR == k_lfo_shape) then
            k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SQUARE_UNIPOLAR - 1
        elseif ($LFO_SHAPE__SAW == k_lfo_shape) then
            k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SAW - 1
        elseif ($LFO_SHAPE__SAW_DOWN == k_lfo_shape) then
            k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SAW_DOWN - 1
        endif
    
        i_min_value = gi_MidiControlRanges[i_controller_number][0]
        i_max_value = gi_MidiControlRanges[i_controller_number][1]
        i_value_range = i_max_value - i_min_value
        k_lfo_signal *= i_value_range
        
        k_signal += k_lfo_signal
        k_signal max k_signal, i_min_value
        k_signal min k_signal, i_max_value
    endif

    xout k_signal
endop

opcode udo__add_pitchbend_lfo, k, ki
    k_signal, i_lfo_number xin

    k_lfo_db init 1
    k_lfo_hz init 0
    k_lfo_shape init 0
    if (1 == i_lfo_number) then
        k_lfo_db port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_6C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        k_lfo_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_6B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        k_lfo_shape chnget "akai_midimix__lfo_1_shape"
    elseif (2 == i_lfo_number) then
        k_lfo_db port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_7C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        k_lfo_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_7B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        k_lfo_shape chnget "akai_midimix__lfo_2_shape"
    elseif (3 == i_lfo_number) then
        k_lfo_db port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_8C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        k_lfo_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_8B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        k_lfo_shape chnget "akai_midimix__lfo_3_shape"
    endif
    if ($LFO_SHAPE__SINE == k_lfo_shape) then
        k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SINE - 1
    elseif ($LFO_SHAPE__TRIANGLE == k_lfo_shape) then
        k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__TRIANGLE - 1
    elseif ($LFO_SHAPE__SQUARE_BIPOLAR == k_lfo_shape) then
        k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SQUARE_BIPOLAR - 1
    elseif ($LFO_SHAPE__SQUARE_UNIPOLAR == k_lfo_shape) then
        k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SQUARE_UNIPOLAR - 1
    elseif ($LFO_SHAPE__SAW == k_lfo_shape) then
        k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SAW - 1
    elseif ($LFO_SHAPE__SAW_DOWN == k_lfo_shape) then
        k_lfo_signal lfo k_lfo_db, k_lfo_hz, $LFO_SHAPE__SAW_DOWN - 1
    endif

    i_min_value = -2
    i_max_value = 2
    i_value_range = i_max_value - i_min_value
    k_lfo_signal *= i_value_range
    
    k_signal += k_lfo_signal
    k_signal max k_signal, i_min_value
    k_signal min k_signal, i_max_value

    xout k_signal
endop

opcode udo__add_lfos, k, kj
    k_signal, i_controller_number xin
    i_midi_control_lfo_route_number init -1
    if (-1 != i_controller_number) then
        i_midi_control_lfo_route_number = gi_MidiControlLfoRouteNumbers[i_controller_number]
    endif
    print i_midi_control_lfo_route_number

    k_lfo_1_is_on = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_6A_CC]
    if ($ON == k_lfo_1_is_on) then
        if (i_midi_control_lfo_route_number == gk_Lfo1Route) then
            k_signal udo__add_control_lfo k_signal, 1, i_controller_number
        elseif ($LFO_ROUTE__PITCHBEND == gk_Lfo1Route) then
            k_signal udo__add_pitchbend_lfo k_signal, 1
        endif
    endif
/*
    k_lfo_2_is_on = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_7A_CC]
    if ($ON == k_lfo_2_is_on) then
        if (i_midi_control_lfo_route_number == gk_Lfo2Route) then
            k_signal udo__add_control_lfo k_signal, 2, i_controller_number
        elseif ($LFO_ROUTE__PITCHBEND == gk_Lfo2Route) then
            k_signal udo__add_pitchbend_lfo k_signal, 2
        endif
    endif

    k_lfo_3_is_on = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_8A_CC]
    if ($ON == k_lfo_3_is_on) then
        if (i_midi_control_lfo_route_number == gk_Lfo3Route) then
            k_signal udo__add_control_lfo k_signal, 3, i_controller_number
        elseif ($LFO_ROUTE__PITCHBEND == gk_Lfo3Route) then
            k_signal udo__add_pitchbend_lfo k_signal, 3
        endif
    endif
*/
    xout k_signal
endop

massign 0, $MAIN_INSTRUMENT_NUMBER

gi_NoteId = -1

ga_InstrumentOutput init 0

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
        i_ udo__set_midi_control_defaults

        i_ udo__add_midi_pitchbend "m_audio_prokeys__wheel_1"
        i_ udo__add_midi_control 1, "m_audio_prokeys__wheel_2"
        i_ udo__add_midi_control 7, "m_audio_prokeys__knob", 0, 1, 1

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_1A_CC, "akai_midimix__knob_1a", 10, $SCALED_TO_128(9990), 0 ; Hi-Pass:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_1B_CC, "akai_midimix__knob_1b", 10, $SCALED_TO_128(9990), 9990 ; Lo-Pass:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_1C_CC, "akai_midimix__knob_1c", -1, 1, 0 ; Pan
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_1A_CC, "akai_midimix__button_1a" ; Hi-Pass:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_1B_CC, "akai_midimix__button_1b" ; Lo-Pass:On/Off
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_1_CC, "akai_midimix__slider_1", 0, 127, 0 ; Pan:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_2A_CC, "akai_midimix__knob_2a", 0, 1, 0 ; EQ:Q
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_2B_CC, "akai_midimix__knob_2b", 20, $SCALED_TO_128(11980), 1000 ; EQ:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_2C_CC, "akai_midimix__knob_2c", -1, 1, 0 ; EQ:dB
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_2A_CC, "akai_midimix__button_2a" ; EQ:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_2B_CC, "akai_midimix__button_2b" ; EQ:2x
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_2_CC, "akai_midimix__slider_2", 0, 127, 0 ; EQ:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_3A_CC, "akai_midimix__knob_3a", .01, 10, 1 ; A
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_3B_CC, "akai_midimix__knob_3b", -1, 1, 0 ; Osc.1:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_3C_CC, "akai_midimix__knob_3c", 0, 1, 1 ; Osc.1:dB
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_3A_CC, "akai_midimix__button_3a", $ON ; Osc.1:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_3B_CC, "akai_midimix__button_3b";, $ON ; Osc.1:2x
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_3_CC, "akai_midimix__slider_3", 0, 127, 0 ; Osc.1:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_4A_CC, "akai_midimix__knob_4a", .01, 10, 1 ; D
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_4B_CC, "akai_midimix__knob_4b", -1, 1, 0 ; Osc.2:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_4C_CC, "akai_midimix__knob_4c", 0, 1, 1 ; Osc.2:dB
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_4A_CC, "akai_midimix__button_4a";, $ON ; Osc.2:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_4B_CC, "akai_midimix__button_4b";, $ON ; Osc.2:2x
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_4_CC, "akai_midimix__slider_4", 0, 127, 0 ; Osc.2:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_5A_CC, "akai_midimix__knob_5a", 0, 1, .5 ; S
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_5B_CC, "akai_midimix__knob_5b", -1, 1, 0 ; Osc.3:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_5C_CC, "akai_midimix__knob_5c", 0, 1, 1 ; Osc.3:dB
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_5A_CC, "akai_midimix__button_5a";, $ON ; Osc.3:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_5B_CC, "akai_midimix__button_5b";, $ON ; Osc.3:2x
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_5_CC, "akai_midimix__slider_5", 0, 127, 0 ; Osc.3:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_6A_CC, "akai_midimix__knob_6a", .01, 10, 1 ; R
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_6B_CC, "akai_midimix__knob_6b", 0, 10, 0 ; LFO.1:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_6C_CC, "akai_midimix__knob_6c", 0, 1, 1 ; LFO.1:dB
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_6A_CC, "akai_midimix__button_6a", $ON ; LFO.1:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_6B_CC, "akai_midimix__button_6b";, $ON ; 2x:5va/8va
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_6_CC, "akai_midimix__slider_6", 0, 127, 0 ; LFO.1:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_7A_CC, "akai_midimix__knob_7a", .5, 1, .75 ; Reverb:Size
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_7B_CC, "akai_midimix__knob_7b", 0, 10, 0 ; LFO.2:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_7C_CC, "akai_midimix__knob_7c", 0, 1, 1 ; LFO.2:dB
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_7A_CC, "akai_midimix__button_7a" ; LFO.2:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_7B_CC, "akai_midimix__button_7b" ; Log Values
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_7_CC, "akai_midimix__slider_7", 0, 127, 0 ; LFO.2:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_8A_CC, "akai_midimix__knob_8a", 0, 48000, 48000 ; Reverb:Cutoff-Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_8B_CC, "akai_midimix__knob_8b", 0, 10, 0 ; LFO.3:Hz
        i_ udo__add_midi_control $AKAI_MIDIMIX__KNOB_8C_CC, "akai_midimix__knob_8c", 0, 1, 1 ; LFO.3:dB
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_8A_CC, "akai_midimix__button_8a" ; LFO.3:On/Off
        i_ udo__add_midi_switch $AKAI_MIDIMIX__BUTTON_8B_CC, "akai_midimix__button_8b" ; Toggle Read MIDI
        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_8_CC, "akai_midimix__slider_8", 0, 127, 0 ; LFO.2:Randomize

        i_ udo__add_midi_control $AKAI_MIDIMIX__SLIDER_9_CC, "akai_midimix__slider_9", 0, 1, 1 ; Reverb:dB

        i_ udo__update_midi_switches

        gk_Lfo1Route chnget "akai_midimix__lfo_1_route"
        gk_Lfo2Route chnget "akai_midimix__lfo_2_route"
        gk_Lfo3Route chnget "akai_midimix__lfo_3_route"

        ga_InstrumentOutput = 0

        goto ENDIN
    endif

;===============================================================================

    ; Pitch
	;---------------------------------------------------------------------------
	; k_pitchbend  (units: cents/100) [range: -2,2]
	k_pitchbend init 0
    k_pitchbend port -2 + (gk_MidiPitchBend / 4096), $CONTROLLER_INPUT_PORTAMENTO_TIME
    ;k_pitchbend udo__add_lfos k_pitchbend    

	; k_pitch  (units: cps)
	k_pitch_midi_note_number = p4 + k_pitchbend
	k_pitch = cpsmidinn(k_pitch_midi_note_number)

    ; Common Oscillator Variables
	;---------------------------------------------------------------------------
	a_osc = 0
	k_osc_2x_interval = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_6B_CC]
	
	; Oscillator 1
	;---------------------------------------------------------------------------
    k_osc_1_is_on = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_3A_CC]
    if ($ON == k_osc_1_is_on) then
        k_osc_1_hz = gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_3B_CC]
        ;k_osc_1_hz udo__add_lfos k_osc_1_hz, $AKAI_MIDIMIX__KNOB_3B_CC
        k_osc_1_db = gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_3C_CC]
        k_osc_1_db udo__add_lfos k_osc_1_db, $AKAI_MIDIMIX__KNOB_3C_CC
        k_osc_1_is_2x = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_3B_CC]
        k_osc_1_shape chnget "akai_midimix__osc_1_shape"
        
        k_osc_1_hz_1 = k_pitch + k_osc_1_hz
        a_ = 0
        if (1 == k_osc_1_shape) then
            a_ poscil3 k_osc_1_db, k_osc_1_hz_1
        elseif (2 == k_osc_1_shape) then
            a_ vco2 k_osc_1_db, k_osc_1_hz_1, 12
        elseif (3 == k_osc_1_shape) then
            a_ vco2 k_osc_1_db, k_osc_1_hz_1, 10
        elseif (4 == k_osc_1_shape) then
            a_ vco2 k_osc_1_db, k_osc_1_hz_1, 8
        elseif (5 == k_osc_1_shape) then
            a_ vco2 k_osc_1_db, k_osc_1_hz_1, 6
        endif
        a_osc += a_
        if ($ON == k_osc_1_is_2x) then
            k_osc_1_hz_2 = k_pitch
            if ($OSC_2X_5VA == k_osc_2x_interval) then
                k_osc_1_hz_2 *= 1.5
            elseif ($OSC_2X_8VA == k_osc_2x_interval) then
                k_osc_1_hz_2 *= 2
            endif
            k_osc_1_hz_2 += k_osc_1_hz
            a_ = 0
            if (1 == k_osc_1_shape) then
                a_ poscil3 k_osc_1_db, k_osc_1_hz_2
            elseif (2 == k_osc_1_shape) then
                a_ vco2 k_osc_1_db, k_osc_1_hz_2, 12
            elseif (3 == k_osc_1_shape) then
                a_ vco2 k_osc_1_db, k_osc_1_hz_2, 10
            elseif (4 == k_osc_1_shape) then
                a_ vco2 k_osc_1_db, k_osc_1_hz_2, 8
            elseif (5 == k_osc_1_shape) then
                a_ vco2 k_osc_1_db, k_osc_1_hz_2, 6
            endif
            a_osc += a_
        endif
    endif

	; Oscillator 2
	;---------------------------------------------------------------------------
    k_osc_2_is_on = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_4A_CC]
    if ($ON == k_osc_2_is_on) then
        k_osc_2_hz = gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_4B_CC]
        ;k_osc_2_hz udo__add_lfos k_osc_2_hz, $AKAI_MIDIMIX__KNOB_4B_CC
        k_osc_2_db = gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_4C_CC]
        ;k_osc_2_db udo__add_lfos k_osc_2_db, $AKAI_MIDIMIX__KNOB_4C_CC
        k_osc_2_is_2x = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_4B_CC]
        k_osc_2_shape chnget "akai_midimix__osc_2_shape"

        k_osc_2_hz_1 = k_pitch + k_osc_2_hz
        a_ = 0
        if (1 == k_osc_2_shape) then
            a_ poscil3 k_osc_2_db, k_osc_2_hz_1
        elseif (2 == k_osc_2_shape) then
            a_ vco2 k_osc_2_db, k_osc_2_hz_1, 12
        elseif (3 == k_osc_2_shape) then
            a_ vco2 k_osc_2_db, k_osc_2_hz_1, 10
        elseif (4 == k_osc_2_shape) then
            a_ vco2 k_osc_2_db, k_osc_2_hz_1, 8
        elseif (5 == k_osc_2_shape) then
            a_ vco2 k_osc_2_db, k_osc_2_hz_1, 6
        endif
        a_osc += a_
        if ($ON == k_osc_2_is_2x) then
            k_osc_2_hz_2 = k_pitch
            if ($OSC_2X_5VA == k_osc_2x_interval) then
                k_osc_2_hz_2 *= 1.5
            elseif ($OSC_2X_8VA == k_osc_2x_interval) then
                k_osc_2_hz_2 *= 2
            endif
            k_osc_2_hz_2 += k_osc_2_hz
            a_ = 0
            if (1 == k_osc_2_shape) then
                a_ poscil3 k_osc_2_db, k_osc_2_hz_2
            elseif (2 == k_osc_2_shape) then
                a_ vco2 k_osc_2_db, k_osc_2_hz_2, 12
            elseif (3 == k_osc_2_shape) then
                a_ vco2 k_osc_2_db, k_osc_2_hz_2, 10
            elseif (4 == k_osc_2_shape) then
                a_ vco2 k_osc_2_db, k_osc_2_hz_2, 8
            elseif (5 == k_osc_2_shape) then
                a_ vco2 k_osc_2_db, k_osc_2_hz_2, 6
            endif
            a_osc += a_
        endif
    endif

	; Oscillator 3
	;---------------------------------------------------------------------------
    k_osc_3_is_on = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_5A_CC]
    if ($ON == k_osc_3_is_on) then
        k_osc_3_hz = gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_5B_CC]
        ;k_osc_3_hz udo__add_lfos k_osc_3_hz, $AKAI_MIDIMIX__KNOB_5B_CC
        k_osc_3_db = gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_5C_CC]
        ;k_osc_3_db udo__add_lfos k_osc_3_db, $AKAI_MIDIMIX__KNOB_5C_CC
        k_osc_3_is_2x = gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_5B_CC]
        k_osc_3_shape chnget "akai_midimix__osc_3_shape"

        k_osc_3_hz_1 = k_pitch + k_osc_3_hz
        a_ = 0
        if (1 == k_osc_3_shape) then
            a_ poscil3 k_osc_3_db, k_osc_3_hz_1
        elseif (2 == k_osc_3_shape) then
            a_ vco2 k_osc_3_db, k_osc_3_hz_1, 12
        elseif (3 == k_osc_3_shape) then
            a_ vco2 k_osc_3_db, k_osc_3_hz_1, 10
        elseif (4 == k_osc_3_shape) then
            a_ vco2 k_osc_3_db, k_osc_3_hz_1, 8
        elseif (5 == k_osc_3_shape) then
            a_ vco2 k_osc_3_db, k_osc_3_hz_1, 6
        endif
        a_osc += a_
        if ($ON == k_osc_3_is_2x) then
            k_osc_3_hz_2 = k_pitch
            if ($OSC_2X_5VA == k_osc_2x_interval) then
                k_osc_3_hz_2 *= 1.5
            elseif ($OSC_2X_8VA == k_osc_2x_interval) then
                k_osc_3_hz_2 *= 2
            endif
            k_osc_3_hz_2 += k_osc_3_hz
            a_ = 0
            if (1 == k_osc_3_shape) then
                a_ poscil3 k_osc_3_db, k_osc_3_hz_2
            elseif (2 == k_osc_3_shape) then
                a_ vco2 k_osc_3_db, k_osc_3_hz_2, 12
            elseif (3 == k_osc_3_shape) then
                a_ vco2 k_osc_3_db, k_osc_3_hz_2, 10
            elseif (4 == k_osc_3_shape) then
                a_ vco2 k_osc_3_db, k_osc_3_hz_2, 8
            elseif (5 == k_osc_3_shape) then
                a_ vco2 k_osc_3_db, k_osc_3_hz_2, 6
            endif
            a_osc += a_
        endif
    endif

	; k_out_modulation_wheel  [range: 0,127]
	;---------------------------------------------------------------------------
	k_modulation_wheel init 0
	k_modulation_wheel port gk_MidiControlValues[1], $CONTROLLER_INPUT_PORTAMENTO_TIME
	;k_modulation_wheel udo__add_lfos k_modulation_wheel, 1

	; k_out_volume  [range: 0,1]
	;---------------------------------------------------------------------------
	k_volume init 0
	k_volume port gk_MidiControlValues[7], $CONTROLLER_INPUT_PORTAMENTO_TIME
	;k_volume udo__add_lfos k_volume, 7

	; k_volume_envelope  [range: 0,1]
	;---------------------------------------------------------------------------
	i_volume_envelope_attack_time = i(gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_3A_CC])
	i_volume_envelope_decay_time = i(gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_4A_CC])
	i_volume_envelope_sustain_level = i(gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_5A_CC])
	i_volume_envelope_release_time = i(gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_6A_CC])
	a_volume_envelope madsr i_volume_envelope_attack_time, i_volume_envelope_decay_time, i_volume_envelope_sustain_level, i_volume_envelope_release_time

;===============================================================================

	; Audio Output
	;---------------------------------------------------------------------------
	a_volume = k_volume * a_volume_envelope
	a_out = a_volume * a_osc
	ga_InstrumentOutput += a_out

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
ENDIN:
endin

instr instrument_output
    a_out = ga_InstrumentOutput

    ; Hi-Pass
	;---------------------------------------------------------------------------
	if ($ON == gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_1A_CC]) then
        k_hi_pass_hz init 0
        k_hi_pass_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_1A_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        ;k_hi_pass_hz udo__add_lfos k_hi_pass_hz, $AKAI_MIDIMIX__KNOB_1A_CC
        a_out butterhp a_out, k_hi_pass_hz
    endif

    ; Lo-Pass
	;---------------------------------------------------------------------------
	if ($ON == gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_1B_CC]) then
        k_lo_pass_hz init 0
        k_lo_pass_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_1B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        ;k_lo_pass_hz udo__add_lfos k_lo_pass_hz, $AKAI_MIDIMIX__KNOB_1B_CC
        a_out butterlp a_out, k_lo_pass_hz
    endif
    
    ; EQ
	;---------------------------------------------------------------------------
    if ($ON == gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_2A_CC]) then
        k_eq_q init 4800
        k_eq_q port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_2A_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        ;k_eq_q udo__add_lfos k_eq_q, $AKAI_MIDIMIX__KNOB_2A_CC
        k_eq_hz init 24000
        k_eq_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_2B_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        ;k_eq_hz udo__add_lfos k_eq_hz, $AKAI_MIDIMIX__KNOB_2B_CC
        k_eq_db init 0
        k_eq_db port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_2C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
        ;k_eq_db udo__add_lfos k_eq_db, $AKAI_MIDIMIX__KNOB_2C_CC
        a_out pareq a_out, k_eq_hz, k_eq_db + 1, 1 - k_eq_q, 0
        if ($ON == gk_MidiControlValues[$AKAI_MIDIMIX__BUTTON_2B_CC]) then
            a_out pareq a_out, k_eq_hz, k_eq_db + 1, 1 - k_eq_q, 0
        endif
    endif

    ; Lower volume as number of notes increases.
	;---------------------------------------------------------------------------
	k_polyphony_scaling init 1
	k_note_count active $MAIN_INSTRUMENT_NUMBER - 1
	k_polyphony_scaling port 1 / sqrt(k_note_count), $CONTROLLER_INPUT_PORTAMENTO_TIME
	a_out *= k_polyphony_scaling
	
	; Pan
	;---------------------------------------------------------------------------
	k_pan init 0
    k_pan port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_1C_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
    ;k_pan udo__add_lfos k_pan, $AKAI_MIDIMIX__KNOB_1C_CC
    a_out_left, a_out_right pan2 a_out, (k_pan + 1) / 2

    ; Reverb
	;---------------------------------------------------------------------------
	k_reverb_size init 0.75
	k_reverb_size port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_7A_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
	k_reverb_cutoff_hz init 48000
	k_reverb_cutoff_hz port gk_MidiControlValues[$AKAI_MIDIMIX__KNOB_8A_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
	k_reverb_db init 0
	k_reverb_db port gk_MidiControlValues[$AKAI_MIDIMIX__SLIDER_9_CC], $CONTROLLER_INPUT_PORTAMENTO_TIME
    a_reverb_left, a_reverb_right reverbsc a_out_left, a_out_right, k_reverb_size, k_reverb_cutoff_hz
    
	; Audio Output
	;---------------------------------------------------------------------------
	outs a_out_left + (k_reverb_db * a_reverb_left), a_out_right + (k_reverb_db * a_reverb_right)
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

f0 999999999

i1 0 -1
i"instrument_output" 0 -1
i"set_midi_read_defaults" 0  0
;i"trace_midi_input" 0 -1

</CsScore>
</CsoundSynthesizer>
