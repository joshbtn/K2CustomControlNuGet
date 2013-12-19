# If Black pearl is installed locally call:
#    configure.ps1 -k2path "c:\Program Files (x86)\K2 blackpearl\"
# Tip: If you are a admin you may access the files from a server using
#    configure.ps1 -k2path "\\k2server\C$\Program Files (x86)\K2 blackpearl\"

Param(
	[Parameter(Mandatory=$True)]
	[string]$k2path 
)

# Dlls to include
$filePaths =
	"\bin\SourceCode.Forms.Client.dll",
	#"\bin\HostClientAPI.dll",
	"\K2 SmartForms Runtime\bin\SourceCode.Forms.Controls.Web.SDK.dll",
	"\K2 SmartForms Runtime\bin\SourceCode.Forms.Controls.Web.Shared.dll"

# Destination
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$destPath = "$scriptPath\src\K2ControlsCore\lib\net35"

# Loop through file list and copy to destPath
foreach($file in $filePaths){
	Write-Output "$k2path$file -> $destPath"
	Copy-Item "$k2path$file" "$destPath"
}