
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (exec-path-from-shell json-mode js2-mode web-mode xref-js2 flycheck flycheck-css-colorguard flycheck-elm editorconfig))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-language-environment "UTF-8")

(defun accents ()
(interactive)
(activate-input-method "latin-1-alt-postfix")
)

(defun current-lang ()
(interactive)
(eval-expression current-language-environment)
)

(require 'editorconfig)
(editorconfig-mode 1)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;;disable jshint
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))


(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
