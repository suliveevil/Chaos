---
title: "obsidian-shellcommands"
author: 
categories: 
date: 2022-10-13 23:35:17 +0800
tags: 
excerpt: 
---




[Taitava/obsidian-shellcommands](https://github.com/Taitava/obsidian-shellcommands): Execute system commands via hotkeys or command palette in [[Obsidian]]. Some automated events are also supported, and execution via URI links.

[Obsidian shell commands - Documentation](https://publish.obsidian.md/shellcommands/Index)

## Event



## Variables



## Commands

Open in Emacs

```shell
# 在 Emacs 中打开当前文件
/opt/homebrew/bin/emacs +{{caret_position}} {{file_path:absolute}}
# 只在当前 Emacs 应用窗口中打开当前文件
/opt/homebrew/bin/emacs +{{caret_position}} {{file_path:absolute}}
```

From Emacs to Obsidian

```elisp
(defun open-current-file-in-obsidian ()
  (interactive)
  (browse-url-xdg-open
  (concat "obsidian://open?path=" (url-encode-url (buffer-file-name)))))
```

Open in VSCode

```shell
#  code --goto \/path\/to\/file\.md:12\:5
/opt/homebrew/bin/code --goto {{file_path:absolute}}:{{caret_position}}

```

Open in Vim(MacVim)/Neovim(Neovide)

```shell
# vim +12 \/path\/to\/file\.md
/opt/homebrew/bin/mvim +{{caret_position:line}} +\/\\\m\\\%{{caret_position:column}}c {{file_path:absolute}}

/opt/homebrew/bin/mvim +{{caret_position:line}} {{file_path:absolute}}
/opt/homebrew/bin/neovide +{{caret_position:line}} {{file_path:absolute}}

# vim foobar.txt -c 'normal 39G12|'
/opt/homebrew/bin/mvim {{file_path:absolute}} -c 'normal {{caret_position:line}}G{{caret_position:column}}|'

/opt/homebrew/bin/neovide {{file_path:absolute}} -c 'normal {{caret_position:line}}G{{caret_position:column}}|'
```


## Misc

[[obsidian-web-browser]]

[[obsidian-dataview]]

[[vim-fetch]]

[[file-line]]




