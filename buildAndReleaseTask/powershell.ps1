[CmdletBinding()]
param()

$input = Get-VstsInput -Name 'samplestring' -Require;

Write-Host "Hello $input";
