$project.Properties.Item("PostBuildEvent").Value = @"
xcopy "$(TargetDir)$(TargetName).*" "[MyLocation]:\Program Files (x86)\K2 blackpearl\K2 SmartForms Designer\Bin\" /y /r
xcopy "$(TargetDir)$(TargetName).*" "[MyLocation]:\Program Files (x86)\K2 blackpearl\K2 SmartForms Runtime\Bin\" /y /r"@

$item = $project.ProjectItems | where-object {$_.Name -eq "SugestedSearchControl.xml"} 
$item.Properties.Item("BuildAction").Value = [int]3

$item = $project.ProjectItems | where-object {$_.Name -eq "mian.js"} 
$item.Properties.Item("BuildAction").Value = [int]3

$item = $project.ProjectItems | where-object {$_.Name -eq "mian.css"} 
$item.Properties.Item("BuildAction").Value = [int]3