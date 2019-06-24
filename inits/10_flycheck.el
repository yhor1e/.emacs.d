(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode)
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (setq-default flycheck-disabled-
    (append flycheck-disabled-checkers
      '(javascript-jshint)))
  (flycheck-add-mode 'html-tidy 'web-mode)
;  (flycheck-add-mode 'css-csslint 'css-mode)
  (flycheck-add-mode 'css-stylelint 'css-mode)
  (flycheck-add-mode 'javascript-eslint 'js2-mode)
  (flycheck-add-mode 'javascript-eslint 'js-mode)
  (flycheck-add-mode 'javascript-eslint 'vue-mode)
  (flycheck-add-mode 'html-tidy 'vue-html-mode)
  (with-eval-after-load 'flycheck
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
  )

(use-package flycheck-rust
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
  )
