$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.3-rc2/sing-box-1.3-rc2-windows-amd64.zip"
}
else {
  $url64 = "https://download.fgit.ml/SagerNet/sing-box/releases/download/v1.3-rc2/sing-box-1.3-rc2-windows-amd64.zip"
}

$checksum64 = "2733bf5fa12d634e05c7740b04c4cac06b8283d3992a971e0170d371c994e3a6"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
