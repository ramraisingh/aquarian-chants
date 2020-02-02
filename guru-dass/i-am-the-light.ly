
\include "deutsch.ly"

\version "2.18.0"

\include "../paper.ily"


melodie =  \relative g' {
  c2. | g'2 r8 g8 | f4 es d | c2. | 
  es4 es es8 d | b2. | 
  d4 d4 d8  es8 | c2. | 
  c4 c c~ | c c d | c h( g'2) 

  \bar "|."
   
}

textI = \lyricmode {
  \set stanza = #"1. "
  I am the light of my soul,
  I am beau -- ti -- ful,
  I am boun -- ty -- ful,
  I am blessed, 
  I am, I am. __
}

chordSymbols = \chordmode {
  \semiGermanChords
 
  %% Verse 1
  a2.:m | a:m | g | f | f  

  
}


\score {
  <<
    \context ChordNames {
      \set Score.markFormatter = #format-mark-box-letters
      \chordSymbols
    }
    \new Staff {
      \time 3/4
      \key c \minor
      \new Voice = "mel" 
	  \melodie  \bar "|."
    }
    \new Lyrics \lyricsto "mel" {
      \textI
    }
  >>
  \layout {
    \context {\Staff \RemoveEmptyStaves }
  }
  \header {
    title = "I am the light of my soul"
    composer = "Guru Dass"
    subtitle = "aus: European Yoga Festival"
    meter = "Capo 3. Bund"
  }
}
\markup{Akkorde ohne Capo: A => C, G => B, F => As, E => G} 