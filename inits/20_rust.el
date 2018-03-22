(use-package rust-mode
  :ensure t
  :config
  (setq-default rust-format-on-save t)
  :mode (("\\.rs?$" . rust-mode))
  )

(use-package cargo
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  )

(use-package racer
  :ensure t
  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  )
