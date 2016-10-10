\include "deutsch.ly"
\version "2.18.0"
\include "../paper.ily"

melodie =  \relative d'' {
 \repeat volta 2 {
   cis8 cis cis cis e8 e e e | \tuplet 3/2 { dis4 cis h } cis2 |
   r4 cis e dis8 cis8 ~ | cis2 r2 |
   
   cis8 cis cis cis e8 e e e | \tuplet 3/2 { a4 a gis } a2 |
   r4 e e e8 dis8 ~ | dis2 r2 |
 }

 \break
 
 gis8 gis gis gis fis fis e dis |  \tuplet 3/2 {dis4 cis h} cis2 |
 r4 gis'4 fis e8 h8 ~ | h2 r2 

 gis'8 gis gis gis fis fis e dis |  \tuplet 3/2 {dis4 cis h} cis2 |
 r4 cis4 cis d8 h8 ~ | h2 r2 
 \bar "|."
   
}

textI = \lyricmode {
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o __ 
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o __ 
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o __ 
  Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Gu -- ru Wa -- he Ji -- o __ 
}


chordSymbols = \chordmode {
  \semiGermanChords
  cis1:m | fis:m | cis:m | fis:m | cis:m | fis:m |
  a h 

  cis1:m | fis:m | cis:m | fis:m | cis:m | fis:m |
  a h 
}

\score {
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 4/4
	    \key cis \minor
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
	 composer = "Mirabai Ceiba"
	 subtitle = "aus: Mountain Sadhana"
	 meter = "langsam schneller werdend"
       }
     }
