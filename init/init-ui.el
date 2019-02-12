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

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(set-default-font"-ADBO-Source Code Pro for Powerline-semibold-italic-normal-*-16-*-*-*-m-0-iso10646-1")











(global-prettify-symbols-mode 1)

(add-hook
 'python-mode-hook
 (lambda ()
   (mapc (lambda (pair) (push pair prettify-symbols-alist))
                                   '(;; Data Type            P N
                                    ("Char"   . #x1d56e)  ;; 𝕔 𝕮
                                    ("char"   . #x1d588)  ;; 𝕔 𝕮
                                    ("Dict"   . #x1d56f)  ;; 𝕯
                                    ("dict"   . #x1d589)  ;; 𝖉
                                    ("Float"  . #x211d )  ;; ℝ
                                    ("float"  . #x211d )  ;; ℝ
                                    ("List"   . #x1d577)  ;; 𝕃 𝕷
                                    ("list"   . #x1d591)  ;; 𝕝 𝖑
                                    ("Int"    . #x2124 )  ;; ℤ
                                    ("int"    . #x2124 )  ;; 𝕫
                                    ("Set"    . #x1d516)  ;; 𝔖
                                    ("set"    . #x1d530)  ;; 𝔰
                                    ("String" . #x1d57e)  ;; 𝕊 𝕾
                                    ("string" . #x1d598)  ;; 𝕤 𝖘
                                    ("str"    . #x1d598)  ;; 𝕤 𝖘
                                    ("Tuple"  . #x1d57f)  ;; 𝕋 𝕿
                                    ("tuple"  . #x1d599)  ;; 𝕥 𝖙
                                    ("False"  . #x1d53d)  ;; 𝕱 𝔽
                                    ("True"   . #x1d54b)  ;; 𝕿 𝕋
                                    ("Union"  . #x22c3 )  ;; ⋃
                                    ("union"  . #x22c3 )  ;; ⋃
                                    ("Any"    . #x2203 )  ;; ∃
                                    ("any"    . #x2203 )  ;; ∃
                                    ("any_"   . #x2203 )  ;; ∃
                                    ("And"    . #x22c0 )  ;; ⋀
                                    ("and"    . #x22cf )  ;; ⋏
                                    ("Or"     . #x22c1 )  ;; ⋁
                                    ("or"     . #x22cE )  ;; ⋎
                                    ("not"    . #x00ac )  ;; ¬
                                    ("not_"   . #x00ac )  ;; ¬
                                    ("All"    . #x2200 )  ;; ∀
                                    ("all"    . #x2200 )  ;; ∀
                                    ("all_"   . #x2200 )  ;; ∀
                                    ("for"    . #x2200 )  ;; ∀
                                    ("forall" . #x2200 )  ;; ∀
                                    ("forM"   . #x2200 )  ;; ∀
                                    ("pi"     . #x03c0 )  ;; π
                                    ("def"    . #x1d4d3 ) ;; 𝓓
                                    ("sum"    . #x2211 )  ;; ∑
                                    ("Sum"    . #x2211 )  ;; ∑
                                    ("Product" . #x220F)  ;; ∏
                                    ("product" . #x220F)  ;; ∏
                                    ("None"   . #x2205 )  ;; ∅
                                    ("none"   . #x2205 )  ;; ∅
                                    ("in"     . #x2286 )  ;; ⊆
                                    ("`elem`" . #x2286 )  ;; ⊆
                                    ("not in"    . #x2288)  ;; ⊈
                                    ("`notElem`" . #x2288)  ;; ⊈
                                    ("return" . (#x21d2 (Br . Bl) #x2006 (Br . Bl) #x2004))    ;; ⇒  x
                                    ("yield"  . (#x21d4 (Br . Bl) #x2004))  ;; ⇔ x
                                    ("pure"   . (#x21f0 (Br . Bl) #x2006))  ;; ⇰  x
                                    ))))














(provide 'init-ui)
