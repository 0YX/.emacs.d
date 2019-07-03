(elpy-enable)


;python setting
;flycheck-pyflakes
(require 'flycheck-pyflakes)


;;anaconda
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;;company-anaconda
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))
(add-hook 'python-mode-hook 'anaconda-mode)


(require 'py-yapf)
(add-hook 'python-mode-hook 'py-yapf-enable-on-save)




(add-hook 'python-mode-hook (lambda () (add-to-list 'ac-omni-completion-sources (cons "\." '(ac-source-ropemacs))) ))









(provide 'init-python)
