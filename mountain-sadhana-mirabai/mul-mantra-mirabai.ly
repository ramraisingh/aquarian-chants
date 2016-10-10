
\include "deutsch.ly"

\version "2.18.0"

\include "../paper.ily"

%%%aC =  \markup {\fret-diagram-verbose #'(
%%%		  (place-fret 1 3)
%%%		  (place-fret 2 1)
%%%		  (place-fret 3 2)
%%%		  (mute 4 )
%%%		  (place-fret 5 3)
%%%		  (mute 6)
%%%	       )}
%%%smallE =  \markup {\fret-diagram-verbose #'(
%%%		  (place-fret 1 3)
%%%		  (open 2)
%%%		  (open 3)
%%%		  (place-fret 4 2)
%%%		  (mute 5)
%%%		  (mute 6)
%%%		  )}

melodie =  \relative g'' {
%% Ek  ong  kar
  g4 e8 c8 ~ c2 | 
%% sat e  nam      kar ta purk nir    bhao nir vä
  g'4  a8 g8 ~ g4  c,8  d | e4 g8( f) e4  c8 g8~ | g2 r4 r8  
  
%% a    kal mu ret      a    dschu nie   saib  
  c8 |  g'4 e8 c8 ~ c2 | g'4  a8 g8 ~ g4  c,8(  d) |
%% hang gur pras  sad dschap 
  e4 g8 f e4  c8 g8~ | g2 r|

%% Aad e Satsch Dschu gad e Satsch
  f'2 e4.  d8 | e2 d4( c) | f2 e2 | c1  |

  f2 e4.  d8 | e2 d4( c) | g'1   | g1 |   
  
  \bar "|."
   
}

textI = \lyricmode {
  \set stanza = #"1. "
  Ek Ong Kar
  Sat -- e Nam
  Kar -- ta Purk
  Nir  -- bhao, Nir -- vä
  A -- kal Mu -- ret, A -- dschu -- nie, Saib -- hang
  Gur Pras -- sad -- e 
  Dschap!
  Aad  Satsch,
  Dschu -- gad Satsch, 
  Hä -- bhi Satsch,
  Na -- nak -- e Hoo -- ßie Bie Satsch.
}

chordSymbols = \chordmode {
  \semiGermanChords
  %% c mit g auf E-Saite, e:m ebenfalls!
  c1 | c | a:m7 | g
  c1 | c | a:m7 | g
  d:m   | c   | d:m  | c1
  d:m   | c   |  g   | g 
}

\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbols
	 }
	 \new Staff {
	    \time 4/4
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
	 title = "Mul Mantra"
	 composer = "Mirabai Ceiba"
	 subtitle = "aus: Mountain Sadhana"
       }
}
