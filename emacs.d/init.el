;; Package system
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" "73fe242ddbaf2b985689e6ec12e29fab2ecd59f765453ad0e93bc502e6e478d6" "33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "9c26d896b2668f212f39f5b0206c5e3f0ac301611ced8a6f74afe4ee9c7e6311" default)))
 '(dnd-open-file-other-window t)
 '(fci-rule-color "#49483E")
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   (("#49483E" . 0)
    ("#67930F" . 20)
    ("#349B8D" . 30)
    ("#21889B" . 50)
    ("#968B26" . 60)
    ("#A45E0A" . 70)
    ("#A41F99" . 85)
    ("#49483E" . 100)))
 '(js2-basic-offset 2)
 '(mac-command-modifier nil)
 '(mac-option-modifier (quote meta))
 '(mac-text-scale-standard-width 80)
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(menu-bar-mode nil)
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#5FFFFF" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#FF1493" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#87D700"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#5FD7FF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#CDC673"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#D700D7"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#FF8C00" :weight bold))))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(flymake-errline ((((class color)) (:background nil)))))
(set-face-attribute 'default nil :height 100)

;;;;;;;;;;;;;;;;;;;;
;;  Base things   ;;
;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M-DEL") 'kill-whole-line)

;; Kill current buffer instead of kill->insert name
(global-set-key [(control x) (k)] 'kill-this-buffer)

(show-paren-mode 1)

;; Auto pair parens
(require 'autopair)
(autopair-global-mode)

;; Line numbers
(global-linum-mode)
(setq linum-format "%5d ")

;; Indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Pre-save hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Undo
(setq undo-limit 3600000)
(global-set-key (kbd "C--") 'undo)

;; Theme
(load-theme 'monokai t)

;; Project tree viewer
(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f4] 'neotree-toggle)

;; Autocomplete
(require 'auto-complete)
(global-auto-complete-mode t)
;; AutoComplete Coffee
(add-to-list 'load-path "~/.emacs.d/ac-coffee/")
(require 'ac-coffee)

;; iBuffer (buffers like dired)
(defalias 'list-buffers 'ibuffer)

;; File and buffers interactive opener
(ido-mode 1)

;; Shorten emacs confirmation on important actions (yes/no )
(defalias 'yes-or-no-p 'y-or-n-p)

;; Sublime-like comments
(defun toggle-comment-on-line-or-region ()
  "Comments or uncomments the region or the current line if there is no active region."
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region beg end)))
(global-set-key (kbd "M-/") 'toggle-comment-on-line-or-region)

;; Save files positions
(require 'saveplace)                          ;; get the package
(setq-default save-place t)                   ;; activate it for all buffers
(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean

;; Backups store
(setq temporary-file-directory "~/.emacs.d/backupplace")
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Smex is M-x enhancement
(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))

;; autocomplete
(require 'yasnippet)
(yas-global-mode 1)

;; Autoindent whole buffer
(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(require 'thing-cmds)

(defun mark-word-or-next ()
  "Mark word under point, or next occurence of marked region"
  (interactive)
  (if (not mark-active)
      (progn
        (forward-word)
        (mark-word -1))
    (mc/mark-next-word-like-this 1)))
(global-set-key (kbd "M-d") 'mark-word-or-next)

(defun testo ()
  (interactive)
  (mc/mark-next-like-this 1))

(projectile-global-mode)

(menu-bar-mode -1)
(tool-bar-mode -1)

;; (setq speedbar-hide-button-brackets-flag t
;;       speedbar-show-unknown-files t
;;       speedbar-smart-directory-expand-flag t
;;       speedbar-directory-button-trim-method 'trim
;;       speedbar-use-images nil
;;       speedbar-indentation-width 2
;;       speedbar-use-imenu-flag t
;;       speedbar-file-unshown-regexp "flycheck-.*"
;;       sr-speedbar-width 40
;;       sr-speedbar-width-x 40
;;       sr-speedbar-auto-refresh nil
;;       sr-speedbar-skip-other-window-p t
;;       sr-speedbar-right-side nil)

(global-set-key (kbd "C-x f") 'fiplr-find-file)
(global-set-key (kbd "C-x m") 'magit-status)

;; Back/Forw windows positions
(winner-mode 1)

;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
;; Rename file and buffer in place
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "cNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (Message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)

(require 'flymake-coffee)
(add-hook 'coffee-mode-hook 'flymake-coffee-load)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ect\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.yasnippet\\'" . snippet-mode))

(defun switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))
(global-set-key [f1] 'switch-to-previous-buffer)

(defun save-buffer-always()
  "Save the buffer even if it is not modified."
  (interactive)
  (set-buffer-modified-p t)
  (save-buffer))
(global-set-key (kbd "C-x C-s") 'save-buffer-always)

(global-set-key (kbd "§") 'ace-window)
