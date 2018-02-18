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
