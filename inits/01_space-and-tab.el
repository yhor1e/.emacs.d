;;; spaces, tabs
;; disable whitespace
(global-whitespace-mode 0)
;; trailing space
(setq-default show-trailing-whitespace 0)
(set-face-background 'trailing-whitespace "#b14770")
;; tab
(use-package whitespace
  :config
  (setq whitespace-style '(tabs tab-mark))
  (global-whitespace-mode 1))
