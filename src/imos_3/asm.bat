@echo off

:input

cls

set fileName=

set /p fileName=Please enter a file name: 

if defined fileName (
    echo File name is %fileName%
    ..\..\tolset\z_tools\nask.exe %fileName%.nas %fileName%.bin %fileName%.lst
) else (
    echo The file name cannot be empty
    pause
    goto input
)