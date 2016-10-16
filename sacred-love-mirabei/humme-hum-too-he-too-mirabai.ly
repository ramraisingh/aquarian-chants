
\include "deutsch.ly"

\version "2.18.0"

\include "../paper.ily"

melodie =  \relative g'' {
  \repeat volta 2 {
    r4 e8 e d4 r4 | r4 g8 e8 ~e8 d8 ~d4  |
    c2 h4. a8| a2 r2 |
    
    r4 e'8 e d4 r4 | r4 g8 e8 ~e8 d8 ~d4  |
    c2 h4. a8| a2 r2 | 
  }

  \repeat volta 2 {
    
    r4 c8 d h4 r4 | c4. d8 h4 r4  |
    c2 h4. a8| a2 r2 |
    
    r4 c8 d h4 r4 | c4. d8 h4 r4  |
    c2 h4. a8| <a e'>2 r2| 
  }
    \bar "|."
}

textI = \lyricmode {
  Hum -- mee hum, too mee too
  Wa -- he Gu -- ru.
  I am thine
  mine my -- self
  Wa -- he Gu -- ru.
  
  Hum -- mee hum, too mee too
  Wa -- he Gu -- ru.
  I am thine
  mine my -- self
  Wa -- he Gu -- ru.
}

chordSymbols = \chordmode {
  \semiGermanChords
  a2:m g | 
  a2:m g | 
  a2:m g | 
  a2:m g |
   a2:m g | 
  a2:m g | 
  a2:m g | 
  a2:m g | 
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	   \chordSymbols
	 }
	 \new Staff {
	    \time 4/4
	    \key a \minor
	     \new Voice = "mel" { \melodie  \bar ":|."  }
	   }
	   \new Lyrics \lyricsto "mel" {
	     \textI
	   }
       >>
	\layout {
	  \context {\Staff \RemoveEmptyStaves }
	}
       \header {
	 title = "Hummee hum, too mee too"
	 composer = "Mirabai Ceiba"
	 subtitle = "aus: Sacred Love Meditations"
       }
}
