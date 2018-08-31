(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode)
  (global-set-key (kbd "C-S-z") 'redo))
