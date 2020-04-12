;* search lisp directory path
(setq load-path (cons "~/.emacs.d/elisp/" load-path))

;* load init file
(load "~/.emacs.d/gtags.el")
(load "~/.emacs.d/anything.el")

;* hidden startup-message
(setq inhibit-startup-message t)

;* not create backup files(ex *.~, .#*)
(setq make-backup-files nil)
(setq auto-save-default nil)

;* set char code
(set-language-environment 'Japanese)

;* utf8
(prefer-coding-system 'utf-8)

;* default window size
(setq initial-frame-alist
      '((left   . 100) ; (x)
        (top    .  50) ; (y)
        (width  . 120)
        (height .  40)
        ))

;* hide menu bar
(menu-bar-mode 0)

;* line, column number(mode line)
(line-number-mode t)
(column-number-mode t)

;* display function name
(which-function-mode 1)

;* highlight matching parenthesis
(show-paren-mode t)

;* scroll option
(setq scroll-conservatively 1)
(setq scroll-margin 10)
(setq next-screen-context-lines 10)
(setq scroll-preserve-screen-position t)

;* underline cursor
(global-hl-line-mode)
(setq hl-line-face 'underline)

;* ignore beep sound
(setq ring-bell-function 'ignore)

;* color
;** char color
(add-to-list 'default-frame-alist '(foreground-color . "white"))
;** background
(add-to-list 'default-frame-alist '(alpha . (90 80)))
;** cursor
(add-to-list 'default-frame-alist '(cursor-color . "ghost white"))
;** mark set
(set-face-background 'region "blue")
;** modeline
(set-face-foreground 'mode-line-inactive "gray30")
(set-face-background 'mode-line-inactive "gray85")
;** comment
(set-face-foreground 'font-lock-comment-face "Red")
;** string
(set-face-foreground 'font-lock-string-face  "green")
;** reserved word
(set-face-foreground 'font-lock-keyword-face "cyan")
;** function name
(set-face-foreground 'font-lock-function-name-face "LightSlateBlue")  
(set-face-bold-p 'font-lock-function-name-face t)
;** variable name
(set-face-foreground 'font-lock-variable-name-face "yellow")
;** type name
(set-face-foreground 'font-lock-type-face "Green")
;** buildin function name
(set-face-foreground 'font-lock-builtin-face "LightSlateBlue")  
;** const name
(set-face-foreground 'font-lock-constant-face "DeepPINK")
;** warning(#error)
(set-face-foreground 'font-lock-warning-face "pink")

;* key bind define
;(keyboard-translate ?\C-i ?\M-v); C-i is Scrollup(C-v is Scrolldown)
(keyboard-translate ?\C-h ?\C-?); C-h is backspace

;* indent
(setq-default c-basic-offset 4     ;; indent offset
              tab-width 4          ;; tab width
              indent-tabs-mode t)   ;; indent tab
			  ;indent-tabs-mode nil)  ;; indent space

;* ignore suspicious line XXX(makefile-mode)
(add-hook 'makefile-mode-hook
		  (function
		   (lambda ()
			 (fset 'makefile-warn-suspicious-lines 'ignore))))

