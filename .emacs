;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

(setq mac-option-key-is-meta t)

;; add space after linum line numbers
(global-linum-mode t)
(setq linum-format "%d ")

;; load ESS for R editing
(add-to-list 'load-path "~/local/src/ess-15.09/lisp/")
;; (load "ess-site")
(autoload 'R-mode "ess-site.el" "ESS" t)
(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
(setq inferior-R-program-name "R");;<<CHANGE
;;R stuff
(setq ess-eval-visibly-p nil)
(setq ess-ask-for-ess-directory nil)
(require 'ess-eldoc)
;;compile the first target in the Makefile in the current directory using F9
(global-set-key [f9] 'compile)
(setq compilation-read-command nil)
;;show matching parentheses
(show-paren-mode 1)

;; MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; backup to central dir
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
