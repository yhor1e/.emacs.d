(when (not (package-installed-p 'json-mode))
  (package-install 'json-mode))

(use-package json-mode
  :mode ("\\.json?$" . json-mode))
