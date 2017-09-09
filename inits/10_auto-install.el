(when (not (package-installed-p 'auto-install))
  (package-install 'auto-install))

(use-package auto-install
  :config
  (setq auto-install-directory "~/.emacs.d/elisp/")
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))
