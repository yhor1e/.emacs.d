(when (not (package-installed-p 'markdown-mode))
  (package-install 'markdown-mode))

(use-package markdown-mode
  :mode (("\\.markdown$" . markdown-mode)
          ("\\.md$" . markdown-mode))
  )
