;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(tool-bar-mode -1)
(scroll-bar-mode -1)
(linum-mode t)
(nyan-mode 1)
(display-time-mode 1)
(show-paren-mode 1)
(menu-bar-mode nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized));Open with full screen
(beacon-mode 1)
(delete-selection-mode t)












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
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)





;enable recentf-mode
(require 'recentf)
(recentf-mode 1)			
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)










;here are global settings


(global-set-key (kbd "<f3>") 'open-my-init-file)

(global-company-mode t)

(global-hl-line-mode t)

(global-linum-mode t)



;(defun your-g++-compile-and-run()
;   (interactive)
;   (compile (format "g++ %s && .a/a.out" (buffer-file-name))))

;(define-key c++-mode-map (kbd "<f5>") #'your-g++compile-and-run)



(when (>= emacs-major-version 25)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") t)
  )
(require 'cl)

;;add whatever packages you want here
(defvar Mojospy/packages '(
			   company
			   doom-themes
                        smartparens
              )  "Default packages")

(defun Mojospy/packages-installed-p ()
  (loop for pkg in Mojospy/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (Mojospy/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg Mojospy/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))





(require 'smartparens-config)









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
