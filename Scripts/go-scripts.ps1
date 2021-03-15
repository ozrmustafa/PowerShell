#!/bin/powershell
<#
.SYNTAX         ./go-scripts.ps1 
.DESCRIPTION	go to the PowerShell Scripts folder
.LINK		https://github.com/fleschutz/PowerShell
.NOTES		Author:	Markus Fleschutz / License: CC0
#>

try {
	set-location $PSScriptRoot
	exit 0
} catch {
	write-error "ERROR: line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}