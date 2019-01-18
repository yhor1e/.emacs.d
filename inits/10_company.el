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
    ("<tab>" . company-complete-common-or-cycle))
  :config
  (global-company-mode))
