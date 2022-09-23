---
title: "TouchID"
categories: 
date: 2022-11-02 23:48:23 +0800
tags: 
excerpt: 
---

用指纹授权终端sudo权限


[artginzburg/sudo-touchid](https://github.com/artginzburg/sudo-touchid#usage): 🍎 Permanent TouchID support 👆 for `sudo`.

```shell
sudo sed -i ".bak" '2s/^/auth sufficient pam_tid.so\'$'\n/g' /etc/pam.d/sudo
```

> **命令说明**
>
> - 该命令的作用是把 `/etc/pam.d/sudo` 备份为 `/etc/pam.d/sudo.bak`，然后在 `/etc/pam.d/sudo` 的第二行前面加入 `auth sufficient pam_tid.so` 这个字符串。
> - 修改该文件的目的是在 `sudo` 程序的认证过程前面插入 Touch ID 验证的模块。感兴趣的小伙伴可以去了解一下 [PAM 架构](http://www.infoq.com/cn/articles/wjl-linux-pluggable-authentication-module)。
> - 如果需要恢复原文件，请执行：`sudo mv /etc/pam.d/sudo.bak /etc/pam.d/sudo`。

远程登录（如SSH）不会要求刷指纹，可放心使用。

## 参考资料

[一条命令让您的 macOS 用 Touch ID 授权 sudo！](https://sspai.com/post/42038)

[How to use sudo with Touch ID on your Mac](https://www.imore.com/how-use-sudo-your-mac-touch-id)




