(global-linum-mode t)
(linum-mode t)
(global-hl-line-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(nyan-mode 1)
(display-time-mode 1)
(show-paren-mode 1)
(menu-bar-mode nil)
(beacon-mode 1)
(delete-selection-mode t)
(global-company-mode t)
(smartparens-global-mode t)
(ivy-mode 1)






;setq group
(setq-default cursor-type 'bar)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "https://melpa.org/packages/")))

(setq mode-line-format
      (list
       '(:eval (list (nyan-create)))
       ))

(setq display-time-24hr-format t)
(setq auto-image-file-mode t)
(setq track-eol t)
(setq-default beacon-lighter "")
(setq-default beacon-size 5)
(setq org-agenda-files '("~/.org"))
(setq python-indent-offset 4)





;(add-hook)

(add-hook 'after-init-hook 'beacon-mode)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(add-hook 'python-mode-hook #'lsp-python-enable)






;enable recentf-mode
(require 'recentf)
(recentf-mode 1)			
(setq recentf-max-menu-items 25)





(provide 'init-better-defaults)
