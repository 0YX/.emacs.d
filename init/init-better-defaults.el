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
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line
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
(setq elpy-rpc-python-command "python3")
(setq-default abbrev-mode t)



;(add-hook)

(add-hook 'after-init-hook 'beacon-mode)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(setq elpy-rpc-python-command "python3")
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)




;enable recentf-mode
(require 'recentf)
(recentf-mode 1)			
(setq recentf-max-menu-items 25)









(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


(require 'package)

;; If you want to use latest version
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(ac-config-default)

(custom-set-variables
  '(ac-etags-requires 1))

(eval-after-load "etags"
  '(progn
      (ac-etags-setup)))

(add-hook 'c-mode-common-hook 'ac-etags-ac-setup)
(add-hook 'ruby-mode-common-hook 'ac-etags-ac-setup)








(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)



(require 'lsp-mode)
(add-hook 'c-mode-hook #'lsp)
(add-hook 'python-mode-hook #'lsp)











(provide 'init-better-defaults)
