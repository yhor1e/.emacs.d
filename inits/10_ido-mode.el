;;; ido-mode
(ido-mode t)
(use-package ido
  :config
  (setq ido-everywhere t)
  (setq ido-enable-flex-matching t)
  (setq ido-create-new-buffer 'always))
(when (boundp 'confirm-nonexistent-file-or-buffer)
  (setq confirm-nonexistent-file-or-buffer nil))
(global-set-key (kbd "C-x f") 'ido-find-file-other-window)
