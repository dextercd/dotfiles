;;; Packages
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package undo-fu)

(use-package evil
  :init
  (setq evil-want-keybinding nil) ; needed by evil-collection
  (setq evil-undo-system 'undo-fu)
  (setq evil-move-beyond-eol t) ; Make C-o work better when at eol
  :config
  (evil-mode 1)
  (evil-global-set-key 'normal (kbd "<backspace>") 'evil-scroll-up))

(use-package evil-org
  :after (org evil)
  :hook (org-mode . evil-org-mode)
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(use-package evil-collection
  :config
  (evil-collection-init))

(use-package magit)

(use-package helm
  :config
  (helm-mode 1))

(use-package docker-tramp)

(use-package pyvenv
  :config
  (pyvenv-mode t))

(use-package company
  :config
  (company-mode t)
  (global-set-key (kbd "C-SPC") 'company-complete))

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  ;:hook
  ;(python-mode . lsp)
  :commands lsp)

(setq inhibit-splash-screen t)

;;; Org config
(setq org-agenda-files '("~/org-agenda"))

;;; Org key bindings
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;;; Whitespace
(setq whitespace-style '(face tabs spaces tab-mark space-mark))
(global-whitespace-mode 1)

;;; Default fringes
(set-fringe-mode 0) ; No fringes

;;; Line numbers
(global-display-line-numbers-mode 1)

;;; Cleanup bars
(scroll-bar-mode 0)
(tool-bar-mode 0)
;; (menu-bar-mode 0)

;; General indentation
(set-default 'indent-tabs-mode nil)

;; Put backups into seperate directory
(setq backup-directory-alist '(("" . "~/.config/emacs/backup")))

;;; Erlang mode
(setq load-path (cons "/usr/lib/erlang/lib/tools-3.4.3/emacs" load-path))
(setq erlang-root-dir "/usr/lib/erlang")
(setq exec-path (cons "/usr/local/otp/bin" exec-path))
(require 'erlang-start)

(use-package typescript-mode)

;;; custom-set-variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(helm-minibuffer-history-key "M-p")
 '(package-selected-packages
   '(typescript-mode company pyvenv lsp-mode undo-fu magit docker-tramp helm use-package evil))
 '(typescript-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "gray5" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "ADBO" :family "Source Code Pro"))))
 '(line-number ((t (:inherit (shadow default) :background "gray12"))))
 '(term-color-blue ((t (:background "DodgerBlue3" :foreground "DodgerBlue3"))))
 '(whitespace-space ((t (:foreground "dim gray"))))
 '(whitespace-tab ((t (:foreground "dim gray")))))
