(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  :config
  (with-eval-after-load 'flycheck
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
    )

  ;; textlint
  (flycheck-define-checker textlint
    "A linter for markdown."
    :command ("textlint" "--format" "unix"
               source-inplace)
    :error-patterns
    ((warning line-start (file-name) ":" line ":" column ": "
       (id (one-or-more (not (any " "))))
       (message (one-or-more not-newline)
         (zero-or-more "\n" (any " ") (one-or-more not-newline)))
       line-end))
    :modes (text-mode markdown-mode gfm-mode))
  (add-to-list 'flycheck-checkers 'textlint))
