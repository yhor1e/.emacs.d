(when (not (package-installed-p 'js2-mode))
  (package-install 'js2-mode))

(use-package js2-mode
  :mode (("\\.js?$" . js2-mode))
;;  :init
;;  (add-hook 'js2-mode-hook 'js-indent-hook)
;;  (setq js2-strict-missing-semi-warning nil)
  )

(when (not (package-installed-p 'rjsx-mode))
  (package-install 'rjsx-mode))

(use-package rjsx-mode
  :mode (("components\\/.*\\.js\\'" . rjsx-mode)
          ("containers\\/.*\\.js\\'" . rjsx-mode))
  )
