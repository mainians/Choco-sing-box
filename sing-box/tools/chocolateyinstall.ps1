$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.3.0/sing-box-1.3.0-windows-amd64.zip"
}
else {
  $url64 = "https://download.fgit.ml/SagerNet/sing-box/releases/download/v1.3.0/sing-box-1.3.0-windows-amd64.zip"
}

$checksum64 = "c7138f098c418e37315a195270d4762506038bf7b8b303f14f7a3d3abeb95047"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
