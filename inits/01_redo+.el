(when (not (package-installed-p 'redo+))
  (package-install 'redo+))

(use-package redo+
  :config
  (global-set-key (kbd "C-S-z") 'redo))
