Param($file, $hashFile)

$h = Get-FileHash -Algorithm SHA1 $file
$hash = $h.Hash

$contents = (Get-Content $hashFile) -split ' '
$expectedHash = $contents[0]

if ($hash -ceq $expectedHash) {
  Write-Host "Expected hash $expectedHash but got $hash"
  Exit 1
} else {
  Write-Host "Checksum OK"
  Exit 0
}
