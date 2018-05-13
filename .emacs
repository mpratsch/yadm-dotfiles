;disable auto indenting on paste

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(electric-indent-mode -1)
;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)
;enable auto-revert buffer
(global-auto-revert-mode 1)
;set default fill-column for line wrapping
(setq-default fill-column 79)
;enable column number mode
(setq column-number-mode t)

;; elpa
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
;; M-x package-install
;; go-mode
;; M-x go-mode

;; M-x package-install
;; column-enforce-mode
;; M-x column-enforce-mode

(put 'upcase-region 'disabled nil)

; set javascript indent to 2 spaces
(setq js-indent-level 2)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (column-enforce-mode go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
