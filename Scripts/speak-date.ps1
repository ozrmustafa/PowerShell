﻿<#
.SYNOPSIS
	speak-date.ps1
.DESCRIPTION
	Speaks the current date by text-to-speech (TTS).
.EXAMPLE
	PS> .\speak-date.ps1
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

try {
	[system.threading.thread]::currentthread.currentculture=[system.globalization.cultureinfo]"en-US"
	& "$PSScriptRoot/speak-english.ps1" "Today is $((Get-Date).ToShortDateString())"
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
