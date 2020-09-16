;; Packages will be initialized by use-package later.
(setq package-enable-at-startup nil)
(setq package-archives nil)

;; Defer garbage collection further back in the startup process
;; (setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-threshold 134217728)   ; 128mb


;; Ignore X resources
(advice-add #'x-apply-session-resources :override #'ignore)

;; Do not resize the frame at this early stage.
(setq frame-inhibit-implied-resize t)

;; Prevent unwanted runtime builds; packages are compiled ahead-of-time when
;; they are installed and site files are compiled when gccemacs is installed.
(setq comp-deferred-compilation nil)

;; Prevent the glimpse of un-styled Emacs by disabling these UI elements early.
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;;; use-package configuration
(setq use-package-enable-imenu-support t)
(setq use-package-compute-statistics t)
;; The following is VERY IMPORTANT.  Write hooks using their real name
;; instead of a shorter version: after-init ==> `after-init-hook'.
;;
;; This is to empower help commands with their contextual awareness,
;; such as `describe-symbol'.
;; without ivy `describe-variable' won't suggest after-init-hook for
;; after-init
(setq use-package-hook-name-suffix nil)
  