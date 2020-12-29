(use-package irony
  :ensure t
  :hook
  ((c++-mode . irony-mode)
  (c-mode . irony-mode)
  (objc-mode . irony-mode)
  (irony-mode . irony-cdb-autosetup-compile-options))
  )

(use-package flycheck-irony
  :ensure t
  :config
  :hook
  (flycheck-mode-hook . flycheck-irony-setup))
