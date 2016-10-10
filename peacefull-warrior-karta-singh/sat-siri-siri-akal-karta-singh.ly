\include "deutsch.ly"
\version "2.18.0"

\include "../paper.ily"

melodie =  \relative d'' {
  d4 d8 c4 c8 | d4 d8 a4. |
  d8 d e f4. | f8 e d e4. |
  r4.  | 
  e8 e f g4. | r8 f8 e f4. |
  r8 a,8 e' d4 c8 | a8 e'8. c16 | d4. |
  r4.
  \bar "|."
   
}

textI = \lyricmode {
  Sat Si -- ri Si -- ri A -- kal
  Si -- ri A -- kal Ma -- ha A -- kal
  Ma -- ha A -- kal  Sat -- e Nam
  A -- kal Mu -- rat Wa -- he Gu -- ru
}


chordSymbols = \chordmode {
  \semiGermanChords
  d4.:m c | d:m a:m |
  d:m f | f c | c |
  c g:m | g:m d:m | d:m a:m
  a:m d:m a:m
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 3/8
	    \key a \minor
	     \new Voice = "mel" { \melodie  \bar "|." }
	   }
	   \new Lyrics \lyricsto "mel" {
	     \textI
	   }
       >>
	\layout {
	  \context {\Staff \RemoveEmptyStaves }
	}
       
       \header {
	 title = "Sat Siri Siri Akal"
	 composer = "Karta Singh"
	 subtitle = "aus: Sadhana for the peaceful warrior"
	 meter = "schwungvoller Dreier"
       }
     }
