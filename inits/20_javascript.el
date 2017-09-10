(use-package js2-mode
  :ensure t
  :mode (("\\.js?$" . js2-mode))
  )

(use-package rjsx-mode
  :ensure t
  :mode (("components\\/.*\\.js\\'" . rjsx-mode)
          ("containers\\/.*\\.js\\'" . rjsx-mode))
  )
