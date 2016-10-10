\include "deutsch.ly"
\version "2.18.0"
\include "../paper.ily"


melodie =  \relative c'' {
  g'4 g8 g f4 es8 f | g8 g g g f es8 ~ es4 |
  g8 g g g f es8 ~ es4 | g8 g b4 g8 f es16 es ~es8 |
  es8 es d d c16 c16~ c8 ~ c4 
  \bar "|."
    
}

textI = \lyricmode {
  Wah Yan -- ti, kar  yan -- ti, djag -- (e) -- du -- t(i) pa -- ti,
  aa -- dak it -- (e) waa -- haa, brah -- ma deh, tre -- scha gu -- ru,
  it -- (e) Wa -- he Gu -- ru. __ 
}


chordSymbols = \chordmode {
  \semiGermanChords
  c2 a:m | c a:m | c a:m |
  a:m c | c4 g4 a2:m |
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 4/4
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
	 title = "Wah Yanti"
	 composer = "Karta Singh"
	 subtitle = "aus: Sadhana for the peaceful warrior"
	 meter = "Capo 3. Bund"
       }
     }
\markup{Akkorde ohne Capo:  C => Es, Am => Cm, G => Bb}