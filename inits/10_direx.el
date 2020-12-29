(use-package direx
  :ensure t
  :after popwin
  :config
  (push '(direx:direx-mode :position left :width 50 :dedicated t)
	popwin:special-display-config)
  (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
  )
