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

(require 'doom-modeline)
(doom-modeline-mode 1)

(setq initial-frame-alist(quote ((fullscreen . maximized))))

;;(setq-default cursor-type 'bar)


;;font settings
(set-default-font "-microsoft-YaHei Monaco Hybird-normal-normal-normal-*-15-*-*-*-*-0-iso10646-1")
;(set-default-font "-unknown-Operator Mono-normal-normal-normal-*-17-*-*-*-m-0-iso10646-1")
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)





(provide 'init-ui)
