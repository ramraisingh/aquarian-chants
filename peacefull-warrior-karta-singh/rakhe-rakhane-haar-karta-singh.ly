\include "deutsch.ly"
\version "2.18.0"

\include "../paper.ily"


melodie =  \relative d' {
  %% Rakhe
  h4 e e8 e fis g8 ~ | g8 a4. \tuplet 3/2 {g4 fis8 e4 d8} |
  d2 \tuplet 3/2 {fis8 fis fis fis4 g8} | e4  e \tuplet 3/2 { dis4 dis8 cis4 dis8} | e2 

  %% Hoa 
  h4 e e8 e fis g8 ~ | g8( a4.) \tuplet 3/2 {g4 fis8 e4 d8} |
  d2 \tuplet 3/2 {fis4 fis8 fis4 g8} | e4  e \tuplet 3/2 { dis4 dis8 cis4 dis8} | e2

  %% Saakate
  \tuplet 3/2 { g8 g g  g g g} \tuplet 3/2 { fis4 e8 e4 fis8} |
  \tuplet 3/2 { g8 g8 fis8 e4 d8} d2 |
  \tuplet 3/2 {fis4 fis8 fis4 g8} | e4  e \tuplet 3/2 { dis8 dis dis cis4 dis8} | e4. g8

  %% Djis simerate
  g8 g   g g  \tuplet 3/2 { fis4 e8 e4 fis8} |
  \tuplet 3/2 { g8 g8 fis8 e4 d8} d4. d8 |
  \tuplet 3/2 {fis4 fis8 fis4 g8} |
  \tuplet 3/2 {e4 e8  e4 e8} \tuplet 3/2 { dis8 dis dis cis4 dis8} | e2

\bar "|."
   
}

textI = \lyricmode {
  Ra -- khe ra -- kha -- ne haa -- re aap u -- baa -- ri an,
  Gu -- ru ki pa -- ri paa -- e kaadj sa -- waa -- ri an,
  
  Hoa aap dy -- al man -- ho __ na vi -- saa ri an,
  Saadh dje -- naa ke sang bha vdja -- le taa -- ri an,

  Saa -- ka -- te ni -- da -- ke dusch -- te khi -- ne ma -- he bi -- daa -- ri an,
  Tis sa -- hib ki te -- ke Na -- nak man -- ne maa -- he,

  Djis si -- me -- ra -- te su -- ke ho -- e sa -- ga -- le dukh dja -- hie, 

  Djis si -- me -- ra -- te su -- ke ho -- e sa -- ga -- le dukh dja -- hie.
}


chordSymbols = \chordmode {
  \semiGermanChords
  e1:m | e:m | d | c2  h:7 | e2:m |
  e1:m | e:m | d | c2  h:7 | e2:m |
  e1:m | e2:m | d d | c2  h:7 | e2:m |
  
  e1:m | e2:m | d d | c2  h:7 | e2:m |
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 2/4
	    \key e \minor
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
	 title = "Rakhe Rakhane Haar"
	 composer = "Karta Singh"
	 subtitle = "aus: Sadhana for the peaceful warrior"
	 meter = "schwungvoller Zweier"
       }
     }
