#(set-global-staff-size 18)
\paper {
  #(define fonts
    (make-pango-font-tree "Optima"
                          "Arial"
                          "Luxi Mono"
     1
   ))
  ragged-bottom = ##t
  print-all-headers = ##t
  tocTitleMarkup = \markup \huge \bold \column {
    \fill-line { \null "Inhaltsverzeichnis" \null }
    \hspace #1
  }
  tocCDMarkup = \markup \large \column {
    \hspace #1
    \fill-line { \null \italic \fromproperty #'toc:text \null }
    \hspace #1
  }
}

%% Adds a CD-Title to the ToC
tocCD =
#(define-music-function (parser location text) (markup?)
  (add-toc-item! 'tocCDMarkup text))


ek-ong-kar = \markup{ \override #'(font-name . "Raaj Script Medium") { ੴ } }