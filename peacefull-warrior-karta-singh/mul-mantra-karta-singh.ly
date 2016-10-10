\include "deutsch.ly"
\version "2.18.0"

\include "../paper.ily"


melodie =  \relative f' {
  f4 f f2 | g4 g8 g8~g2 | as4 as as2 | f2 es |
  \break
  f2 f4 g | g4 g g2 | as4 as as2 | f2 es |
  f4 f f2 | f4 r4 r2 | 
  %% Aad satsch
  as1 f2. as4 | g1 es1 | as2 g2 f1 |
  \break
  %% Häbhi Satsch
  f2 f4 f | es2 g2 | f1 f2 r2
  \bar "|."
   
}

textI = \lyricmode {
  \set stanza = #"1. "
  Ek Ong Kar
  Sat -- e Nam
  Kar -- ta Purk
  Nir  -- bhao, Nir -- vä
  A -- kal Mu -- ret, A -- dschu -- nie, Saib -- hang
  Gur Pras -- sad __
  Dschap!
  Aad Satsch,
  Dschu -- gad __ Satsch, 
  Hä -- bhi Satsch,
  Na -- nak -- e Hoo -- ßie Bie Satsch.
}


chordSymbols = \chordmode {
  \semiGermanChords
  d1:m a:m d:m a:m |
  d1:m c f c |
  d:m d:m |
  d:m d:m | a:m a:m |
  d:m d:m | d:m 
  a:m d:m d:m 
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 2/2
	    \key f \minor
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
	 title = "Mul Mantra"
	 composer = "Karta Singh"
	 subtitle = "aus: Sadhana for the peaceful warrior"
	 meter = "ruhiger Alla Breve Takt, Capo 3. Bund"
}


     }
\markup{
  Akkorde ohne Capo: Dm => Fm, Am => Cm, C => Es, F => As. Einfaches ruhiges Zupfmuster
  }
