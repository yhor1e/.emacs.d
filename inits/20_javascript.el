(use-package js2-mode
  :ensure t
  :functions flycheck-add-mode
  :hook ((js2-mode . add-node-modules-path)
         (js2-mode . prettier-js-mode))
  :config
  (flycheck-add-mode 'javascript-eslint 'js2-mode)
  :mode ("\\.js?$" . js2-mode)
  )

(use-package rjsx-mode
  :ensure t
  :mode ("[A-Z][a-zA-Z0-9]*\\.js?$" . rjsx-mode)
  :hook (rjsx-mode . emmet-mode)
  )

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook (js2-mode . lsp-deferred)
)
