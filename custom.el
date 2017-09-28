(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ag-highlight-search t)
 '(ag-reuse-buffers t)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#c5c8c6" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#8abeb7" "#373b41"))
 '(ansi-term-color-vector
   [unspecified "#14191f" "#d15120" "#81af34" "#deae3e" "#7e9fc9" "#a878b5" "#7e9fc9" "#dcdddd"] t)
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(csv-separators (quote ("," "	" ";")))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "6de7c03d614033c0403657409313d5f01202361e35490a3404e33e46663c2596" "87233846530d0b2c50774c74c4aca06a1472504c63ccd4ab2b1021b3e56a69e9" "d9129a8d924c4254607b5ded46350d68cc00b6e38c39fc137c3cfb7506702c12" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "227edf860687e6dfd079dc5c629cbfb5c37d0b42a3441f5c50873ba11ec8dfd2" "47aa6e82734866b2915781c6e1d9517bd897d45fe8aec360dd4b6294fec73068" "e239877fd4078f3d199e92482295f69d8ddc9f9ec0331f09692c0d5b7c13d908" "71669abbe2a456288ba38afbba1ce731f5a0b17ef146c7d312dd1d9229857773" "a3f85ee6e877f02e239d2a6633a5b8263b53113751aca549aa4c5f458829c95d" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "ba9be9caf9aa91eb34cf11ad9e8c61e54db68d2d474f99a52ba7e87097fa27f5" "af53ecfbc4ceca20dc5bfc66c88544a216324bee58507c2624dda25cde7e98f4" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "95db78d85e3c0e735da28af774dfa59308db832f84b8a2287586f5b4f21a7a5b" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(emms-mode-line-icon-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(es-always-pretty-print t)
 '(es-cc-endpoint "http://192.168.16.249:9200/")
 '(es-default-url "http://192.168.16.249:9200/_search?pretty=true")
 '(fci-rule-character-color "#192028")
 '(fci-rule-color "#373b41")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(fringe-mode 4 nil (fringe))
 '(ggtags-highlight-tag 1.0)
 '(ggtags-highlight-tag-delay 1.0)
 '(gnus-article-sort-functions (quote (gnus-article-sort-by-date)))
 '(gnus-goto-next-group-when-activating nil)
 '(gnus-logo-colors (quote ("#528d8d" "#c0c0c0")) t)
 '(gnus-mode-line-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };")) t)
 '(golden-ratio-mode t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-tags-on-save t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hindent-style "gibiansky")
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-sexp-background-color "#1c1f26")
 '(js2-global-externs nil)
 '(js2-include-node-externs t)
 '(linum-format " %6d ")
 '(magit-diff-use-overlays nil)
 '(magit-pull-arguments (quote ("--rebase")))
 '(magit-use-overlays nil t)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (spaceline spacemacs-theme ob-http smart-mode-line-powerline-theme helpful company-php markdown-preview-mode tide link-hint monokai-alt-theme thinks sql-indent ido-vertical-mode dracula-theme pomidor badger-theme mmm-mode flyspell-correct urlenc es-mode darktooth-theme dashboard railscasts-reloaded-theme creamsody-theme focus material-theme zeal-at-point helm ox-reveal outline-magic firebelly-theme diminish hindent color-theme-sanityinc-tomorrow ranger notify company-racer company-tern cargo flycheck-rust racer rust-mode rustfmt fullframe nlinum psysh paradox php-refactor-mode httpd inf-groovy magit-tramp elixir-mix yaml-mode yagist xml-rpc wrap-region window-layout window-jump wgrep-ag web-mode volatile-highlights vimish-fold vagrant use-package undo-tree underwater-theme twilight-bright-theme twilight-anti-bright-theme tracking sunrise-x-mirror sunrise-x-loop stylus-mode stumpwm-mode string-inflection sr-speedbar soothe-theme smooth-scrolling smex smart-mode-line smart-cursor-color slime ruby-tools ruby-test-mode ruby-refactor ruby-end ruby-dev rotate rinari restclient repl-toggle prodigy popwin popup phpunit php-auto-yasnippets persp-projectile paredit pallet origami org-journal omni-scratch nodejs-repl names minimap markdown-mode magit lua-mode lentic json-rpc json-mode js2-refactor js-comint jade-mode jabber ix itail impatient-mode image+ hydra httprepl highlight-thing haskell-mode handlebars-mode grunt groovy-mode golden-ratio go-errcheck go-eldoc go-direx git-timemachine ggtags geben fringe-helper flymake-yaml flymake-elixir flymake-cursor flycheck flx-isearch flx-ido flatland-theme fill-column-indicator feature-mode expand-region ess erc-tweet erc-image epresent elnode elixir-yasnippets edbi ecukes drag-stuff dockerfile-mode dired-single diff-hl dic-lookup-w3m db-pg csv-mode company-inf-ruby color-theme-approximate coffee-mode clues-theme circe centered-cursor-mode caskxy bash-completion auto-compile auctex ample-theme alect-themes alchemist aggressive-indent ag ace-window ace-jump-buffer 2048-game)))
 '(paradox-automatically-star nil)
 '(php-refactor-patch-command "patch --no-backup-if-mismatch -p1")
 '(pomidor-seconds 1800)
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(projectile-global-mode t)
 '(safe-local-variable-values
   (quote
    ((web-mode-enable-auto-indentation)
     (projectile-ignored-directories list ".cask")
     (projectile-indexing-method . native)
     (projectile-enable-caching . t)
     (eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1))
     (firestarter . ert-run-tests-interactively)
     (encoding . utf-8)
     (org-confirm-babel-evaluate)
     (eval hs-hide-all)
     (eval when
           (and
            (buffer-file-name)
            (file-regular-p
             (buffer-file-name))
            (string-match-p "^[^.]"
                            (buffer-file-name)))
           (emacs-lisp-mode)
           (when
               (fboundp
                (quote flycheck-mode))
             (flycheck-mode -1))
           (unless
               (featurep
                (quote package-build))
             (let
                 ((load-path
                   (cons ".." load-path)))
               (require
                (quote package-build))))
           (package-build-minor-mode)))))
 '(smartparens-global-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote sml/global)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#2aa198" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#dc322f" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#859900"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#268bd2" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#b58900"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#d33682"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#cb4b16" :weight bold))))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tramp-syntax (quote default) nil (tramp))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#3f3f3f"))))
 '(company-scrollbar-fg ((t (:background "#262626"))))
 '(company-tooltip ((t (:inherit default :background "#545454"))))
 '(company-tooltip-common ((t (:inherit default :background "#3f3f3f" :foreground "#ecece9"))))
 '(company-tooltip-selection ((t (:inherit default :foreground "#3f3f3f" :background "#ecece9"))))
 '(whitespace-newline ((t (:background "#222222" :foreground "#888888"))))
 '(whitespace-tab ((t (:background "#202020" :foreground "#969896")))))
