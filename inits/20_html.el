(use-package web-mode
  :ensure t
  :functions flycheck-add-mode
  :hook (web-mode . emmet-mode)
  :mode (("\\.html?$" . web-mode))
  :config
  (flycheck-add-mode 'html-tidy 'web-mode))
