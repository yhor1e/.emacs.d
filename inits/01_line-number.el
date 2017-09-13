(global-linum-mode)
(use-package hlinum
  :ensure t
  :config
  (hlinum-activate)
  (set-face-attribute 'linum nil :height 100)
  (set-face-attribute 'linum-highlight-face nil
    :height 100
    )
  )
