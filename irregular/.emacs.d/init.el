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

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (evil-global-set-key 'normal (kbd "<backspace>") 'evil-scroll-up))

(use-package helm
  :ensure t
  :config
  (helm-mode 1))

(use-package docker-tramp
  :ensure t)

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

;;; Erlang mode
(setq load-path (cons "/usr/lib/erlang/lib/tools-3.4.1/emacs" load-path))
(setq erlang-root-dir "/usr/lib/erlang")
(setq exec-path (cons "/usr/local/otp/bin" exec-path))
(require 'erlang-start)

;;; custom-set-variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(evil-undo-system 'undo-redo)
 '(package-selected-packages '(docker-tramp helm use-package evil)))
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
