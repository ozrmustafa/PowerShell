#!/snap/bin/powershell
<#
.SYNTAX         ./speak-german.ps1 [<text>]
.DESCRIPTION	speaks the given text with a German text-to-speech (TTS) voice
.LINK		https://github.com/fleschutz/PowerShell
.NOTES		Author:	Markus Fleschutz / License: CC0
#>

param($Text = "")

try {
	$Voice = new-object -ComObject SAPI.SPVoice
	$Voices = $Voice.GetVoices()
	foreach ($OtherVoice in $Voices) {
		$Description = $OtherVoice.GetDescription()
		if ($Description -like "*- German*") {
			if ($Text -eq "") {
				$Text = read-host "Enter the text to speak"
			}
			write-progress "$Text"
			$Voice.Voice = $OtherVoice
			[void]$Voice.Speak($Text)
			write-progress -complete "$Text"
			exit 0
		}
	}
	write-error "Sorry, no German text-to-speech (TTS) voice found"
	exit 1
} catch {
	write-error "ERROR in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}