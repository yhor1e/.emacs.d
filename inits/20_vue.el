(use-package vue-mode
  :ensure t
  :config
  (add-hook 'vue-mode-hook 'flycheck-mode)
  :mode ("\\.vue?$" . vue-mode)
  )
