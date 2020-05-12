(use-package prettier-js
  :ensure t
  :config
  (add-hook 'markdown-mode-hook 'prettier-js-mode)
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'json-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook 'prettier-js-mode)
  (add-hook 'css-mode-hook 'prettier-js-mode)
  )


;;; ref: https://qiita.com/ybiquitous/items/0761feeff7f31ba0a476
;;(defun prettier ()
;;  (interactive)
;;  (message "prettier: start")
;;  (shell-command
;;    (format "%s --write %s"
;;      (shell-quote-argument (executable-find "prettier"))
;;      (shell-quote-argument (expand-file-name buffer-file-name))))
;;  (revert-buffer t t t)
;;  (message "prettier: done"))
;;
;;(global-set-key (kbd "C-c C-p") 'prettier)
;;
;;(add-hook 'markdown-mode-hook
;;  (lambda ()
;;    (add-hook 'after-save-hook 'prettier t t)))
;;
;;(add-hook 'js2-mode-hook
;;  (lambda ()
;;    (add-hook 'after-save-hook 'prettier t t)))
;;
;;(add-hook 'json-mode-hook
;;  (lambda ()
;;    (add-hook 'after-save-hook 'prettier t t)))
;;
;;(add-hook 'web-mode-hook
;;  (lambda ()
;;    (add-hook 'after-save-hook 'prettier t t)))
;;
;;(add-hook 'css-mode-hook
;;  (lambda ()
;;    (add-hook 'after-save-hook 'prettier t t)))
