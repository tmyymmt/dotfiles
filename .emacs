(define-key global-map "\C-a" 'start-kbd-macro)
(define-key global-map "\C-q" 'end-kbd-macro)
(define-key global-map "\C-z" 'call-last-kbd-macro)
(define-key global-map "\C-o" 'beginning-of-buffer)
(define-key global-map "\C-l" 'end-of-buffer)
(put 'upcase-region 'disabled nil)

;; linum
(require 'linum)
(global-linum-mode)

(cond
 ( (or (eq window-system 'ns) (eq window-system 'mac) (eq window-system 'x) (eq window-system 'w32) )
   ; ツールバーを消す
   (tool-bar-mode 0)

   ;; タイトルバーにバッファ名
   (setq frame-title-format "%b")
   
   ; 背景色設定
   (custom-set-faces
    '(default ((t (:background "#000000" :foreground "#FFFFFF"))))
    '(cursor (
   	   (((class color) (background dark )) (:background "#00AA00"))
   	   (((class color) (background light)) (:background "#999999"))
   	   (t ())
   	   )))

   ; フレーム透過設定
   (add-to-list 'default-frame-alist '(alpha . (0.9 0.9)))

   (set-frame-height (next-frame) 60)
   (set-frame-width (next-frame) 160)

   (setq initial-frame-alist
       '((left   . 0)                 ; 位置 (X)
        (top    .  0)                  ; 位置 (Y)
        (width  . 160)                  ; サイズ(幅)
        (height .  60)                  ; サイズ(高さ)
        ))
   
   ;;複数ウィンドウを開かないようにする
   (setq ns-pop-up-frames nil)
   )
 )
