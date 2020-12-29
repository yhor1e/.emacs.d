(use-package json-mode
  :ensure t
  :mode ("\\.json?$" . json-mode)
  :hook ((json-mode . add-node-modules-path)
         (json-mode . prettier-js-mode)))
