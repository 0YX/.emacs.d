;irony
;;(add-hook 'c-mode-hook 'irony-mode)
;;(add-hook 'c++-mode-hook 'irony-mode)
;;(add-hook 'objc-mode-hook 'irony-mode)

;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;flycheck-irony
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;;company-irony
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))


(provide 'init-c)
