(use-package js2-mode
  :ensure t
  :config
  (add-hook 'js2-mode-hook 'ac-js2-mode)
  (setq-default indent-tabs-mode nil)
  (setq js2-strict-missing-semi-warning nil)
  :mode (("\\.js?$" . js2-mode))
  )

(use-package rjsx-mode
  :ensure t
  :mode (("components\\/.*\\.js\\'" . rjsx-mode)
          ("containers\\/.*\\.js\\'" . rjsx-mode))
  )

(use-package eglot
  :ensure t
  :config
  (add-hook 'js2-mode-hook 'eglot-ensure)
  )
