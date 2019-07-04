
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

guitarIntro = \relative c {
  cis8 gis' cis dis e dis cis gis |
  cis,8 a' cis dis8 ~dis e8 dis cis |

  cis,8 gis' cis dis e dis cis gis |
  cis,8 a' cis dis8 ~dis e8 dis cis |
}


melodie =  \relative g' {
  \repeat "volta" 2 {
    %%  Sat Na -- ra -- yan Wa -- he Gu -- ru,
    r8 gis r8 gis8 gis4 fis8( e) | fis8 fis4 gis4 fis r8 | 
    %%  Ha -- re Na -- ra -- yam Sat Nam.
    r8 fis8 fis fis fis4 e8( dis) | dis4  e4  r2 
  }
  %%  Sat Na -- ra -- yan Wa -- he Gu -- ru,
  dis4 r8  dis8 fis4 fis fis8 e4 dis8 e4 r4   
  %%  Ha -- re Na -- ra -- yam Sat Nam.
  r8 e8 e8 e8 gis4 gis gis fis r2 
  %%  Sat Na -- ra -- yan Wa -- he Gu -- ru,
  dis4 r8  dis8 fis4 fis fis8 e4 dis8 e4 r4   
  %%  Ha -- re Na -- ra -- yam Sat Nam.
  r8 e8 e8 e8 gis4 gis gis fis r2 

  \bar "|."
   
}

textI = \lyricmode {
  \set stanza = #"1. "
  Sat Na -- ra -- yan Wa -- he Gu -- ru,
  Ha -- re Na -- ra -- yam Sat Nam.

  Sat Na -- ra -- yan Wa -- he Gu -- ru,
  Ha -- re Na -- ra -- yam Sat Nam.

  Sat Na -- ra -- yan Wa -- he Gu -- ru,
  Ha -- re Na -- ra -- yam Sat Nam.

  Sat Na -- ra -- yan Wa -- he Gu -- ru,
  Ha -- re Na -- ra -- yam Sat Nam.
}

chordSymbols = \chordmode {
  \semiGermanChords
  %% Intro
  cis1:m cis:m6 
  cis1:m cis:m6 
  
  %% Verse
  cis1:m fis:m fis:m cis1 |

  h a a h
  gis:m a a h 
}


\score {
  <<
    \new Staff {
      \clef "treble_8"
      \key cis \minor
      \guitarIntro
      \break
    }
    \new TabStaff {
      \tabFullNotation
      \set TabStaff.minimumFret = #4
      \set TabStaff.restrainOpenStrings = ##t
      \guitarIntro
    }
    \context ChordNames {
      \set Score.markFormatter = #format-mark-box-letters
      \transpose d c \chordSymbols
    }
    \new Staff {
      \time 4/4
      \key cis \minor
      \new Voice = "mel" {
	R1*4
	\melodie  \bar "|." }
    }
    \new Lyrics \lyricsto "mel" {
      \textI
    }
  >>
  \layout {
    \context {\Staff \RemoveEmptyStaves }
  }
  \header {
    title = "Sat Narayan"
    composer = "Tera Naam"
    subtitle = "aus: In Thy Name"
    meter = "Capo 2. Bund"
  }
}
\markup{Akkorde ohne Capo: A => H, G => A, Fism => Gism, Hm => Cism}