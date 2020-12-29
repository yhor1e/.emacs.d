(use-package css-mode
  :functions flycheck-add-mode
  :hook ((css-mode . add-node-modules-path)
         (-mode . prettier-js-mode))
  :mode (("\\.css$" . css-mode))
  :config
  (flycheck-add-mode 'css-stylelint 'css-mode))
