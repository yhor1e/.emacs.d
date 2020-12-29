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

(use-package company-irony
  :ensure t
  :config
  (add-to-list 'company-backends 'company-irony))

(use-package company-c-headers
  :ensure t
  :config
  (add-to-list 'company-backends 'company-c-headers))

(add-to-list 'company-backends 'company-clang)
