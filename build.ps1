$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition

if((Test-path -Path \\'$DeviceName'\$folderPath) -eq $FALSE){
	New-Item -ItemType Directory -Path "$scriptPath\build"
}

nuget pack "$scriptPath\src\K2ControlsCore\K2ControlsCore.nuspec" -OutputDirectory "$scriptPath\build"
nuget pack "$scriptPath\src\K2ControlsWeb\K2ControlsWeb.nuspec" -OutputDirectory "$scriptPath\build"