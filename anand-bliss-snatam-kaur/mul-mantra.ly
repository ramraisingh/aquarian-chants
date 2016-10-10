#(set-global-staff-size 16)
\include "deutsch.ly"

\version "2.18.0"

\include "../paper.ily"

melodie =  \relative c'' {
 % Ek  ong  kar
  e2. c4 | d8 ( e8 ~ e2.) | 
 % sat e nam      kar a ta pu rek
  d4 c8 d8 ~ d2 | d8 d8 d4  d8 d8 
 %  nir bha o nir e vä           a
   d8 e8 | c2 a8  a8 a4 ~ a2 r4. e'8|

 % kal e        mu ret 
  e2.  c4 |  d8 e8 ~ e2. |
  
 %A dschu nie, Saib  hang  gur pras sad dschap
  d4  d d2 |    d4    d    d8  d( e4) |  c4. a8 ~ a2 
  \bar "|."
   
}

textI = \lyricmode {
  \set stanza = #"1. "
  Ek Ong Kar
  Sat -- e Nam
  Kar -- a -- ta Pu -- rek
  Nir  -- bha -- o, Nir -- e -- vä
  A -- kal e Mu -- ret, A -- dschu -- nie, Saib -- hang
  Gur Pras -- sad 
  Dschap!
  Aad -- e Satsch,
  Dschu -- gad -- e Satsch, 
  Hä -- bhi Satsch,
  Na -- nak -- e Hoo -- ßie Bie Satsch.
}

textII = \lyricmode {
   \set stanza = #"2. "
  Ek Ong Kar
  Sat -- (e) Nam
  Kar -- (a) -- ta Pu -- rek
  Nir  -- bha -- o, Nir -- (e) -- vä
  A -- kal Mu -- ret, A -- dschu -- nie, Saib -- hang
  Gur Pras -- sad 
  Dschap!
  Aad -- (e) Satsch,
  Dschu -- gad -- (e) Satsch, 
  Hä -- bhi Satsch,
  Na -- nak -- (e) Hoo -- ßie Bie Satsch.
  Na -- nak -- (e) Hoo -- ßie Bie Satsch.
   
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



chordSymbols = \chordmode {
  \semiGermanChords
  a1:m | e:m7 | g | d:4 | a:m | a:m | 
  a1:m | e:m7 | g | d:4 | a:m | a:m | 
  a1:m | e:m7 | g | d:4 | a:m | a:m | 

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
	 \new Lyrics \lyricsto "mel" {
	     \textII
	   }
	 \new Lyrics \lyricsto "mel" {
	     \textIII
	   }
       >>
	\layout {
	  \context {\Staff \RemoveEmptyStaves }
	}
       \header {
	 title = "Mul Mantra"
	 composer = "Snatam Kaur"
	 substitle = "aus: Anand Bliss"
       }
}
