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
 '(ansi-color-map (ansi-color-make-color-map) t)
 '(ansi-color-names-vector
   ["#110F13" "#B13120" "#719F34" "#CEAE3E" "#7C9FC9" "#7868B5" "#009090" "#F4EAD5"])
 '(ansi-term-color-vector
   [unspecified "#14191f" "#d15120" "#81af34" "#deae3e" "#7e9fc9" "#a878b5" "#7e9fc9" "#dcdddd"] t)
 '(awesome-tray-active-modules (quote ("location" "parent-dir" "git" "mode-name" "circe")))
 '(beacon-color "#cc6666")
 '(boon-enclosures
   (quote
    ((65 "⟨" "⟩")
     (97 "<" ">")
     (98 "[" "]")
     (99 "{-" "-}")
     (100 "\"" "\"")
     (68 "``" "''")
     (102 "«" "»")
     (104 "#" "#")
     (109 "`" "'")
     (111 "⟦" "⟧")
     (112 "(" ")")
     (113 "'" "'")
     (114 "{" "}")
     (116 "~" "~")
     (96 "`" "`"))))
 '(boon-mode t)
 '(boon-special-mode-list
   (quote
    (Buffer-menu-mode debugger-mode ediff-mode git-rebase-mode mu4e-headers-mode mu4e-view-mode org-agenda-mode cfw:calendar-mode geben-mode)))
 '(column-number-mode t)
 '(company-box-icons-alist (quote company-box-icons-all-the-icons))
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(company-racer-executable "~/bin/racer")
 '(compilation-message-face (quote default))
 '(csv-separators (quote ("," "	" ";")))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("e62b66040cb90a4171aa7368aced4ab9d8663956a62a5590252b0bc19adde6bd" "11e0bc5e71825b88527e973b80a84483a2cfa1568592230a32aedac2a32426c1" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "ef07cb337554ffebfccff8052827c4a9d55dc2d0bc7f08804470451385d41c5c" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "19b9349a6b442a2b50e5b82be9de45034f9b08fa36909e0b1be09433234610bb" "e2ba9d9a5609c6809615d68b2e3ee6817079cd0195143385c24ee4e4a8e05c23" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "f180f2aca4c8771b0f3966703502b692b3d1442ace58abd74f2b6796a86e3f9f" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "eb7be1648009af366d83f855191057bdc09348a2d9353db31da03b1cdec50cc5" "6e32d7aab92ad2ad4d3a915cd9ace5dc1d9d8f0486b785bdb86c79ff5ca0c189" "5b58a00495a2c7dbec64dc91b8c6c1bdb818d4e547d5ed9bae81d480e678f911" "565aa482e486e2bdb9c3cf5bfb14d1a07c4a42cfc0dc9d6a14069e53b6435b56" "2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "76dc63684249227d64634c8f62326f3d40cdc60039c2064174a7e7a7a88b1587" "13a654e817774e669cc17ee0705a3e1dfc62aedb01005a8abe2f8930a1d16d2e" "ec679d67bb792e49a89bfe8fa464d88af36c9cc85796ab84054f29038680abe3" "f730a5e82e7eda7583c6526662fb7f1b969b60b4c823931b07eb4dd8f59670e3" "e4cbf084ecc5b7d80046591607f321dd655ec1bbb2dbfbb59c913623bf89aa98" "e1ad20f721b90cc8e1f57fb8150f81e95deb7ecdec2062939389a4b66584c0cf" "d890583c83cb36550c2afb38b891e41992da3b55fecd92e0bb458fb047d65fb3" "8dc7f4a05c53572d03f161d82158728618fb306636ddeec4cce204578432a06d" "3edbdd0ad45cb8f7c2575c0ad8f6625540283c6e928713c328b0bacf4cfbb60f" "e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "7997e0765add4bfcdecb5ac3ee7f64bbb03018fb1ac5597c64ccca8c88b1262f" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "19ba41b6dc0b5dd34e1b8628ad7ae47deb19f968fe8c31853d64ea8c4df252b8" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "6de7c03d614033c0403657409313d5f01202361e35490a3404e33e46663c2596" "87233846530d0b2c50774c74c4aca06a1472504c63ccd4ab2b1021b3e56a69e9" "d9129a8d924c4254607b5ded46350d68cc00b6e38c39fc137c3cfb7506702c12" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "227edf860687e6dfd079dc5c629cbfb5c37d0b42a3441f5c50873ba11ec8dfd2" "47aa6e82734866b2915781c6e1d9517bd897d45fe8aec360dd4b6294fec73068" "e239877fd4078f3d199e92482295f69d8ddc9f9ec0331f09692c0d5b7c13d908" "71669abbe2a456288ba38afbba1ce731f5a0b17ef146c7d312dd1d9229857773" "a3f85ee6e877f02e239d2a6633a5b8263b53113751aca549aa4c5f458829c95d" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "ba9be9caf9aa91eb34cf11ad9e8c61e54db68d2d474f99a52ba7e87097fa27f5" "af53ecfbc4ceca20dc5bfc66c88544a216324bee58507c2624dda25cde7e98f4" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "95db78d85e3c0e735da28af774dfa59308db832f84b8a2287586f5b4f21a7a5b" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(dap-mode t nil (dap-mode))
 '(dap-ui-mode t nil (dap-ui))
 '(debug-on-error nil)
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
 '(fci-rule-color "#383838")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(flycheck-jshintrc (expand-file-name "~/.jshintrc"))
 '(flycheck-typescript-tslint-config (expand-file-name "~/.tslint.json"))
 '(frame-background-mode (quote dark))
 '(fringe-mode 4 nil (fringe))
 '(ggtags-highlight-tag 1.0)
 '(ggtags-highlight-tag-delay 1.0)
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
 '(golden-ratio-mode nil)
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
 '(ibuffer-deletion-face (quote diredp-deletion-file-name))
 '(ibuffer-marked-face (quote diredp-flag-mark))
 '(ivy-case-fold-search-default t)
 '(ivy-display-function (quote ivy-display-function-lv) t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#D08770"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#A3BE8C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#4f5b66"))
 '(js2-global-externs nil)
 '(js2-include-node-externs t)
 '(linum-format " %6d ")
 '(lsp-intelephense-completion-insert-use-declaration nil)
 '(lsp-intelephense-format-enable nil)
 '(lsp-php-language-server-command
   (quote
    ("php7.2" "/home/tregner/.composer/vendor/bin/php-language-server.php")))
 '(lsp-php-show-file-parse-notifications nil)
 '(lsp-php-workspace-root-detectors
   (quote
    (".projectile " lsp-php-root-projectile lsp-php-root-composer-json "index.php" "robot")))
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-position (quote top))
 '(lsp-ui-doc-use-childframe nil)
 '(lsp-ui-doc-use-webkit nil)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-fontify (quote always))
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-hover t)
 '(lsp-ui-sideline-update-mode (quote line))
 '(magit-blame-echo-style (quote headings))
 '(magit-blame-styles
   (quote
    ((headings
      (heading-format . "%-20a %C %s
"))
     (margin
      (margin-format " %s%f" " %C %a" " %H")
      (margin-width . 42)
      (margin-face . magit-blame-margin)
      (margin-body-face magit-blame-dimmed))
     (highlight
      (highlight-face . magit-blame-highlight))
     (lines
      (show-lines . t)))))
 '(magit-diff-use-overlays nil)
 '(magit-pull-arguments (quote ("--rebase")))
 '(magit-use-overlays nil t)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(objed-cursor-color "#BF616A")
 '(package-selected-packages
   (quote
    (solaire-mode flycheck-phpstan all-the-icons flyspell-correct-ivy lsp-origami plantuml-mode engine-mode which-key-posframe poly-org beacon subatomic-theme org-projectile company-web all-the-icons-ivy counsel-projectile mmm-mode doom-themes doom-modeline cyphejor oer-reveal nimbus-theme doneburn-theme dap-mode which-key boon linum-relative sx lsp-sh darkburn-theme jazz-theme obsidian-theme popup-imenu klere-theme dakrone-theme liso-theme deadgrep kaolin-themes hook-helpers rainbow-delimiters atom-dark-theme calmer-forest-theme exotica-theme lsp-javascript-typescript lsp-ui company-lsp lsp-mode lsp-php eglot frame-local ov editorconfig editorconfig-charset-extras editorconfig-custom-majormode editorconfig-domain-specific zenburn-theme phpcbf projectile-ripgrep projectile-speedbar company-box moe-theme kaleidoscope ido-completing-read+ persp-mode persp-mode-projectile-bridge rg speed-type ob-http link-hint sql-indent ido-vertical-mode dracula-theme badger-theme flyspell-correct urlenc railscasts-reloaded-theme creamsody-theme material-theme zeal-at-point company-php outline-magic firebelly-theme diminish notify company-racer company-tern flycheck-rust racer rustfmt nlinum php-refactor-mode ac-php httpd inf-groovy magit-tramp elixir-mix yagist xml-rpc wrap-region window-layout wgrep-ag volatile-highlights vagrant underwater-theme twilight-bright-theme twilight-anti-bright-theme tracking sunrise-x-mirror sunrise-x-loop stylus-mode stumpwm-mode string-inflection sr-speedbar soothe-theme smooth-scrolling smex smart-cursor-color ruby-tools ruby-test-mode ruby-refactor ruby-end ruby-dev rotate rinari repl-toggle popwin popup phpunit php-auto-yasnippets paredit pallet origami omni-scratch names minimap lua-mode lentic json-rpc jade-mode ix impatient-mode image+ httprepl handlebars-mode grunt groovy-mode golden-ratio go-errcheck go-eldoc go-direx git-timemachine fringe-helper flymake-yaml flymake-elixir flymake-cursor flx-isearch flx-ido flatland-theme expand-region erc-tweet epresent elnode elixir-yasnippets edbi drag-stuff dockerfile-mode db-pg csv-mode company-inf-ruby color-theme-approximate coffee-mode clues-theme centered-cursor-mode caskxy ample-theme alect-themes alchemist ag ace-window ace-jump-buffer 2048-game)))
 '(paradox-async-display-buffer-function nil)
 '(paradox-automatically-star nil)
 '(paradox-execute-asynchronously nil)
 '(paradox-spinner-type (quote progress-bar-filled))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(persp-add-buffer-on-after-change-major-mode (quote free))
 '(persp-add-buffer-on-find-file nil)
 '(persp-auto-resume-time -1.0)
 '(persp-auto-save-opt 0)
 '(persp-interactive-completion-system (quote ido))
 '(persp-keymap-prefix "p")
 '(persp-mode t nil (persp-mode))
 '(persp-mode-projectile-bridge-mode t nil (persp-mode-projectile-bridge))
 '(persp-mode-projectile-bridge-persp-name-prefix "")
 '(persp-set-ido-hooks t)
 '(persp-show-modestring (quote (quote header)))
 '(php-lineup-cascaded-calls nil)
 '(php-mode-lineup-cascaded-calls nil)
 '(php-refactor-patch-command "patch --no-backup-if-mismatch -p1")
 '(pomidor-seconds 1800)
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(projectile-global-mode t)
 '(ripgrep-arguments (quote ("--no-ignore-vcs")))
 '(safe-local-variable-values
   (quote
    ((php-project-root projectile-project-root)
     (php-project-root . auto)
     (web-mode-enable-auto-indentation)
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
 '(sql-product (quote postgres))
 '(subatomic-high-contrast t)
 '(subatomic-more-visible-comment-delimiters t)
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
 '(undo-tree-visualizer-timestamps t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#b58900")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#859900")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#2aa198")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(warning-minimum-level :error)
 '(web-mode-script-padding 4)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(awesome-tray-module-circe-face ((t (:foreground "#dd3322" :weight bold))))
 '(centaur-tabs-default ((t (:inherit tabbar-default))))
 '(centaur-tabs-selected ((t (:inherit tabbar-selected))))
 '(centaur-tabs-selected-modified ((t (:inherit tabbar-selected-modified))))
 '(centaur-tabs-unselected ((t (:inherit tabbar-unselected))))
 '(centaur-tabs-unselected-modified ((t (:inherit tabbar-unselected-modified))))
 '(company-scrollbar-bg ((t (:background "#3f3f3f"))))
 '(company-scrollbar-fg ((t (:background "#262626"))))
 '(company-tooltip ((t (:inherit default :background "#545454"))))
 '(company-tooltip-common ((t (:inherit default :background "#3f3f3f" :foreground "#ecece9"))))
 '(company-tooltip-selection ((t (:inherit default :foreground "#3f3f3f" :background "#ecece9"))))
 '(lsp-ui-peek-line-number ((t (:foreground "grey45"))))
 '(persp-selected-face ((t (:foreground "saddle brown" :weight bold))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "coral"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "saddle brown"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "olive drab"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark turquoise"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "orchid"))))
 '(rainbow-delimiters-unmatched-face ((t (:inherit rainbow-delimiters-base-face :foreground "red1"))))
 '(sidebar-ignored-dir ((t (:foreground "slate gray"))))
 '(sidebar-ignored-file ((t (:foreground "slate gray"))))
 '(sidebar-untracked ((t (:foreground "dim gray"))))
 '(term ((t (:inherit default)))))
