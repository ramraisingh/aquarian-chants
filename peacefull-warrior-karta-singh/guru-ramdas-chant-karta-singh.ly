\include "deutsch.ly"
\version "2.18.0"
\include "../paper.ily"


melodie =  \relative c' {
  c4 g'8 g4 g8 | d8 es d c4. |
  r8 es8 es d4. | b4 d8 c4. | \break
  c4 g'8 g4 g8 | d8 es d c4. |
  r8 es8 es d4. | b4 d8 c4. | \break
  g'4 a8 b4 c8 | a g f g4. |
  g4 a8 b4( c8) | a( g) f g4. |
    \bar "|."
   
}

textI = \lyricmode {
  Gu -- ru Gu -- ru Wa -- he Gu -- ru,  Gu -- ru Ram Das Gu -- ru.
  Gu -- ru Gu -- ru Wa -- he Gu -- ru,  Gu -- ru Ram Das Gu -- ru.
  Gu -- ru Gu -- ru Wa -- he Gu -- ru,  Gu -- ru Ram Das Gu -- ru.
}


chordSymbols = \chordmode {
  \semiGermanChords
  a4.:m c g  a:m |
  a:m e:m e:m a:m  |

  a4.:m c g  a:m |
  a:m e:m e:m a:m  |

  a:m c d a:m |
  a:m c d a:m
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 6/8
	    \key g \minor
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
	 title = "Guru Ramdas Chant"
	 composer = "Karta Singh"
	 subtitle = "aus: Sadhana for the peaceful warrior"
	 meter = "Capo 3. Bund"
       }
     }
\markup{Akkorde ohne Capo: Am => Cm, C => Es, G => Bb, Em => Gm, D => F}