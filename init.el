;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode -1)
(linum-mode t)
(nyan-mode 1)
(display-time-mode 1)
(show-paren-mode 1)
(menu-bar-mode nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(beacon-mode 1)













;Here are setq settings

;Here are the doom settings

(require 'doom-modeline)
(doom-modeline-init)
(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-one t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
(doom-themes-neotree-config)
;; or for treemacs users
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)



(setq-default cursor-type 'bar)
(defun open-my-init-file()
 (interactive)
 (find-file "~/.emacs.d/init.el"))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(setq mode-line-format
      (list
       '(:eval (list (nyan-create)))
       ))

(setq display-time-24hr-format t)


(setq auto-image-file-mode t)

(setq track-eol t)

(setq-default beacon-lighter "")

(setq-default beacon-size 5)

(add-hook 'after-init-hook 'beacon-mode)









;here are global settings


(global-set-key (kbd "<f3>") 'open-my-init-file)

(global-company-mode t)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (beacon doom-themes doom-modeline nyan-mode company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
