---
title: "chezmoi"
categories: Software
date:
tags: 文件管理 自由软件
excerpt:
---


[twpayne/chezmoi](https://github.com/twpayne/chezmoi): Manage your dotfiles across multiple diverse machines, securely.

MIT License

## 安装
[[Homebrew]]

```shell
brew install chezmoi
```
[[MacPorts]]

[[Nix]]

[[asdf]]


### 卸载

chezmoi


## 使用

repo&directory&state

home directory/source directory
`~/.local/share/chezmoi`
working copy
local repo
remote repo
destination directory


destination state
source state
target state


### help

```shell
Manage your dotfiles across multiple diverse machines, securely

Usage:
  chezmoi [command]

Available Commands:
  add               Add an existing file, directory, or symlink to the source state
  apply             Update the destination directory to match the target state
  archive           Generate a tar archive of the target state
  cat               Print the target contents of a file, script, or symlink
  cd                Launch a shell in the source directory
  chattr            Change the attributes of a target in the source state
  completion        Generate shell completion code
  data              Print the template data
  decrypt           Decrypt file or standard input
  diff              Print the diff between the target state and the destination state
  doctor            Check your system for potential problems
  dump              Generate a dump of the target state
  edit              Edit the source state of a target
  edit-config       Edit the configuration file
  encrypt           Encrypt file or standard input
  execute-template  Execute the given template(s)
  forget            Remove a target from the source state
  generate          Generate a file for use with chezmoi
  git               Run git in the source directory
  help              Print help about a command
  ignored           Print ignored targets
  import            Import an archive into the source state
  init              Setup the source directory and update the destination directory to match the target state
  license           Print license
  managed           List the managed entries in the destination directory
  merge             Perform a three-way merge between the destination state, the source state, and the target state
  merge-all         Perform a three-way merge for each modified file
  purge             Purge chezmoi's configuration and data
  re-add            Re-add modified files
  remove            Remove a target from the source state and the destination directory
  secret            Interact with a secret manager
  source-path       Print the source path of a target
  state             Manipulate the persistent state
  status            Show the status of targets
  target-path       Print the target path of a source path
  unmanaged         List the unmanaged files in the destination directory
  update            Pull and apply any changes
  upgrade           Upgrade chezmoi to the latest released version
  verify            Exit with success if the destination state matches the target state, fail otherwise

Flags:
      --cache path                                     Set cache directory (default /Users/suliveevil/.cache/chezmoi)
      --color bool|auto                                Colorize output (default auto)
  -c, --config path                                    Set config file (default /Users/suliveevil/.config/chezmoi/chezmoi.toml)
      --config-format json|toml|yaml                   Set config file format
      --debug                                          Include debug information in output
  -D, --destination path                               Set destination directory (default /Users/suliveevil)
  -n, --dry-run                                        Do not make any modifications to the destination directory
      --force                                          Make all changes without prompting
      --interactive                                    Prompt for all changes
  -k, --keep-going                                     Keep going as far as possible after an error
      --mode mode                                      Mode
      --no-pager                                       Do not use the pager
      --no-tty                                         Do not attempt to get a TTY for reading passwords
  -o, --output path                                    Write output to path instead of stdout
      --persistent-state path                          Set persistent state file
      --progress                                       Display progress bars
  -R, --refresh-externals always|auto|never[=always]   Refresh external cache (default auto)
  -S, --source path                                    Set source directory (default /Users/suliveevil/.local/share/chezmoi)
      --source-path                                    Specify targets by source path
      --use-builtin-age bool|auto                      Use builtin age (default auto)
      --use-builtin-git bool|auto                      Use builtin git (default auto)
  -v, --verbose                                        Make output more verbose
  -W, --working-tree path                              Set working tree directory (default )

Use "chezmoi [command] --help" for more information about a command.

```


## 生态

[[chezmoi.el]]

[[chezmoi.vim]]

## 竞品

[vitorgalvao/tape](https://github.com/vitorgalvao/tape): Backup and restore software settings on macOS

[[mackup]]

[[stow]]

[deadc0de6/dotdrop](https://github.com/deadc0de6/dotdrop): Save your dotfiles once, deploy them everywhere

Ansible

[nix-community/home-manager](https://github.com/nix-community/home-manager): Manage a user environment using [[Nix]]


[Yet Another Dotfiles Manager - yadm](https://yadm.io/)：[TheLocehiliosan/yadm](https://github.com/TheLocehiliosan/yadm)

[SuperCuber/dotter](https://github.com/SuperCuber/dotter): A dotfile manager and templater written in [[Rust]] 🦀

## 用户

### 国际用户

[narze/dotfiles](https://github.com/narze/dotfiles): macOS / Codespaces dotfiles with 1-line setup script. Tested on Apple Silicon Macs. Supports both zsh and fish. Now managed with chezmoi

[m1yam0t0/dotfiles](https://github.com/m1yam0t0/dotfiles)

[snrm/chezmoi](https://gitee.com/snrm/chezmoi)

[Amar1729/dotfiles](https://github.com/Amar1729/dotfiles)

### 中文用户
[zhaohongxuan/dotfiles: My Personal dotfiles include zsh,nvim,tmux,wezterm Managed by chezmoi🤖](https://github.com/zhaohongxuan/dotfiles)



## Misc



