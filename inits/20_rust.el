(use-package rust-mode
  :ensure t
  :config
  (setq-default rust-format-on-save t)
  :mode (("\\.rs?$" . rust-mode)))

(use-package cargo
  :ensure t
  :config
  :hook (rust-mode . cargo-minor-mode))

(use-package racer
  :ensure t
  :config
  :hook ((rust-mode . racer-mode)
          (racer-mode . eldoc-mode)))

(use-package flycheck-rust
  :ensure t
  :config
  :hook (flycheck-mode . flycheck-rust-setup))
