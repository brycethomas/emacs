;; misc

;; based off instructions at https://melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq-default fill-column 80) 
(setq column-number-mode t)         ;; show column number
(setq-default indent-tabs-mode nil) ;; use spaces not tabs
(setq x-select-enable-clipboard t)  ;; copy-paste between applications
(show-paren-mode t)                 ;; highlight parenthesis matching cursor
(global-auto-revert-mode t)         ;; auto-sync buffer with changes on disk
(setq-default auto-fill-function 'do-auto-fill) ;; auto fill by default

;; declutter
(setq inhibit-startup-message t) ;; hide startup screen
(tool-bar-mode -1)               ;; hide tool bar
(scroll-bar-mode -1)             ;; hide scroll bar
(menu-bar-mode -1)               ;; hide menu bar

;; key remaps
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-x\C-m" 'execute-extended-command) ;; M-x
(global-set-key "\C-c\C-m" 'execute-extended-command) ;; M-x
(global-set-key [f5] 'call-last-kbd-macro) ;; replay a keyboard macro

;; move between buffers with shift + arrows instead of C-x o
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (zenburn-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; For new machines, run these commands once:
;; M-x package-refresh-contents
;; M-X package-install zenburn-theme
(load-theme 'zenburn t)
