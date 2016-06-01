(deftheme tregner
  "Created 2016-06-01.")

(custom-theme-set-variables
 'tregner
 '(ansi-color-names-vector ["#fdf6e3" "#dc322f" "dark olive green" "dark goldenrod" "#268bd2" "#d33682" "dark cyan" "#657b83"])
 '(compilation-message-face (quote default))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(gnus-logo-colors (quote ("#528d8d" "#c0c0c0")))
 '(gnus-mode-line-image-cache (quote (image :type xpm :ascent center :data "/* XPM */
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
\"###########.######\" };"))))

(custom-theme-set-faces
 'tregner
 '(font-lock-builtin-face ((t (:foreground "RoyalBlue3"))))
 '(font-lock-comment-face ((t (:foreground "bisque4" :slant oblique))))
 '(font-lock-constant-face ((t (:foreground "LightBlue2"))))
 '(font-lock-function-name-face ((t (:foreground "olive drab"))))
 '(font-lock-keyword-face ((t (:foreground "NavajoWhite2"))))
 '(font-lock-string-face ((t (:foreground "aquamarine3"))))
 '(font-lock-variable-name-face ((t (:foreground "steel blue"))))
 '(fringe ((t (:background "gray3"))))
 '(minibuffer-prompt ((t (:foreground "DarkOrange3" :weight bold))))
 '(default ((t (:inherit nil :background "gray3" :foreground "dark gray" :family "Input Mono" :foundry "FBI " :slant normal :weight normal :height 83 :width normal))))
 '(company-tooltip ((t (:inherit default :background "#2e2e2e"))))
 '(company-scrollbar-bg ((t (:background "#212121"))))
 '(company-scrollbar-fg ((t (:background "#141414"))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(company-tooltip-common ((t (:inherit default :background "#212121" :foreground "#767676")))))

(provide-theme 'tregner)
