(use-package zerodark-theme
  :ensure t
  :init
    (load-theme 'zerodark t))

(let ((class '((class color) (min-colors 89)))
      (default (if (true-color-p) "#abb2bf" "#afafaf"))
      (light (if (true-color-p) "#ccd4e3" "#d7d7d7"))
      (background (if (true-color-p) "#282c34" "#333333"))
      (background-dark (if (true-color-p) "#24282f" "#222222"))
      (background-darker (if (true-color-p) "#22252c" "#222222"))
      (mode-line-inactive (if "#1c2129" "#222222"))
      (mode-line-active (if (true-color-p) "#6f337e" "#875f87"))
      (background-lighter (if (true-color-p) "#3a3f4b" "#5f5f5f"))
      (background-red (if (true-color-p) "#4c3840" "#5f5f5f"))
      (bright-background-red (if (true-color-p) "#744a5b" "#744a5b"))
      (background-purple (if (true-color-p) "#48384c" "#5f5f5f"))
      (background-blue (if (true-color-p) "#38394c" "#444444"))
      (bright-background-blue (if (true-color-p) "#4e5079" "#4e5079"))
      (background-green (if (true-color-p) "#3d4a41" "#5f5f5f"))
      (bright-background-green (if (true-color-p) "#3f6d54" "#3f6d54"))
      (background-orange (if (true-color-p) "#4a473d" "#5f5f5f"))
      (hl-line (if (true-color-p) "#2c323b" "#333333"))
      (grey (if (true-color-p) "#cccccc" "#cccccc"))
      (grey-dark (if (true-color-p) "#666666" "#666666"))
      (highlight (if (true-color-p) "#3e4451" "#5f5f5f"))
      (comment (if (true-color-p) "#687080" "#707070"))
      (orange (if (true-color-p) "#da8548" "#d7875f"))
      (orange-light (if (true-color-p) "#ddbd78" "#d7af87"))
      (red (if (true-color-p) "#ff6c6b" "#ff5f5f"))
      (purple (if (true-color-p) "#c678dd" "#d787d7"))
      (purple-dark (if (true-color-p) "#64446d" "#5f5f5f"))
      (blue (if (true-color-p) "#61afef" "#5fafff"))
      (blue-dark (if (true-color-p) "#1f5582" "#005f87"))
      (green (if (true-color-p) "#98be65" "#87af5f"))
      (green-light (if (true-color-p) "#9eac8c" "#afaf87"))
      (peach "PeachPuff3")
      (diff-added-background (if (true-color-p) "#284437" "#284437"))
      (diff-added-refined-background (if (true-color-p) "#1e8967" "#1e8967"))
      (diff-removed-background (if (true-color-p) "#583333" "#580000"))
      (diff-removed-refined-background (if (true-color-p) "#b33c49" "#b33c49"))
      (diff-current-background (if (true-color-p) "#29457b" "#29457b"))
      (diff-current-refined-background (if (true-color-p) "#4174ae" "#4174ae")))

  (custom-theme-set-faces
   'zerodark

   `(fancy-battery-charging ((,class (:background ,background-blue :height 1.0 :bold t))))
   `(fancy-battery-discharging ((,class (:background ,background-blue :height 1.0))))
   `(fancy-battery-critical ((,class (:background ,background-blue :height 1.0))))

   ;; mode line stuff
   `(mode-line ((,class (:background ,background-blue :height 1.0 :foreground ,blue
                                     :distant-foreground ,background-blue
                                     :box ,(when zerodark-use-paddings-in-mode-line
                                             (list :line-width 6 :color background-blue))))))

   `(mode-line-inactive ((,class (:background ,background-blue :height 1.0 :foreground ,default
                                              :distant-foreground ,background-blue
                                              :box ,(when zerodark-use-paddings-in-mode-line
                                                      (list :line-width 6 :color background-blue))))))

   `(header-line ((,class (:inherit mode-line-inactive))))

   `(powerline-active0 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
                                         :distant-foreground ,background-blue))))
   `(powerline-active1 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
                                         :distant-foreground ,background-blue))))
   `(powerline-active2 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
                                         :distant-foreground ,background-blue))))
   `(powerline-inactive0 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
                                           :distant-foreground ,background-blue))))
   `(powerline-inactive1 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
                                           distant-foreground ,background-blue))))
   `(powerline-inactive2 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
                                           :distant-foreground ,background-blue))))

   `(dashboard-heading-face ((,class (:background ,background :foreground ,blue
                                                  :bold t :height 1.2))))
   `(dashboard-banner-logo-title-face ((,class (:background ,background :foreground ,blue
                                                            :bold t :height 1.2))))
   `(widget-button ((,class (:background ,background :foreground ,default :bold nil
                                         :underline t :height 0.9))))

   ;; erc stuff
   `(erc-nick-default-face ((,class :foreground ,blue :background ,background :weight bold)))

   ;; org stuff
   `(outline-1 ((,class (:foreground ,blue :weight bold :height 1.8 :bold nil))))
   `(outline-2 ((,class (:foreground ,purple :weight bold :height 1.7 :bold nil))))
   `(outline-3 ((,class (:foreground ,peach :weight bold :height 1.6 :bold nil))))
   `(outline-4 ((,class (:foreground ,green-light :weight bold :height 1.5 :bold nil))))
   `(outline-5 ((,class (:foreground ,blue :weight bold :height 1.4 :bold nil))))
   `(outline-6 ((,class (:foreground ,purple :weight bold :height 1.3 :bold nil))))
   `(outline-7 ((,class (:foreground ,peach :weight bold :height 1.2 :bold nil))))
   `(outline-8 ((,class (:foreground ,green-light :weight bold :height 1.1 :bold nil))))

   `(org-block-begin-line ((,class (:background ,background-blue :foreground ,blue
                                                :bold t :height 1.0))))
   `(org-block-end-line ((,class (:background ,background-blue :foreground ,blue
                                              :bold t :height 1.0))))))

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
    (setq spaceline-buffer-encoding-abbrev-p nil)
    (setq spaceline-line-column-p nil)
    (setq spaceline-line-p nil)
    (setq powerline-default-separator (quote arrow))
    (spaceline-spacemacs-theme))

(use-package fancy-battery
  :ensure t
  :config
    (setq fancy-battery-show-percentage t)
    (setq battery-update-interval 15)
    (if window-system
      (fancy-battery-mode)
      (display-battery-mode)))

(setq display-time-24hr-format t)
(setq display-time-format "%H:%M - %d %B %Y")
(display-time-mode 1)

(use-package diminish
  :ensure t
  :init)

(setq line-number-mode t)
(setq column-number-mode t)

(defun config-visit ()
  (interactive)
  (find-file "~/.emacs.d/config.org"))
(global-set-key (kbd "C-c e") 'config-visit)

(defun config-reload ()
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(global-set-key (kbd "C-c r") 'config-reload)
