@echo off
SET THEFILE=D:\calc_Lazarus_2\calc.exe
echo Linking %THEFILE%
D:\Lazarus\fpc\3.2.0\bin\x86_64-win64\ld.exe -b pei-x86-64  --gc-sections   --subsystem windows --entry=_WinMainCRTStartup    -o D:\calc_Lazarus_2\calc.exe D:\calc_Lazarus_2\link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
