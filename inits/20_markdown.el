(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :hook ((markdown-mode . add-node-modules-path)
          (markdown-mode . prettier-js-mode))
  :mode (("README\\.md\\'" . gfm-mode)
          ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "marked"))
