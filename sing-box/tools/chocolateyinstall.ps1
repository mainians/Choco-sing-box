$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.8.10/sing-box-1.8.10-windows-amd64.zip"
}
else {
  $url64 = "https://download.fgit.cf/SagerNet/sing-box/releases/download/v1.8.10/sing-box-1.8.10-windows-amd64.zip"
}

$checksum64 = "f6e7587e8e19acf4c54d4323b56403cdd979a442ce08167fefe49b2c0ea656b5"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
