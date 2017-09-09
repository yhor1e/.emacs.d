;; C-h
(keyboard-translate ?\C-h ?\C-?)
;; C-x ?
(global-set-key (kbd "C-x ?") 'help-command)
;; C-z
(global-set-key "\C-z" 'undo)
;; C-t
(define-key global-map (kbd "C-t") 'other-window)
