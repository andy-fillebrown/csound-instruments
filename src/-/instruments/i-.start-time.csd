<CsoundSynthesizer>
<CsOptions>

-n -d -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5

</CsOptions>
<CsInstruments>

#include "../../../config.csd-h"

gi_NoteId = 1

instr 1
	; Filename to print to.
	S_filename sprintf "%s/_.start-time.txt", $VARIABLE_LOGGING_OUTPUT_DIRECTORY

	; Time in seconds.
	k_time timek
	k_time = k_time / kr
	
	; Print start time.
	fprintks S_filename, "%f\n", k_time
endin

</CsInstruments>
<CsScore>

f1 0 1024 10 1
f0 3600

</CsScore>
</CsoundSynthesizer>
