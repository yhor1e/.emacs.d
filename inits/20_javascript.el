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
  ;:mode ("\\/[A-G].*\\.js\\'" . rjsx-mode)
  ;:mode ("\\/[ABCDEFG].*\\.js\\'" . rjsx-mode)
  ;:mode ("\\/[ABCDEFGHIJKLMN].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQRSTU].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQR].*\\.js\\'" . rjsx-mode)
  ;OK:mode ("\\/[ABCDEFGHIJKLMNOP].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQ\\R].*\\.js\\'" . rjsx-mode)
  ;OK:mode ("\\/[ABCDEFGHIJKLMNOPQ].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQS].*\\.js\\'" . rjsx-mode)
  ;OK:mode ("\\/[ABCDEFGHIJKLMNOPQT].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQTUV].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQTU].*\\.js\\'" . rjsx-mode)
  ;OK:mode ("\\/[ABCDEFGHIJKLMNOPQTV].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQTVWXY].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQTVW].*\\.js\\'" . rjsx-mode)
  ;OK:mode ("\\/[ABCDEFGHIJKLMNOPQTVX].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQTVXY].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQTVXZ].*\\.js\\'" . rjsx-mode)
  ;NG:mode ("\\/[ABCDEFGHIJKLMNOPQTVX]?Z?.*\\.js\\'" . rjsx-mode)
  ;NG RSUWYZ
  :mode ("\\/[ABCDEFGHIJKLMNOPQTVX].*\\.js\\'" . rjsx-mode)
  )

(use-package eglot
  :ensure t
  :config
  (add-hook 'js2-mode-hook 'eglot-ensure)
  )
