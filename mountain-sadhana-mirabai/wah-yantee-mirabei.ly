\include "deutsch.ly"
\version "2.18.0"
\include "../paper.ily"

\include "predefined-guitar-fretboards.ly"


melodie =  \relative c'' {
	\repeat volta 2 {
		e4 d8 c f4 e8 d | d d c h h a4. | 	
	    e'8 e d c f e c d | d2  \tuplet 3/2 {d4 c h} |
  		a2 ~ a2( | g4) r4 d16 d d8 e f | e2 ~ e2( | d4) r4 r2 		
	}	
	d4 e8 f  f4 g8 a  | g8 g g f g g4. |
	g8 g  f8 e g g f8 e | f2\tuplet 3/2 {f4 e d} | 
	e2 e16 e e8 d e | e2 r2 | r1 
  \bar "|."
    
}

textI = \lyricmode {
  Wah Yan -- ti, kar  yan -- ti, djag -- e -- du -- ti pa -- ti,
  aa -- dak it -- e waa -- haa, brah -- ma deh, tre -- scha gu -- ru, __
  it -- e Wa -- he Gu -- ru. __ 

  Wah Yan -- ti, kar  yan -- ti, djag -- e -- du -- ti pa -- ti,
  aa -- dak it -- e waa -- haa, brah -- ma deh, tre -- scha gu -- ru, __
  it -- e Wa -- he Gu -- ru. __ 
}


chordSymbols = \chordmode {
  \semiGermanChords
   \set majorSevenSymbol = \markup { 7+ }
  a2:m f:7+ | g a:m |
  a2:m f:7+ | g1 |
  a2:m f:7+ | g1  |
  a2:m f:7+ | g1 |
  
  d1:m | g | c | b | a | 
  a2:m f:7+ | g1 
   
}

\score { 
       <<
	%  \context ChordNames {
	%    \set Score.markFormatter = #format-mark-box-letters
	%    \chordSymbols
	%  }
	\context ChordNames {
      \semiGermanChords
      \set Score.markFormatter = #format-mark-box-letters
    %   \guitarChordDiagrams
	  \chordSymbols
    }
	\context FretBoards {
         \chordSymbols
    }
	 \new Staff {
	    \time 4/4
	    \key c \major
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
	 title = "Wah Yanti"
	 composer = "Mirabei Ceiba"
	 subtitle = "aus: Mountain Sadhana"
       }
     }
%% \markup{Akkorde ohne Capo:  C => Es, Am => Cm, G => Bb}