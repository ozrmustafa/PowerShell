﻿<#
.SYNOPSIS
	cd-up3.ps1
.DESCRIPTION
	Go three directory levels up.
.EXAMPLE
	PS> .\cd-up3.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz · License: CC0
#>

$TargetDir = resolve-path "../../.."
if (-not(test-path "$TargetDir" -pathType container)) {
	write-warning "Sorry, there is no folder 📂$TargetDir (yet)"
	exit 1
}
set-location "$TargetDir"
"📂$TargetDir"
exit 0
