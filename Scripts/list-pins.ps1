﻿<#
.SYNOPSIS
	list-pins.ps1 [<pin-length>] [<columns>] [<rows>]
.DESCRIPTION
	Prints a list of random PIN's.
.EXAMPLE
	PS> .\list-pins.ps1
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([int]$PinLength = 5, [int]$Columns = 12, [int]$Rows = 30)

try {
	write-output ""
	$Generator = New-Object System.Random
	for ($j = 0; $j -lt $Rows; $j++) {
		$Line = ""
		for ($k = 0; $k -lt $Columns; $k++) {
			for ($i = 0; $i -lt $PinLength; $i++) {
				$Line += [char]$Generator.next(48,57)
			}
			$Line += "   "
		}
		write-output $Line
	}
	write-output ""
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
