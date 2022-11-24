---
title: ""
categories: 
date: 2022-09-27 00:17:20 +0800
tags: macOS
excerpt: 
---

macOS [[硬盘]]工具



````shell
# 查看硬盘/磁盘/U盘列表
diskutil list

# 格式化硬盘，DiskName=你的外接硬盘/U盘的名称
diskutil eraseDisk ExFAT DiskName disk2

# 官方说明
Usage:  diskutil eraseDisk format name [APM[Format]|MBR[Format]|GPT[Format]]
        MountPoint|DiskIdentifier|DeviceNode
(Re)-partition a whole disk (create a new partition map). This completely erases any existing data on the given whole disk; all volumes on this disk will be destroyed. Format is the specific file system name you want to erase it as (HFS+, etc.). Name is the (new) volume name (subject to file system naming restrictions), or can be specified as %noformat% to skip initialization(newfs). You cannot erase the boot disk. Ownership of the affected disk is required.
Example: diskutil eraseDisk JHFS+ UntitledUFS disk3
````



## Misc

[[U盘]]


