;; misc
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
