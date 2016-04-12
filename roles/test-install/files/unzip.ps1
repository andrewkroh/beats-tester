Param($file, $destination)

$args = @("x", "-aoa", "-y", "-o${destination}", $file)
&"7z.exe" $args
$exitCode = $LastExitCode

if ($exitCode -ne 0) {
  Write-Host "Failed. Exit code $exitCode"
  Exit $exitCode
}
