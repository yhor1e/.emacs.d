(when (not (package-installed-p 'volatile-highlights))
  (package-install 'volatile-highlights))

(use-package volatile-highlights
  :config
  (volatile-highlights-mode t))
