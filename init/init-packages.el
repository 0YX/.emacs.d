(when (>= emacs-major-version 25)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  )
(require 'cl)

;;add whatever packages you want here
(defvar Mojospy/packages '(
			   company
			   doom-themes
                           smartparens
      			   elpy
			   flycheck-pyflakes
		           ivy
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


(provide 'init-packages)
