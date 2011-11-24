(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/ecb-snap")
(require 'xcscope)

;; Hide toolbar.
(tool-bar-mode nil)
;; Hide menubar.
(menu-bar-mode nil)
;; Hide Scrollbar.
(scroll-bar-mode nil)
;; Tab width spaces
(setq default-tab-width 4)
;; Display line num
(global-linum-mode 1)

;; Color theme
(require 'color-theme)
(setq color-theme-is-global t)
(load-file "~/.emacs.d/color-theme-blackboard.el")
(color-theme-blackboard)

;; Display time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

;;cperl
(defalias 'perl-mode 'cperl-mode)
 (defun perltidy-region ()
    "Run perltidy on the current region."
    (interactive)
    (save-excursion
      (shell-command-on-region (point) (mark) "perltidy -q" nil t)))
 (defun perltidy-defun ()
    "Run perltidy on the current defun."
    (interactive)
    (save-excursion (mark-defun)
    (perltidy-region)))
(setq cperl-font-lock nil)

;;ecb
(require 'ecb)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.17721518987341772 . 0.24444444444444444) (ecb-sources-buffer-name 0.17721518987341772 . 0.24444444444444444) (ecb-methods-buffer-name 0.17721518987341772 . 0.26666666666666666) (ecb-history-buffer-name 0.17721518987341772 . 0.2222222222222222)))))
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(setq ecb-tip-of-the-day nil
      inhibit-startup-message t
      ecb-auto-compatibility-check nil
      ecb-version-check nil
)
(global-set-key [f12] 'ecb-activate)
(global-set-key [C-f12] 'ecb-deactivate)

(global-set-key [C-left] 'windmove-left)  
(global-set-key [C-right] 'windmove-right)  
(global-set-key [C-up] 'windmove-up)  
(global-set-key [C-down] 'windmove-down) 
