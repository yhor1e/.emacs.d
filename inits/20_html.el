;; web-mode
(use-package web-mode
  :ensure t
  :init
  (setq browse-url-browser-function 'browse-url-generic
  browse-url-generic-program "google-chrome")
  :mode (("\\.html?$" . web-mode))
  :config
  (define-key web-mode-map (kbd "C-c C-v") 'browse-url-of-buffer))
