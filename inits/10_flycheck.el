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
  (with-eval-after-load 'flycheck
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
    )
  ;; textlint
  (flycheck-define-checker textlint
    "A linter for prose."
    :command ("textlint" "--format" "unix"
               source-inplace)
    :error-patterns
    ((warning line-start (file-name) ":" line ":" column ": "
       (id (one-or-more (not (any " "))))
       (message (one-or-more not-newline)
         (zero-or-more "\n" (any " ") (one-or-more not-newline)))
       line-end))
    :modes (text-mode markdown-mode gfm-mode))
  (add-to-list 'flycheck-checkers 'textlint)
  (flycheck-add-mode 'textlint 'markdown-mode)
  )

(use-package flycheck-rust
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
  )

(use-package flycheck-irony
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-irony-setup)
  )
