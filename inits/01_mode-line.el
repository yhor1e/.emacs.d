;(setq frame-title-format
;  (format "%%f"))

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/theme 'respectful)
  (sml/setup)
  (custom-set-faces
  '(sml/filename ((t (:foreground "deep sky blue"))))
  '(sml/global ((t (:foreground "dark gray"))))
  '(sml/line-number ((t (:foreground "dark gray" :weight bold)))))
  )
