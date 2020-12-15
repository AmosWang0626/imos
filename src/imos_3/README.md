# 制作启动区

## 1、启动区内容截取

截取 `imos02.nas` 55 AA 前边的内容，作为启动区，保存为 `ipl.nas`

## 2、改造 `asm.bat`

根据 `ipl.nas` 生成 `ipl.bin` ，同时生成列表文件 `ipl.lst` ，我暂时把它理解为执行日志

```bat
..\..\tolset\z_tools\nask.exe ipl.nas ipl.bin ipl.lst
```

## 3、构建 `imos03.img`

```bat
..\..\tolset\z_tools\edimg.exe imgin:..\..\tolset\z_tools\fdimg0at.tek wbinimg src:ipl.bin len:512 from:0 to:0 imgout:imos03.img
```

## 步骤汇总

`asm ---> makeimg ---> run`

- `asm.bat` 输入 `ipl`
- `makeimg.bat`
- `run.bat` 输入 `imos03`