(use-package vue-mode
  :ensure t
  :functions flycheck-add-mode
  :hook ((vue-mode . add-node-modules-path)
         (vue-mode . prettier-js-mode))
  :mode ("\\.vue?$" . vue-mode)
  :config
  (flycheck-add-mode 'javascript-eslint 'vue-mode))
