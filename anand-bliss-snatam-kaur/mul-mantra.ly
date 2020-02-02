#(set-global-staff-size 16)
\include "deutsch.ly"

\version "2.18.0"

\include "../paper.ily"

melodieI =  \relative c'' {
 % Ek  ong  kar
  e2. c4 | d8 ( e8 ~ e2.) | 
 % sat e nam      kar a ta pu rek
  d4 c8 d8 ~ d2 | d8 d8 d4  d8 d8 
 %  nir bha o nir e vä           a
   d8 e8 | c2 a8  a8 a4 ~ a2 r4. e'8|

 % kal e        mu ret 
  e2.  c4 |  d8 e8 ~ e2. |
  
 %A dschu nie, Saib  hang  gur pras sad dschap
  d4  d d2 |    d4    d    d8  d( e4) |  c4. a8 ~ a2 | r1 |

  %% Aad -- e Satsch, Dschu -- gad -- e Satsch, 
  e'4. e8 e4 r8       d | e4. e8 e4 r4 |
  
  %% Hä -- bhi Satsch,
  d4 d d r4 |
  %% Na -- nak -- e Hoo -- ßie Bie Satsch.
      d4    d8    d8 d4   e4 | c4. a8 ~a2 | r1 | 
  \bar "|."
   
}

melodieII =  \relative c'' {
  %% Ek  ong  kar  sat e 
  f8 f4  f4 f8 f8 f8  |
  %% nam  kar a ta 
   e4 r4 e8 e e4  | 
  %%  pu rek nir bha o nir e vä      a
  e8 e4 r8  e8 e8 e4 | c8 c8 c4 r4 r8 c8 | 
  %% kal e        mu ret 
  f4. f8 f8 f4 r8 | 
  %% A dschu nie, Saib  hang  guru pras sad dschap
  e4 e e r4 | e4 e4 e8 e8 e8 e8 ~| e4 c4 r2 

  %% Aad -- e Satsch, Dschu -- gad -- e Satsch, 
  f4. g8 f4 r8  e8 | e4. f8 e4 r4 | 
  
  %% Hä -- bhi Satsch,
  e4 e4 e4 r4 |
  %% Na -- nak -- e Hoo -- ßie Bie Satsch.
  e4 e8 e8 e4 e 4 | f2.( g8 f) | e4 r4 r2 |
  %% Na -- nak -- e Hoo -- ßie Bie Satsch.
  e4 e8 e8 e4 e 4 | e4. c8 r2 
  \bar "|."
   
}

textI = \lyricmode {
  \set stanza = #"1. "
  Ek Ong Kar
  Sa -- te Nam
  Kar -- a -- ta Pu -- rek
  Nir  -- bha -- o, Ni -- re -- vä
  A -- ka -- le Mu -- ret, A -- dschu -- nie, Saib -- hang
  Gur Pras -- sad 
  Dschap!
  Aa -- de Satsch,
  Dschu -- ga -- de Satsch, 
  Hä -- bhi Satsch,
  Na -- na -- ke Hoo -- ßie Bie Satsch.
}

textII = \lyricmode {
   \set stanza = #"2. "
  Ek Ong Ka -- re
  Sa -- te Nam
  Ka -- ra -- ta Pu -- rek
  Nir  -- bha -- o, Ni -- re -- vä
  A -- ka -- le Mu -- ret, A -- dschu -- nie, Saib -- hang
  Gu -- ru Pras -- sad 
  Dschap!
  Aa -- de Satsch,
  Dschu -- ga  -- de Satsch, 
  Hä -- bhi Satsch,
  Na -- na -- ke Hoo -- ßie Bie __ Satsch.
  Na -- na -- ke Hoo -- ßie Bie Satsch.
   
}

textIII = \lyricmode {
   \set stanza = #"3. "
   Schöpfer und Schöpfung sind eins.
   Das ist unsere wahre Identität. 
   Derjenige, der alles tut, 
   jenseits von Angst, jenseits von Rache,
   Abbild der Unendlichkeit,
   Ungeboren, Selbst-Erleuchtet, Vollständig in sich selbst.
   Das ist das Geschenk des Gurus.
   Meditiere!
   Ursprüngliche Wahrheit,
   Wahr durch alle Zeit,
   Wahr in diesem Moment.
   Oh Nanak, für immer wahr.
}



chordSymbolsI = \chordmode {
  \semiGermanChords
  a1:m | e:m7 | g | d:4 | a:m | a:m | 
  a1:m | e:m7 | g | d:4 | a:m | a:m | 
  a1:m | e:m7 | g | d:4 | a:m | a:m | 

}

chordSymbolsII = \chordmode {
  \semiGermanChords
  f1 | a:m | e:m7 | a:m 
  f1 | a:m | e:m7 | a:m 
  f1 | a:m | e:m7 | a:m 
  f1 | a:m | e:m7 | a:m 

}
\score { 
       <<
	 \context ChordNames {
	   \set Score.markFormatter = #format-mark-box-letters
	   \chordSymbolsI
	   \chordSymbolsII
	 }
	 \new Staff {
	    \time 4/4
	    \key a \minor
	    \new Voice = "mel" {
	      \melodieI  \bar "|." \break 
	      \melodieII \bar "|."}
	   }
	   \new Lyrics \lyricsto "mel" {
	     \textI
	     \textII
	   }
%%%	 \new Lyrics \lyricsto "mel" {
%%%	     \textII
%%%	   }
%%%	 \new Lyrics \lyricsto "mel" {
%%%	     \textIII
%%%	   }
       >>
	\layout {
	  \context {\Staff \RemoveEmptyStaves }
	}
       \header {
	 title = "Mul Mantra"
	 composer = "Snatam Kaur"
	 subtitle = "aus: Anand Bliss"
       }
}
