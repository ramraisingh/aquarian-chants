\include "deutsch.ly"
\version "2.18.0"
\include "../paper.ily"

melodie =  \relative d' {
  r4 c8 d es4 g | f f f f |
  r4 c8 d es4 g | f f f f |
  r4 c8 d es4 g | f f f f |
  r4 c8 d es4 g | f f f f |\break
  r4 as8 as8 as4 f | g g g8( f) es4 |
  r4 f8 f f4 c | es es es8( d) c4 |
  r4 as'8 as8 as4 f | g g g8( f) es4 |
  r4 f8 f f4 c | es es es8( d) c4 |  
    \bar "|."
   
}

textI = \lyricmode {
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o
}


chordSymbols = \chordmode {
  \semiGermanChords
  a1:m d:m a:m d:m |
  a:m d:m a:m d:m |
  f c d:m a:m |
  f c d:m a:m
}

\score {
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 4/4
	    \key c \minor
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
	 title = "Wahe Guru Wahe Jio"
	 composer = "Karta Singh"
	 subtitle = "aus: Sadhana for the peaceful warrior"
	 meter = "langsam schneller werdend, Capo 3. Bund"
       }
     }
\markup{Akkorde ohne Capo: Am => Cm, Dm => Fm, F => As, C => Es}