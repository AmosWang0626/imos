IMG_NAME := imos04.img

default :
	..\..\tolset\z_tools\make.exe img

# 核心步骤-构建启动区文件
ipl.bin : ipl.nas Makefile
	..\..\tolset\z_tools\nask.exe ipl.nas ipl.bin ipl.lst

# 核心步骤-构建系统镜像
$(IMG_NAME) : ipl.bin Makefile
	..\..\tolset\z_tools\edimg.exe   imgin:..\..\tolset\z_tools\fdimg0at.tek \
	wbinimg src:ipl.bin len:512 from:0 to:0 \
	imgout:$(IMG_NAME)


# 调用-构建启动区文件
asm :
	..\..\tolset\z_tools\make.exe -r ipl.bin

# 调用-构建系统镜像
img :
	..\..\tolset\z_tools\make.exe -r $(IMG_NAME)

# 运行
run :
	..\..\tolset\z_tools\make.exe img
	copy $(IMG_NAME) ..\..\tolset\z_tools\qemu\fdimage0.bin
	..\..\tolset\z_tools\make.exe -C ..\..\tolset\z_tools\qemu

clean :
	-del ipl.bin
	-del ipl.lst

# 只保留原文件
src_only :
	..\..\tolset\z_tools\make.exe clean
	-del $(IMG_NAME)