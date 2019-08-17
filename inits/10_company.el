(use-package company
  :init
  (setq company-selection-wrap-around t)
  (setq company-minimum-prefix-length 1)
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
  ;  (global-company-mode)
  (add-hook 'c++-mode-hook '(lambda () (setq company-mode t))) ;enable in c++-mode
;  (set-face-attribute 'company-tooltip nil
;    :foreground "black" :background "lightgrey")
;  (set-face-attribute 'company-tooltip-common nil
;    :foreground "black" :background "lightgrey")
;  (set-face-attribute 'company-tooltip-common-selection nil
;    :foreground "white" :background "steelblue")
;  (set-face-attribute 'company-tooltip-selection nil
;    :foreground "black" :background "steelblue")
;  (set-face-attribute 'company-preview-common nil
;    :background nil :foreground "lightgrey" :underline t)
;  (set-face-attribute 'company-scrollbar-fg nil
;    :background "orange")
;  (set-face-attribute 'company-scrollbar-bg nil
;    :background "gray40")
  )

(use-package company-irony
  :ensure t
  :config
  (add-to-list 'company-backends 'company-irony)
  )

(use-package company-quickhelp
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  )
