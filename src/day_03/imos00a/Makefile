IMG_NAME  = imos04.img
TOOL_PATH = ../../../tolset/z_tools/
MAKE      = $(TOOL_PATH)make.exe -r
NASK      = $(TOOL_PATH)nask.exe
EDIMG     = $(TOOL_PATH)edimg.exe

default :
	$(MAKE) img

# 核心步骤-构建启动区文件
ipl.bin : ipl.nas Makefile
	$(NASK) ipl.nas ipl.bin ipl.lst

# 核心步骤-构建系统镜像
$(IMG_NAME) : ipl.bin Makefile
	$(EDIMG)   imgin:$(TOOL_PATH)fdimg0at.tek \
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
	copy $(IMG_NAME) $(TOOL_PATH)qemu/fdimage0.bin
	$(MAKE) -C $(TOOL_PATH)qemu

clean :
	-del ipl.bin
	-del ipl.lst

# 只保留原文件
src_only :
	..\..\..\tolset\z_tools\make.exe -i clean
	-del $(IMG_NAME)