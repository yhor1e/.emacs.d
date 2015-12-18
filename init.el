(defvar *installp* nil)

(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'package)
(setq package-check-signature nil)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(when (and *installp* (require 'package nil 'noerror))
  (package-refresh-contents)

  (defvar dependencies
    '(
       ;;     init-loader
       redo+
       undohist
       undo-tree

       mozc

       popwin
       direx

       auto-complete
       fuzzy

       web-mode
       emmet-mode
       js2-mode
       json-mode
       markdown-mode

       editorconfig

       yasnippet

       anzu
       volatile-highlights
       hlinum
       ))

  (dolist (package dependencies)
    (unless (package-installed-p package)
      (package-install package))))



;; set encode
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

;; set font
(set-face-attribute 'default nil
  :family "RictyDiminished"
  :height 120)

;; set display
(setq frame-title-format
  (format "%%f"))

(global-linum-mode)

(setq inhibit-startup-screen t)

(tool-bar-mode 0)

(global-whitespace-mode 0)

(setq make-backup-files nil)
(setq auto-save-default nil)

;; paran-mode
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "#424242")

;; set auto-install
;; http://www.emacswiki.org/emacs/download/auto-install.el
(when (require 'auto-install nil t)
  (setq auto-install-directory "~/.emacs.d/elisp/")
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))

;; set redo+
;; http://www.emacswiki.org/emacs/download/redo+.el
(when (require 'redo+ nil t)
  (global-set-key (kbd "C-S-z") 'redo))

;; C-h
(keyboard-translate ?\C-h ?\C-?)
(global-set-key (kbd "C-x ?") 'help-command)

;; C-z
(global-set-key "\C-z" 'undo)

;; C-t
(define-key global-map (kbd "C-t") 'other-window)

;; for html etc
(when (require 'web-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))
  (define-key web-mode-map (kbd "C-c C-v") 'browse-url-of-buffer))

(setq browse-url-browser-function 'browse-url-generic
  browse-url-generic-program "google-chrome")

;; for css
(autoload 'css-mode "css-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))

;; for JavaScript
;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es$" . js2-mode))
(add-hook 'js2-mode-hook 'js-indent-hook)
(setq js2-strict-missing-semi-warning nil)

;; auto-complete
(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20150618.1949/dict")
  (ac-config-default)
  (setq ac-use-fuzzy t)
  (global-auto-complete-mode t)
  (add-hook 'web-mode-hook 'auto-complete-mode)
  (define-key ac-mode-map (kbd "<tab>") 'ac-start)
  (define-key ac-completing-map (kbd "<tab>") 'auto-complete)
  (define-key ac-completing-map (kbd "C-n") 'ac-next)
  (define-key ac-completing-map (kbd "C-p") 'ac-previous)
  (setq ac-auto-show-menu 0)

  ;;; Add ac-sources
  (defun ac-web-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (add-to-list 'ac-sources 'ac-source-filename))
  (add-hook 'web-mode-hook 'ac-web-mode-setup)

  (defun ac-css-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (add-to-list 'ac-sources 'ac-source-filename))
  (add-hook 'css-mode-hook 'ac-css-mode-setup)

  (defun ac-js2-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (add-to-list 'ac-sources 'ac-source-filename))
  (add-hook 'js2-mode-hook 'ac-js2-mode-setup)
  )

;; editorconfig
(when (locate-library "editorconfig")
  (editorconfig-mode 1)
  )

;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; yasnippet
(when (require 'yasnippet nil t)
  (setq yas-snippet-dirs
    '("~/.emacs.d/snippets"))
  (define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
  (define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
  (define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)
  (yas-global-mode 1))

;; markdown-mode
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;; emmet-mode
(when (require 'emmet-mode nil t)
  (add-hook 'web-mode-hook 'emmet-mode)
  (setq emmet-move-cursor-between-quotes t))

;; theme/color
(load-theme 'wombat t)
(set-face-background 'region "#226666")

;; trailing space
(setq-default show-trailing-whitespace 0)
(set-face-background 'trailing-whitespace "#b14770")

;; display tab
(when (require 'whitespace nil t)
  (setq whitespace-style '(tabs tab-mark))
  (global-whitespace-mode 1))

;; mozc
(when (require 'mozc nil t)
  (setq default-input-method "japanese-mozc")
  (setq mozc-candidate-style 'echo-area)
  (global-set-key (kbd "S-SPC") 'toggle-input-method)
  (define-key mozc-mode-map (kbd "S-SPC") 'toggle-input-method)
  (add-hook 'input-method-activate-hook (lambda () (set-face-background 'cursor "#3a3")))
  (add-hook 'input-method-inactivate-hook (lambda () (set-face-background 'cursor "#666"))))

(when (require 'undohist nil t)
  (undohist-initialize))

(when (require 'popwin nil t)
  (popwin-mode 1))

(when (require 'direx nil t)
  (push '(direx:direx-mode :position left :width 50 :dedicated t)
    popwin:special-display-config)
  (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window))

(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

(when (require 'point-undo nil t)
  (define-key global-map (kbd "M-[") 'point-undo)
  (define-key global-map (kbd "M-]") 'point-redo))

(when (require 'anzu nil t)
  (global-anzu-mode +1)
  (custom-set-variables
    '(anzu-mode-lighter "")
    '(anzu-deactivate-region t)
    '(anzu-search-threshold 1000)))

(when (require 'volatile-highlights nil t)
  (volatile-highlights-mode t))

(ido-mode t)
(require 'ido)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(when (boundp 'confirm-nonexistent-file-or-buffer)
  (setq confirm-nonexistent-file-or-buffer nil))
(global-set-key (kbd "C-x f") 'ido-find-file-other-window)

(when (require 'hlinum nil t)
  (hlinum-activate))
