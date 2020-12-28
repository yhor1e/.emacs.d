(use-package which-key
    :init (which-key-mode)
    :diminish which-key-mode
    :config
    (setq which-key-show-major-mode t)
    (setq which-key-show-early-on-C-h t)
    (setq which-key-idle-delay 0.5))
