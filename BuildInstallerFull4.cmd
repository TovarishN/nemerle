set MSBuild="%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe"

%MSBuild% NemerleAll.nproj /t:InstallerFull /p:Configuration=Release /verbosity:n /p:NTargetName=Build  /tv:4.0 /p:TargetFrameworkVersion=v4.0

IF %errorlevel% == 0 call Reg-bins-2-4.0.cmd

pause
