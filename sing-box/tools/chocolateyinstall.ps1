$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.9.3/sing-box-1.9.3-windows-amd64.zip"
}
else {
  $url64 = "https://mirror.ghproxy.com/https://github.com/SagerNet/sing-box/releases/download/v1.9.3/sing-box-1.9.3-windows-amd64.zip"
}

$checksum64 = "7123e9a59c2e8c1d737a3338000a284a4762fd06f556d1258665db70fe566cc8"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
