default :
	..\..\tolset\z_tools\make.exe img

ipl.bin : ipl.nas Makefile
	..\..\tolset\z_tools\nask.exe ipl.nas ipl.bin ipl.lst

imos04.img : ipl.bin Makefile
	..\..\tolset\z_tools\eding.exe imgin:..\..\tolset\z_tools\fdimg0at.tek \
		wbinimg src:ipl.bin len:512 from:0 to:0 imgout:imos04.img


asm :
	..\..\tolset\z_tools\make.exe -r ipl.bin

img :
	..\..\tolset\z_tools\make.exe -r imos04.img

run :
	..\..\tolset\z_tools\make.exe src_only
	..\..\tolset\z_tools\make.exe img
	copy imos04.img ..\..\tolset\z_tools\qemu\fdimage0.bin
	..\..\tolset\z_tools\make.exe -C ..\..\tolset\z_tools\qemu

clean :
	-del ipl.bin
	-del ipl.lst

src_only :
	..\..\tolset\z_tools\make.exe clean
	-del imos04.img