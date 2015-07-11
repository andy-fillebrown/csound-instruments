<Cabbage>
form size(1100, 1000), caption("Akai MIDIMix"), pluginID("akaimm00")

; Akai MIDIMix
groupbox bounds(0, 0, 1100, 850), plant("Akai MIDIMix 00") {
    ; Background Image
	image bounds(0, 0, 1, 1), file("template--akai-midimix.jpg"), shape("sharp")

	; Column 1
	rslider  bounds(0.102727273, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_1a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.102727273, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_1b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.102727273, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_1c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.118181818, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_1a")
	checkbox bounds(0.118181818, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_1b")
	vslider  bounds(0.102727273, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_1"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.132727273, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_1a__read_midi"),   shape("circle")
	checkbox bounds(0.132727273, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_1b__read_midi"),   shape("circle")
	checkbox bounds(0.132727273, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_1c__read_midi"),   shape("circle")
	checkbox bounds(0.132727273, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_1a__read_midi"), shape("circle")
	checkbox bounds(0.132727273, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_1b__read_midi"), shape("circle")
	checkbox bounds(0.132727273, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_1__read_midi"),  shape("circle")
	
	; Column 2
	rslider  bounds(0.194545455, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_2a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.194545455, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_2b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.194545455, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_2c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.210000000, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_2a")
	checkbox bounds(0.210000000, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_2b")
	vslider  bounds(0.193636364, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_2"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.223636364, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_2a__read_midi"),   shape("circle")
	checkbox bounds(0.223636364, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_2b__read_midi"),   shape("circle")
	checkbox bounds(0.223636364, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_2c__read_midi"),   shape("circle")
	checkbox bounds(0.223636364, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_2a__read_midi"), shape("circle")
	checkbox bounds(0.223636364, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_2b__read_midi"), shape("circle")
	checkbox bounds(0.223636364, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_2__read_midi"),  shape("circle")
	
	; Column 3
	rslider  bounds(0.284545455, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_3a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.284545455, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_3b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.284545455, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_3c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.300000000, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_3a")
	checkbox bounds(0.300000000, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_3b")
	vslider  bounds(0.283636364, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_3"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.313636364, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_3a__read_midi"),   shape("circle")
	checkbox bounds(0.313636364, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_3b__read_midi"),   shape("circle")
	checkbox bounds(0.313636364, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_3c__read_midi"),   shape("circle")
	checkbox bounds(0.313636364, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_3a__read_midi"), shape("circle")
	checkbox bounds(0.313636364, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_3b__read_midi"), shape("circle")
	checkbox bounds(0.313636364, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_3__read_midi"),  shape("circle")
	
	; Column 4
	rslider  bounds(0.373636364, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_4a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.373636364, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_4b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.373636364, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_4c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.389090909, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_4a")
	checkbox bounds(0.389090909, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_4b")
	vslider  bounds(0.372727273, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_4"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.402727273, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_4a__read_midi"),   shape("circle")
	checkbox bounds(0.402727273, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_4b__read_midi"),   shape("circle")
	checkbox bounds(0.402727273, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_4c__read_midi"),   shape("circle")
	checkbox bounds(0.402727273, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_4a__read_midi"), shape("circle")
	checkbox bounds(0.402727273, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_4b__read_midi"), shape("circle")
	checkbox bounds(0.402727273, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_4__read_midi"),  shape("circle")
	
	; Column 5
	rslider  bounds(0.462727273, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_5a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.462727273, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_5b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.462727273, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_5c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.478181818, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_5a")
	checkbox bounds(0.478181818, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_5b")
	vslider  bounds(0.461818182, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_5"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.491818182, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_5a__read_midi"),   shape("circle")
	checkbox bounds(0.491818182, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_5b__read_midi"),   shape("circle")
	checkbox bounds(0.491818182, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_5c__read_midi"),   shape("circle")
	checkbox bounds(0.491818182, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_5a__read_midi"), shape("circle")
	checkbox bounds(0.491818182, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_5b__read_midi"), shape("circle")
	checkbox bounds(0.491818182, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_5__read_midi"),  shape("circle")
	
	; Column 6
	rslider  bounds(0.552727273, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_6a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.552727273, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_6b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.552727273, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_6c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.568181818, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_6a")
	checkbox bounds(0.568181818, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_6b")
	vslider  bounds(0.551818182, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_6"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.581818182, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_6a__read_midi"),   shape("circle")
	checkbox bounds(0.581818182, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_6b__read_midi"),   shape("circle")
	checkbox bounds(0.581818182, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_6c__read_midi"),   shape("circle")
	checkbox bounds(0.581818182, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_6a__read_midi"), shape("circle")
	checkbox bounds(0.581818182, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_6b__read_midi"), shape("circle")
	checkbox bounds(0.581818182, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_6__read_midi"),  shape("circle")
	
	; Column 7
	rslider  bounds(0.642727273, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_7a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.642727273, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_7b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.642727273, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_7c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.658181818, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_7a")
	checkbox bounds(0.658181818, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_7b")
	vslider  bounds(0.641818182, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_7"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.671818182, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_7a__read_midi"),   shape("circle")
	checkbox bounds(0.671818182, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_7b__read_midi"),   shape("circle")
	checkbox bounds(0.671818182, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_7c__read_midi"),   shape("circle")
	checkbox bounds(0.671818182, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_7a__read_midi"), shape("circle")
	checkbox bounds(0.671818182, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_7b__read_midi"), shape("circle")
	checkbox bounds(0.671818182, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_7__read_midi"),  shape("circle")
	
	; Column 8
	rslider  bounds(0.732727273, 0.115294118, 0.072727273, 0.094117647), channel("akai_midimix__knob_8a"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.732727273, 0.261176471, 0.072727273, 0.094117647), channel("akai_midimix__knob_8b"),   range(0, 127, 0, 1, 1)
	rslider  bounds(0.732727273, 0.408235294, 0.072727273, 0.094117647), channel("akai_midimix__knob_8c"),   range(0, 127, 0, 1, 1)
	checkbox bounds(0.748181818, 0.577647059, 0.043636364, 0.030588235), channel("akai_midimix__button_8a")
	checkbox bounds(0.748181818, 0.648235294, 0.043636364, 0.030588235), channel("akai_midimix__button_8b")
	vslider  bounds(0.731818182, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_8"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.761818182, 0.198823529, 0.014545455, 0.018823529), channel("akai_midimix__knob_8a__read_midi"),   shape("circle")
	checkbox bounds(0.761818182, 0.344705882, 0.014545455, 0.018823529), channel("akai_midimix__knob_8b__read_midi"),   shape("circle")
	checkbox bounds(0.761818182, 0.491764706, 0.014545455, 0.018823529), channel("akai_midimix__knob_8c__read_midi"),   shape("circle")
	checkbox bounds(0.761818182, 0.597647059, 0.014545455, 0.018823529), channel("akai_midimix__button_8a__read_midi"), shape("circle")
	checkbox bounds(0.761818182, 0.668235294, 0.014545455, 0.018823529), channel("akai_midimix__button_8b__read_midi"), shape("circle")
	checkbox bounds(0.761818182, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_8__read_midi"),  shape("circle")
	
	; Column 9
	vslider  bounds(0.820909091, 0.690588235, 0.074545455, 0.247058824), channel("akai_midimix__slider_9"),  range(0, 127, 0, 1, 1)
	checkbox bounds(0.850909091, 0.931764706, 0.014545455, 0.018823529), channel("akai_midimix__slider_9__read_midi"),  shape("circle")
}

; M-Audio ProKeys Sono 61
groupbox bounds(0, 850, 1100, 150), plant("M-Audio ProKeys 00") {
    ; Background Image
	image bounds(0, 0, 1, 1), file("template--m-audio-prokeys.jpg"), shape("sharp")

    ; Controls
    keyboard bounds(0.08000, 0.30000, 0.54725, 0.60000)
    vslider  bounds(0.00200, 0.12500, 0.10000, 0.78000), channel("maudio_prokeys__slider_1"), range(0, 8191, 4095, 1, 1)
    vslider  bounds(0.03175, 0.12500, 0.10000, 0.78000), channel("maudio_prokeys__slider_2"), range(0,  127,    0, 1, 1)
    rslider  bounds(0.21500, 0.00000, 0.25000, 0.25000), channel("maudio_prokeys__knob"),     range(0,  127,    0, 1, 1)
	checkbox bounds(0.020909091, 0.866666667, 0.014545455, 0.106666667), channel("maudio_prokeys__slider_1__read_midi"), shape("circle")
	checkbox bounds(0.050000000, 0.866666667, 0.014545455, 0.106666667), channel("maudio_prokeys__slider_2__read_midi"), shape("circle")
	checkbox bounds(0.223636364, 0.186666667, 0.014545455, 0.106666667), channel("maudio_prokeys__knob__read_midi"),     shape("circle")
}

groupbox bounds(700, 875, 375, 113), plant("Csound Output 00"), colour("white") {
    csoundoutput bounds(0, 0, 1, 1)
}

</Cabbage>
<CsoundSynthesizer>
<CsOptions>

-n -d -+rtmidi=NULL -M0 --midi-key=4 --midi-velocity-amp=5

</CsOptions>
<CsInstruments>

#include "../../../config.csd-h"
#include "../../../config-akai-midimix.csd-h"
#include "../../../include/variable-logging-opcodes.csd-h"

gi_NoteId = 1


opcode udo__read_cc, k, iS
    i_cc_number, S_channel xin
    S_channel__read_midi strcat S_channel, "__read_midi"
    k_read_midi chnget S_channel__read_midi
    if (1 == k_read_midi) then
    	k_cc_midi midictrl i_cc_number
    	chnset k_cc_midi, S_channel
    endif
	k_cc_channel chnget S_channel
	k_cc_value port k_cc_channel, 0.05
    xout k_cc_value
endop


instr 1
	; k_pitchbend  (units: cents/100) [range: -2,2]
	;===========================================================================
	#include "../../../include/read-pitchbend.csd-h"

	; k_out_pitch  (units: cps)
	;===========================================================================
	k_pitch_midi_note_number init p4
	k_out_pitch_midi_note_number = k_pitch_midi_note_number + k_pitchbend
	k_out_pitch = cpsmidinn(k_out_pitch_midi_note_number)

	; k_out_modulation_wheel  [range: 0,1]
	;===========================================================================
	#include "../../../include/read-modulation-wheel.csd-h"

	; k_out_volume  [range: 0,1]
	;===========================================================================
	#include "../../../include/read-volume.csd-h"
	
	; k_volume_envelope  [range: 0,1]
	;===========================================================================
	i_volume_envelope_attack_time = 1 ; chnget "volume_envelope_attack_time"
	i_volume_envelope_decay_time chnget "volume_envelope_decay_time"
	i_volume_envelope_sustain_level chnget "volume_envelope_sustain_level"
	i_volume_envelope_release_time = 10000 ; chnget "volume_envelope_release_time"
	k_volume_envelope madsr i_volume_envelope_attack_time, i_volume_envelope_decay_time, i_volume_envelope_sustain_level, i_volume_envelope_release_time
	
	; Akai MIDIMix Values
	;===========================================================================
	; Strip 1
	k_knob_1a udo__read_cc $AKAI_MIDIMIX__KNOB_1A_CC, "akai_midimix__knob_1a"
	k_knob_1b udo__read_cc $AKAI_MIDIMIX__KNOB_1B_CC, "akai_midimix__knob_1b"
	k_knob_1c udo__read_cc $AKAI_MIDIMIX__KNOB_1C_CC, "akai_midimix__knob_1c"
	k_button_1a udo__read_cc $AKAI_MIDIMIX__BUTTON_1A_CC, "akai_midimix__button_1a"
	k_button_1b udo__read_cc $AKAI_MIDIMIX__BUTTON_1B_CC, "akai_midimix__button_1b"
	k_slider_1 udo__read_cc $AKAI_MIDIMIX__SLIDER_1_CC, "akai_midimix__slider_1"
	
	; Strip 2
	k_knob_2a udo__read_cc $AKAI_MIDIMIX__KNOB_2A_CC, "akai_midimix__knob_2a"
	k_knob_2b udo__read_cc $AKAI_MIDIMIX__KNOB_2B_CC, "akai_midimix__knob_2b"
	k_knob_2c udo__read_cc $AKAI_MIDIMIX__KNOB_2C_CC, "akai_midimix__knob_2c"
	k_button_2a udo__read_cc $AKAI_MIDIMIX__BUTTON_2A_CC, "akai_midimix__button_2a"
	k_button_2b udo__read_cc $AKAI_MIDIMIX__BUTTON_2B_CC, "akai_midimix__button_2b"
	k_slider_2 udo__read_cc $AKAI_MIDIMIX__SLIDER_2_CC, "akai_midimix__slider_2"
	
	; Strip 3
	k_knob_3a udo__read_cc $AKAI_MIDIMIX__KNOB_3A_CC, "akai_midimix__knob_3a"
	k_knob_3b udo__read_cc $AKAI_MIDIMIX__KNOB_3B_CC, "akai_midimix__knob_3b"
	k_knob_3c udo__read_cc $AKAI_MIDIMIX__KNOB_3C_CC, "akai_midimix__knob_3c"
	k_button_3a udo__read_cc $AKAI_MIDIMIX__BUTTON_3A_CC, "akai_midimix__button_3a"
	k_button_3b udo__read_cc $AKAI_MIDIMIX__BUTTON_3B_CC, "akai_midimix__button_3b"
	k_slider_3 udo__read_cc $AKAI_MIDIMIX__SLIDER_3_CC, "akai_midimix__slider_3"
	
	; Strip 4
	k_knob_4a udo__read_cc $AKAI_MIDIMIX__KNOB_4A_CC, "akai_midimix__knob_4a"
	k_knob_4b udo__read_cc $AKAI_MIDIMIX__KNOB_4B_CC, "akai_midimix__knob_4b"
	k_knob_4c udo__read_cc $AKAI_MIDIMIX__KNOB_4C_CC, "akai_midimix__knob_4c"
	k_button_4a udo__read_cc $AKAI_MIDIMIX__BUTTON_4A_CC, "akai_midimix__button_4a"
	k_button_4b udo__read_cc $AKAI_MIDIMIX__BUTTON_4B_CC, "akai_midimix__button_4b"
	k_slider_4 udo__read_cc $AKAI_MIDIMIX__SLIDER_4_CC, "akai_midimix__slider_4"
	
	; Strip 5
	k_knob_5a udo__read_cc $AKAI_MIDIMIX__KNOB_5A_CC, "akai_midimix__knob_5a"
	k_knob_5b udo__read_cc $AKAI_MIDIMIX__KNOB_5B_CC, "akai_midimix__knob_5b"
	k_knob_5c udo__read_cc $AKAI_MIDIMIX__KNOB_5C_CC, "akai_midimix__knob_5c"
	k_button_5a udo__read_cc $AKAI_MIDIMIX__BUTTON_5A_CC, "akai_midimix__button_5a"
	k_button_5b udo__read_cc $AKAI_MIDIMIX__BUTTON_5B_CC, "akai_midimix__button_5b"
	k_slider_5 udo__read_cc $AKAI_MIDIMIX__SLIDER_5_CC, "akai_midimix__slider_5"
	
	; Strip 6
	k_knob_6a udo__read_cc $AKAI_MIDIMIX__KNOB_6A_CC, "akai_midimix__knob_6a"
	k_knob_6b udo__read_cc $AKAI_MIDIMIX__KNOB_6B_CC, "akai_midimix__knob_6b"
	k_knob_6c udo__read_cc $AKAI_MIDIMIX__KNOB_6C_CC, "akai_midimix__knob_6c"
	k_button_6a udo__read_cc $AKAI_MIDIMIX__BUTTON_6A_CC, "akai_midimix__button_6a"
	k_button_6b udo__read_cc $AKAI_MIDIMIX__BUTTON_6B_CC, "akai_midimix__button_6b"
	k_slider_6 udo__read_cc $AKAI_MIDIMIX__SLIDER_6_CC, "akai_midimix__slider_6"
	
	; Strip 7
	k_knob_7a udo__read_cc $AKAI_MIDIMIX__KNOB_7A_CC, "akai_midimix__knob_7a"
	k_knob_7b udo__read_cc $AKAI_MIDIMIX__KNOB_7B_CC, "akai_midimix__knob_7b"
	k_knob_7c udo__read_cc $AKAI_MIDIMIX__KNOB_7C_CC, "akai_midimix__knob_7c"
	k_button_7a udo__read_cc $AKAI_MIDIMIX__BUTTON_7A_CC, "akai_midimix__button_7a"
	k_button_7b udo__read_cc $AKAI_MIDIMIX__BUTTON_7B_CC, "akai_midimix__button_7b"
	k_slider_7 udo__read_cc $AKAI_MIDIMIX__SLIDER_7_CC, "akai_midimix__slider_7"
	
	; Strip 8
	k_knob_8a udo__read_cc $AKAI_MIDIMIX__KNOB_8A_CC, "akai_midimix__knob_8a"
	k_knob_8b udo__read_cc $AKAI_MIDIMIX__KNOB_8B_CC, "akai_midimix__knob_8b"
	k_knob_8c udo__read_cc $AKAI_MIDIMIX__KNOB_8C_CC, "akai_midimix__knob_8c"
	k_button_8a udo__read_cc $AKAI_MIDIMIX__BUTTON_8A_CC, "akai_midimix__button_8a"
	k_button_8b udo__read_cc $AKAI_MIDIMIX__BUTTON_8B_CC, "akai_midimix__button_8b"
	k_slider_8 udo__read_cc $AKAI_MIDIMIX__SLIDER_8_CC, "akai_midimix__slider_8"
	
	; Strip 9
	k_slider_9 udo__read_cc $AKAI_MIDIMIX__SLIDER_9_CC, "akai_midimix__slider_9"
	
	; Output
	;===========================================================================
	;k_out_volume = k_volume * k_volume_envelope
	k_out_volume = 0.5 * k_volume_envelope
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
