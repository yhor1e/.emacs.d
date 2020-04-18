(use-package company
  :init
  (setq company-selection-wrap-around t)
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0)
  :bind
  (:map company-active-map
    ("M-n" . nil)
    ("M-p" . nil)
    ("C-n" . company-select-next)
    ("C-p" . company-select-previous)
    ("C-h" . nil)
    ("<tab>" . company-complete-common-or-cycle)
    :map company-search-map
    ("C-n" . company-select-next)
    ("C-p" . company-select-previous)
    )
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (add-to-list 'company-backends 'company-files)
  (define-key global-map (kbd "C-.") 'company-files)
  (add-to-list 'company-backends 'company-css)
  (add-to-list 'company-backends 'company-clang)
  (add-to-list 'company-backends 'company-yasnippet)
  (set-face-attribute 'company-tooltip nil
    :foreground "white" :background "#383838")
  (set-face-attribute 'company-tooltip-common nil
    :foreground "white" :background "#383838")
  (set-face-attribute 'company-tooltip-common-selection nil
    :foreground "white" :background "#226666")
  (set-face-attribute 'company-tooltip-selection nil
    :foreground "white" :background "#226666")
  (set-face-attribute 'company-preview-common nil
    :background nil :foreground "white" :underline t)
  (set-face-attribute 'company-tooltip-annotation nil
    :foreground "white" :background nil)
  (set-face-attribute 'company-tooltip-annotation-selection nil
    :foreground "white" :background nil)
  (set-face-attribute 'company-scrollbar-fg nil
    :background "white")
  (set-face-attribute 'company-scrollbar-bg nil
    :background "#383838")
  )

(use-package company-irony
  :ensure t
  :config
;  (add-to-list 'company-backends 'company-irony)
  )
(use-package company-c-headers
  :ensure t
  :config
;  (add-to-list 'company-backends 'company-c-headers)
  )

(use-package ac-js2
  :ensure t
  :config
  (add-to-list 'company-backends 'ac-js2-company)
  (setq ac-js2-evaluate-calls t)
  )

;(use-package company-quickhelp
;  :ensure t
;  :config
;  (company-quickhelp-mode)
;  )
