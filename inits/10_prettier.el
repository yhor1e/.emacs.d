(use-package prettier-js
  :ensure t
  :config
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'json-mode 'prettier-js-mode)
  (add-hook 'web-mode 'prettier-js-mode)
  (add-hook 'css-mode 'prettier-js-mode)
  (add-hook 'markdown-mode 'prettier-js-mode)
)
