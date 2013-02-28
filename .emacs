(add-to-list 'load-path "~/.emacs.d/ecb")
(defalias 'perl-mode 'cperl-mode)
(add-hook 'python-mode-hook
 (lambda()
  (set-variable 'py-indent-offset 4)
  (set-variable 'indent-tabs-mode nil)
  (smart-operator-mode-on)
))

;; Hide toolbar
(tool-bar-mode nil)

;; Hide menubar
(menu-bar-mode nil)

;; Hide Scrollbar
(scroll-bar-mode nil)

;; Tab with spaces
(setq default-tab-width 4)

;; Display line num
;;(global-linum-mode 1)

;; Display time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

;;ecb
(require 'ecb)
(global-set-key [f12] 'ecb-activate)
(global-set-key [C-f12] 'ecb-deactive)

(global-set-key [C-left] 'windmove-left)
(global-set-key [C-right] 'windmove-right)
(global-set-key [C-up] 'windmove-up)
(global-set-key [C-down] 'windmove-down) 
(setq ecb-tip-of-the-day nil
	  inhibit-startup-message t
	  ecb-auto-compatibility-check nil
	  ecb-version-check nil)
