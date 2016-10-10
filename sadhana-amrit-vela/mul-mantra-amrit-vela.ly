\include "deutsch.ly"
\version "2.18.0"

\include "../paper.ily"

openE =  \markup {\fret-diagram-verbose #'(
		  (open 1)
		  (place-fret 2 9)
		  (place-fret 3 9)
		  (place-fret 4 9)
		  (place-fret 5 7)
		  (open 6)
		  )}
openD =  \markup {\fret-diagram-verbose #'(
		  (open 1)
		  (place-fret 2 7)
		  (place-fret 3 7)
		  (place-fret 4 7)
		  (place-fret 5 5)
		  (open 6)
		  )}

openA =  \markup {\fret-diagram-verbose #'(
		  (open 1)
		  (open 2)
		  (place-fret 3 6)
		  (place-fret 4 7)
		  (place-fret 5 7)
		  (open 6)
		  )}
fullA =  \markup {\fret-diagram-verbose #'(
		  (barre 6 1 5)
		  (place-fret 1 5)
		  (place-fret 2 5)
		  (place-fret 3 6)
		  (place-fret 4 7)
		  (place-fret 5 7)
		  (place-fret 6 5)
		  )}

openB =  \markup {\fret-diagram-verbose #'(
		  (open 1)
		  (open 2)
		  (place-fret 3 8)
		  (place-fret 4 9)
		  (place-fret 5 9)
		  (open 6)
		  )}



melodie =  \relative g'' {
  \grace{g8} gis4^\openE e e2 |
  d4^\openA e e2 |
  d4^\openB e e h |
  d8^\openA e8 e4 e2 | \break
  \grace{g8} gis4^\openE e e e  |
  d4^\openA e e2 |
  d8^\openB( e8 ~ e4) e2 |
  d4^\openA e e2 ~ |
  e2^\openE ~ e2 |
  e4^\openA r4 r2 |
  r1^\openB | r1^\openA |
  %% Aad satsch
  r4^\openD d8 d8~d8 ( e8 d4) |
  r4^\fullA cis8 cis8~cis8 ( d cis cis8) |
  h4^\openE r4 r2
  \break
  %% Häbhi Satsch
  r4^\openD d8 d8~d8 ( e8) d4 |
  r4^\fullA cis8 cis8 cis8 cis( d) cis |
  h2^\openE e,4 r4
  \bar "|."
   
}

textI = \lyricmode {
  \set stanza = #"1. "
  Ek Ong Kar
  Sat -- e Nam
  Kar -- ta Pu -- rek
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
  e1 a/e h/e a/e
  e1 a/e h/e a/e
  e a/e h/e a/e 
  d a e 
  d a e 
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 4/4
	    \key d \major
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
	 composer = "Amrit Vela / Snatam Kaur"
	 subtitle = "aus: Sadhana"
	 meter = "zügig mit Shuffle-Feeling, auch rockig gut!"
       } 
     }

\markuplist{
  \wordwrap-lines {
    Es ist einfacher, bis zum Aad Satsch abgedämpfte Powerchords auf E zu spielen und
    nicht das Pattern der offenen Akkorde!

  }
}
