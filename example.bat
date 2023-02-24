@echo off
start GenshinImpact.exe %*

SET syringe="C:\Hack\syringe.exe"
::SET injectDLL="C:\Hack\bkebi\libstdimpact.dll"
SET injectDLL="C:\Hack\CLibrary.dll"

ECHO Waiting for Game...
ping localhost -n 10 >NULL
for /f "tokens=2 delims=," %%F in ('tasklist /fi "IMAGENAME eq GenshinImpact.exe"') do @Set "PID= %%F"

%syringe% -1 %injectDLL% %PID% > "C:\Hack\log.txt"
