\include "deutsch.ly"
\version "2.18.0"
\include "../paper.ily"


melodie =  \relative d'' {
  g4 g fis d | g g fis d |
  e e d h | e d2. |
  e8 e e4 d8 d c c |
  e8 e e4 d8 d c c
  g'8 g g4 fis8 fis  d d |
  d8 e d2. |
  r1
  \bar ":|"
    
}

textI = \lyricmode {
  Saa re saa saa, saa re saa saa, saa re saa saa, saa rang.
  Har -- re re, har -- re  har -- re,
  Har -- re re, har -- re  har -- re,
  Har -- re re, har -- re  har -- re,
  Har -- re rang.
  
}


chordSymbols = \chordmode {
  \semiGermanChords
  %% Sets the major seven symbol to something other
  \set majorSevenSymbol = \markup { 7+ }
  g1 e:m7 h:m7 d
  c:7+ c:7+ g d d 
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 4/4
	    \key g \major
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
	 title = "Sa Re Sa Sa"
	 composer = "Gurushabad Singh Khalsa"
	 subtitle = "aus: Sa Re Sa Sa"
	 %% meter = "Capo 3. Bund"
       }
     }
\markup{}