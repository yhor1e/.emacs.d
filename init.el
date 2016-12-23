;;; Package --- SUMMARY:
;;; Code:
;;; Commentary:
;;;    initialize: install package use-package

(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'package)
(setq package-archives
  '(("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("org" . "http://orgmode.org/elpa/")))

(package-initialize)

;; nil -> 1 to install packages
(if nil

  (package-refresh-contents)

  (defvar init-dependencies
    '(
       exec-path-from-shell

       redo+

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
       flycheck

       editorconfig

       yasnippet

       anzu
       volatile-highlights
       hlinum
       ))

  (dolist (package init-dependencies)
    (unless (package-installed-p package)
      (package-install package))))


;;; set key
;; C-h
(keyboard-translate ?\C-h ?\C-?)
;; C-x ?
(global-set-key (kbd "C-x ?") 'help-command)
;; C-z
(global-set-key "\C-z" 'undo)
;; C-t
(define-key global-map (kbd "C-t") 'other-window)


;;; disabled auto-save
(setq make-backup-files nil)
(setq auto-save-default nil)


;;; startup screen
(setq inhibit-startup-screen t)


;;; minibuffer
(setq frame-title-format
  (format "%%f"))


;;; line number
(global-linum-mode)
(use-package hlinum
  :config
  (hlinum-activate))


;;; encode
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)


;;; font
(set-face-attribute 'default nil
  :family "RictyDiminished"
  :height 120)


;;; input method
(use-package mozc
  :config
  (setq default-input-method "japanese-mozc")
  (setq mozc-candidate-style 'echo-area)
  (global-set-key (kbd "S-SPC") 'toggle-input-method)
  (define-key mozc-mode-map (kbd "S-SPC") 'toggle-input-method)
  (add-hook 'input-method-activate-hook (lambda () (set-face-background 'cursor "#3a3")))
  (add-hook 'input-method-inactivate-hook (lambda () (set-face-background 'cursor "#666"))))


;;; hide tool bar
(tool-bar-mode 0)


;;; spaces, tabs
;; disable whitespace
(global-whitespace-mode 0)
;; trailing space
(setq-default show-trailing-whitespace 0)
(set-face-background 'trailing-whitespace "#b14770")
;; tab
(use-package whitespace
  :config
  (setq whitespace-style '(tabs tab-mark))
  (global-whitespace-mode 1))


;;; auto revert buffer
(global-auto-revert-mode 1)


;;; redo+
;; http://www.emacswiki.org/emacs/download/redo+.el
(use-package redo+
  :config
  (global-set-key (kbd "C-S-z") 'redo))


;;; paran-mode
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "#424242")


;;; theme/color
(load-theme 'wombat t)
(set-face-background 'region "#226666")


;;; ido-mode
(ido-mode t)
(use-package ido
  :config
  (setq ido-everywhere t)
  (setq ido-enable-flex-matching t)
  (setq ido-create-new-buffer 'always))
(when (boundp 'confirm-nonexistent-file-or-buffer)
  (setq confirm-nonexistent-file-or-buffer nil))
(global-set-key (kbd "C-x f") 'ido-find-file-other-window)


;;; html
;; browser
(setq browse-url-browser-function 'browse-url-generic
  browse-url-generic-program "google-chrome")
;; web-mode
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))
  (define-key web-mode-map (kbd "C-c C-v") 'browse-url-of-buffer))


;;; css
(use-package css-mode
  :commands css-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
  (add-to-list 'auto-mode-alist '("\\.less$" . css-mode))
  (add-to-list 'auto-mode-alist '("\\.scss$" . css-mode)))


;;; JavaScript
;; js2-mode
(use-package js2-mode
  :commands js2-mode
  :init
  ;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-jsx-mode))
  ;;  (add-hook 'js2-mode-hook 'js-indent-hook)
  ;;  (setq js2-strict-missing-semi-warning nil)
  )


;;; flycheck
(global-flycheck-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq-default flycheck-disabled-
  (append flycheck-disabled-checkers
    '(javascript-jshint)))
(flycheck-add-mode 'html-tidy 'web-mode)
(flycheck-add-mode 'css-csslint 'css-mode)
;; (flycheck-add-mode 'javascript-eslint 'js2-mode)
(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)

;;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil)


(use-package popwin
  :config
  (popwin-mode 1))

(use-package direx
  :config
  (push '(direx:direx-mode :position left :width 50 :dedicated t)
    popwin:special-display-config)
  (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window))

(use-package anzu
  :config
  (global-anzu-mode +1)
  (custom-set-variables
    '(anzu-mode-lighter "")
    '(anzu-deactivate-region t)
    '(anzu-search-threshold 1000)))

(use-package volatile-highlights
  :config
  (volatile-highlights-mode t))

;;; markdown-mode
(use-package markdown-mode
  :commands markdown-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode)))

;;; emmet-mode
(use-package emmet-mode
  :config
  (add-hook 'web-mode-hook 'emmet-mode)
  (setq emmet-move-cursor-between-quotes t))

;;; yasnippet
(use-package yasnippet
  :config
  (setq yas-snippet-dirs
    '("~/.emacs.d/snippets"))
  (define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
  (define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
  (define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)
  (yas-global-mode 1))

;;; editorconfig
(use-package editorconfig
  :ensure t
  :config
  (setq editorconfig-get-properties-function
    'editorconfig-core-get-properties-hash)
  (editorconfig-mode 1))


(exec-path-from-shell-initialize)

;;; set auto-install
;; http://www.emacswiki.org/emacs/download/auto-install.el
(use-package auto-install
  :config
  (setq auto-install-directory "~/.emacs.d/elisp/")
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))

;;; auto-complete
(use-package auto-complete-config
  :config
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

;;(add-hook emacs-lisp-mode-hook 'turn-on-eldoc-mode)

(provide 'init)
;;; init.el ends here
