@ECHO OFF

:START
cls
%homedrive%
cd %USERPROFILE%
cd..
set profiles=%cd%

for /f "tokens=* delims= " %%u in ('dir /b/ad') do (

cls
title Deletando %%u AppData. . .
if exist "%profiles%\%%u\AppData" echo Deletando....
if exist "%profiles%\%%u\AppData" cd "%profiles%\%%u\AppData"
if exist "%profiles%\%%u\AppData" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData" rmdir /s /q "%profiles%\%%u\AppData"

)

cls
goto END


:END
exit
