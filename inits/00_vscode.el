; https://blog.shibayu36.org/entry/2019/10/07/193000
(defun open-by-vscode ()
  (interactive)
  (shell-command
   (format "code -r -g %s:%d:%d"
           (buffer-file-name)
           (line-number-at-pos)
           (current-column))))

(define-key global-map (kbd "C-c C-v") 'open-by-vscode)
