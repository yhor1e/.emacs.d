(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

;; If you want to install use-package, set "nil" to "t".
(if nil
    (progn
      (package-initialize)
      (package-refresh-contents)
      (package-install 'use-package))
  )

(require 'use-package)
(use-package init-loader
  :ensure t
  :config
  (init-loader-load))
