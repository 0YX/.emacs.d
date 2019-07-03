(nyan-mode t)
(ivy-mode 1)
(global-hl-line-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(linum-mode t)
(recentf-mode t)
(global-linum-mode t)
(nyan-start-animation)
(display-time-mode 1)
(global-font-lock-mode t)
(delete-selection-mode t)
(menu-bar-mode nil)
(delete-selection-mode t)
(beacon-mode 1)
(highlight-indentation-mode t)



;;add group
(add-hook 'c-mode-hook #'rainbow-delimiters-mode)
(add-hook 'python-mode-hook #'rainbow-delimiters-mode)

;;setq group
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq org-src-fontify-natively t)
(setq display-time-24hr-format t)
(setq recentf-max-menu-items 25)


(defun open-my-init-file()
  (interactive)
 (find-file "~/.emacs.d/init.el"))




;;set transparent effect
(global-set-key [(f9)] 'loop-alpha)
(setq alpha-list '((100 100) (95 65) (85 55) (75 45) (65 35)))  
(defun loop-alpha ()  
      (interactive)  
      (let ((h (car alpha-list)))                ;; head value will set to  
        ((lambda (a ab)  
           (set-frame-parameter (selected-frame) 'alpha (list a ab))  
           (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))  
           ) (car h) (car (cdr h)))  
        (setq alpha-list (cdr (append alpha-list (list h))))  
        )
)

;;dashboard setting

(require 'dashboard)
(dashboard-setup-startup-hook)
;; Set the title
(setq dashboard-banner-logo-title "Welcome to back Mojospy")
(setq dashboard-center-content t)

;;yasnippet
(add-to-list 'load-path
              "~/.emacs.d/elpa/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)



(ac-config-default)


;;company-mode
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)


(require 'highlight-parentheses)
;;rainbow-delimiters setting
(add-hook 'c-mode-hook #'rainbow-delimiters-mode)
(add-hook 'c++-mode-hook #'rainbow-delimiters-mode)
(add-hook 'Python-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)



(cscope-setup)

;;smartparens setting

(require 'smartparens-config)

(add-hook 'c-mode-hook #'smartparens-mode)
(add-hook 'c++-mode-hook #'smartparens-mode)
(add-hook 'python-mode-hook #'smartparens-mode)
(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)


;;flycheck
(add-hook 'c-mode-hook #'flycheck-mode)
(add-hook 'c++-mode-hook #'flycheck-mode)
(add-hook 'python-mode-hook #'flycheck-mode)


;;helm-c-yasnippet
(require 'yasnippet)
(require 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t)
(global-set-key (kbd "C-c y") 'helm-yas-complete)
(yas-global-mode 1)
(yas-load-directory "/home/lyx/.emacs.d/snippets/")


(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")

(use-package beacon
  :disabled t
  :straight t
  :init (setq beacon-size  7
              beacon-color "#f85e9f")
  :hook ((after-init . beacon-mode)))

;;highlight-indent-guides
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-auto-odd-face-perc 15)
(setq highlight-indent-guides-auto-character-face-perc 20)


(add-hook 'prog-mode-hook 'highlight-numbers-mode)





(provide 'init-better-defaults)
