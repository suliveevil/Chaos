---
title: "siri-shortcuts.el"
categories: 
date: 2022-11-14 07:25:37 +0800
tags: 
excerpt: 
---

[DaniruKun/siri-shortcuts.el](https://github.com/DaniruKun/siri-shortcuts.el): A set of [[Emacs]] commands and functions for interacting with Siri Shortcuts（[[快捷指令]]）.


## URL Scheme

```text
shortcuts://run-shortcut?name=[name]&input=[input]&text=[text]&x-success=...&x-cancel=...&x-error=...
test：
shortcuts://run-shortcut?name=EmacsTranslate&input=text&text=Hello%20World!
shortcuts://x-callback-url/run-shortcut?name=EmacsTranslate&input=text&text=Hello%20World!
```

```emacs-lisp
(defun siri-shortcuts-browse-url (&optional action name input text query)
  (let ((scheme "shortcuts://")
        (path (cond
               ((null action) "")
               ((string= action "create-shortcut") "create-shortcut")
               ((and (string= action "open-shortcut") name)
                (concat "open-shortcut?name=" (url-encode-url name)))
               ((and (string= action "run-shortcut") name)
                (concat "run-shortcut?name=" (url-encode-url name)
                        "&input=" input "&text=" (url-encode-url text)))
               ((string= action "gallery") "gallery")
               ((and (string= action "gallery/search") query)
                (concat "gallery/search?query=" (url-encode-url query))))))
    (browse-url (concat scheme path))))
```

(siri-shortcuts-browse-url &optional ACTION NAME INPUT TEXT QUERY)
ACTION run-shortcut
NAME   EmacsTranslate
INPUT  text
TEXT   thing-at-point sentence
QUERY  

## Misc

[[insert-translated-name]]
[[translate-mode]]

