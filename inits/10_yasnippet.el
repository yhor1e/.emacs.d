(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs
    '("~/.emacs.d/snippets"))
  (define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
  (define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
  (define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)
  )
