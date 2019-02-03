(require 'flycheck-pyflakes)

(eval-after-load "company"
 '(add-to-list 'company-backends 'company-anaconda))


(package-initialize)
(elpy-enable)
;; (package-initialize) should already exist at the top of the init
;; file on Debian-derived systems, thus (elpy-enable) should be all
;; that is required.

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))



 (provide 'init-python)
