IMG_NAME  = imos00a.img
TOOLPATH  = ../../../tolset/z_tools/
MAKE      = $(TOOLPATH)make -r
NASK      = $(TOOLPATH)nask.exe

# 这两个路径不能用 TOOLPATH 原因未知
QEMU      = ..\..\..\tolset\z_tools\qemu
FDIMAGE   = ..\..\..\tolset\z_tools\fdimage0.bin


default :
	$(MAKE) img

# 核心步骤-构建启动区文件
ipl.bin : ipl.nas Makefile
	$(NASK) ipl.nas ipl.bin ipl.lst

# 核心步骤-构建系统镜像
$(IMG_NAME) : ipl.bin Makefile
	$(TOOLPATH)edimg.exe   imgin:$(TOOLPATH)fdimg0at.tek \
	wbinimg src:ipl.bin len:512 from:0 to:0 \
	imgout:$(IMG_NAME)


# 调用-构建启动区文件
asm :
	$(MAKE) ipl.bin

# 调用-构建系统镜像
img :
	$(MAKE) $(IMG_NAME)

# 运行
run :
	$(MAKE) img
	copy $(IMG_NAME) $(FDIMAGE)
	$(MAKE) -C $(QEMU)

clean :
	-del ipl.bin
	-del ipl.lst

# 只保留原文件
src_only :
	$(MAKE) clean
	-del $(IMG_NAME)