(set-face-attribute 'default nil
  :family "Myrica M"
  :height 150)

(set-fontset-font t 'japanese-jisx0208
  (font-spec
    :family "Myrica M"
    ))

(set-fontset-font "fontset-default" '#x3000 ;IDEOGRAPHIC SPACE
  "Ricty Diminished")
