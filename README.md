# K2 SmartForms Custom Controls NuGet package.
Because K2 is closed source the required K2/SourceCode dlls are not included in this project.  
The configure script will help copy the required dlls from your local/remote install into this package.

Configure
---------
To include the required dll files from your install use the configure tool.
```PowerShell
    configure.ps1 -k2path "c:\Program Files (x86)\K2 blackpearl\"
```	

Build
---------
```PowerShell
    build.ps1
```	

Also see [Creating and Publishing a Package](http://docs.nuget.org/docs/creating-packages/creating-and-publishing-a-package) 
for instructions on creating a nuget package.

Install
---------
See [hosting your own nuget feeds](http://docs.nuget.org/docs/creating-packages/hosting-your-own-nuget-feeds)

**More K2 Help**
For more info on creating controls See: http://help.k2.com/en/k2smartforms1.02devref.aspx