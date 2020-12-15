@echo off

:input

cls

set imgFile=
set tolsetPath=E:\devops\imos\tolset

set /p imgFile=Please enter the img file name: 

if defined imgFile (
    copy %imgFile%.img %tolsetPath%\z_tools\qemu\fdimage0.bin
    %tolsetPath%\z_tools\make.exe -C %tolsetPath%\z_tools\qemu
) else (
    echo The img file name cannot be empty !
    pause
    goto input
)
