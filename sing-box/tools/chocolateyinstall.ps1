$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.10.0-alpha.14/sing-box-1.10.0-alpha.14-windows-amd64.zip"
}
else {
  $url64 = "https://download.fgit.cf/SagerNet/sing-box/releases/download/v1.10.0-alpha.14/sing-box-1.10.0-alpha.14-windows-amd64.zip"
}

$checksum64 = "2cd64f117724e88538c62d1bbe9d6ad4d3dd4839f646aeeac39a1c2bd95a56bc"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
