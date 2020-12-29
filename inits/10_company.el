(use-package company
  :after yasnippet
  :init
  (setq company-selection-wrap-around t)
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0)
  :bind
  (
    :map company-active-map
    ("M-n" . nil)
    ("M-p" . nil)
    ("C-n" . company-select-next)
    ("C-p" . company-select-previous)
    ("C-h" . nil)
    ("<tab>" . company-complete-common-or-cycle)
    :map company-search-map
    ("C-n" . company-select-next)
    ("C-p" . company-select-previous))
  :hook
  (after-init . global-company-mode)
  :config
  (add-to-list 'company-backends 'company-files)
  (define-key global-map (kbd "C-.") 'company-files)
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
