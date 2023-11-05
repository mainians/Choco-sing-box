$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.7.0-alpha.6/sing-box-1.7.0-alpha.6-windows-amd64.zip"
}
else {
  $url64 = "https://download.fgit.cf/SagerNet/sing-box/releases/download/v1.7.0-alpha.6/sing-box-1.7.0-alpha.6-windows-amd64.zip"
}

$checksum64 = "2408b7d1b870950942409f0e50506fe68310c4eac9b79c5218d9106ffc80723a"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
