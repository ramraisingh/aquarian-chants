
\include "deutsch.ly"

\version "2.18.0"

\include "../paper.ily"

melodie =  \relative g' {
  a16 a |
  e'4 e8 e4 d16 c |
  d4 e8 d4 d16 c | 
  d4 e8 d4 a16 a |
  c4 a8 a4 

  \bar "|."
   
}

textI = \lyricmode {
  Hum -- meee hum brahm -- ham,
  Hum -- meee hum brahm -- ham,
  Hum -- meee hum brahm -- ham,
  Hum -- meee hum brahm -- ham.
}

chordSymbols = \chordmode {
  \semiGermanChords
  s8 |
  a2.:m g g a:m
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	   \time 6/8
	   \partial 8*1
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
	 title = "Slower Hummee Hum Brahmham"
	 composer = "Guru Charan Singh & Guru Sangat Singh"
	 subtitle = "aus: Hummee Hum Brahm Hum"
       }
}
