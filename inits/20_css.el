(use-package css-mode
  :functions flycheck-add-mode
  :hook ((css-mode . add-node-modules-path)
         (css-mode . prettier-js-mode))
  :mode (("\\.css$" . css-mode)
          ("\\.scss$" . css-mode))
  :config
  (flycheck-add-mode 'css-stylelint 'css-mode)
  (add-to-list 'company-backends 'company-css))
