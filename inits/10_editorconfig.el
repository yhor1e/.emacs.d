(when (not (package-installed-p 'editorconfig))
  (package-install 'editorconfig))

(use-package editorconfig
  :ensure t
  :config
  (setq editorconfig-get-properties-function
    'editorconfig-core-get-properties-hash)
  (editorconfig-mode 1))
