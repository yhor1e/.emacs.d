(when (not (package-installed-p 'web-modei))
  (package-install 'web-mode))

;; browser
(setq browse-url-browser-function 'browse-url-generic
  browse-url-generic-program "google-chrome")

;; web-mode
(use-package web-mode
  :mode (("\\.html?$" . web-mode))
  :config
  (define-key web-mode-map (kbd "C-c C-v") 'browse-url-of-buffer))
