(when (not (package-installed-p 'hlinum))
  (package-install 'hlinum))

(global-linum-mode)
(use-package hlinum
  :config
  (hlinum-activate))
