(when (not (package-installed-p 'emmet-mode))
  (package-install 'emmet-mode))

(use-package emmet-mode
  :config
  (add-hook 'web-mode-hook 'emmet-mode)
  (setq emmet-move-cursor-between-quotes t))
