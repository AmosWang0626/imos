@echo off

set imgFile=imos02.img
set tolsetPath=E:\devops\imos\tolset

copy %imgFile% %tolsetPath%\z_tools\qemu\fdimage0.bin
%tolsetPath%\z_tools\make.exe -C %tolsetPath%\z_tools\qemu