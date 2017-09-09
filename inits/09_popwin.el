(when (not (package-installed-p 'popwin))
  (package-install 'popwin))

(use-package popwin
  :config
  (popwin-mode 1))
