\version "2.18.0"
#(ly:set-option 'relative-includes #t)
\include "paper.ily"
\header {
  title = "Chants für das Wassermannzeitalter"
  %% instrument = "Chants für das Wassermannzeitalter"
  %% Do not display the tagline for this book
  %% tagline = ##f
  composer = ##f
  meter = ##f
  copyright = "(c) Ram Rai Singh, 2015-2020"
}
%%%
%%%oddHeaderMarkup = \markup
%%%\fill-line {
%%%  %% force the header to take some space, otherwise the
%%%  %% page layout becomes a complete mess.
%%%  " "
%%%  \on-the-fly #not-part-first-page \fromproperty #'header:title
%%%  \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-st
%%%ring
%%%}
%%%
%%%%% evenHeaderMarkup would inherit the value of
%%%%% oddHeaderMarkup if it were not defined here
%%%evenHeaderMarkup = \markup
%%%\fill-line {
%%%  \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
%%%  \on-the-fly #not-part-first-page \fromproperty #'header:title
%%%  " "
%%%}

\markup { \vspace #2 }
\markup {Zusammengestellt und arrangiert von Ram Rai Singh.}
\markup { \vspace #1 }

\markuplist \table-of-contents
\pageBreak

\tocCD \markup {"Amrit Vela: Sadhana"}

\tocItem \markup "Mul Mantra"
  \include "sadhana-amrit-vela/mul-mantra-amrit-vela.ly"
  \markup { \vspace #1 }

\tocCD \markup "Karta Singh: Sadhana for the Peaceful Warrior"

  \tocItem \markup "Wah Yanti"
  \include "peacefull-warrior-karta-singh/wah-yantee-karta-singh.ly"
  \markup { \vspace #1 }
\pageBreak

  \tocItem \markup "Mul Mantra"
  \include "peacefull-warrior-karta-singh/mul-mantra-karta-singh.ly"
  \markup { \vspace #1 }

  \tocItem \markup "Sat Siri Siri Akal"
  \include "peacefull-warrior-karta-singh/sat-siri-siri-akal-karta-singh.ly"
  \markup { \vspace #1 }

\pageBreak
 \tocItem \markup "Rakhe Rakhane Haar"
  \include "peacefull-warrior-karta-singh/rakhe-rakhane-haar-karta-singh.ly"
  \markup { \vspace #1 }
\pageBreak
  \tocItem \markup "Wahe Guru Wahe Jio"
  \include "peacefull-warrior-karta-singh/wahe-guru-wahe-jio-karta-singh.ly"
  \markup { \vspace #1 }

  \tocItem \markup "Guru Ram Das Chant"
  \include "peacefull-warrior-karta-singh/guru-ramdas-chant-karta-singh.ly"
  \markup { \vspace #1 }

\pageBreak

\tocCD \markup "Guru Charan Singh & Guru Sangat Singh: Hummee Hum Brahmham"

  \tocItem \markup "Slower Hummee Hum Brahmham"
  \include "hummee-hum-guru-charan-singh/slower-hummee-hum.ly"
\markup { \vspace #1 }

\tocCD \markup "Guru Shabad Singh Khalsa: Sa Re Sa Sa"

  \tocItem \markup "Sa Re Sa sa"
  \include "guru-shabad-singh-khalsa/saresasa-guru-shabad-singh-khalsa.ly"
\markup { \vspace #1 }


\tocCD \markup "Mirabai Ceiba: Sacred Love Meditations"

  \tocItem \markup "Hummee hum, too mee too"
  \include "sacred-love-mirabei/humme-hum-too-he-too-mirabai.ly"
\markup { \vspace #1 }

\pageBreak
\tocCD \markup "Mirabai Ceiba: Mountain Sadhana"

  \tocItem \markup "Wah Yanti"
  \include "mountain-sadhana-mirabai/wah-yantee-mirabei.ly"
\markup { \vspace #1 }

  \tocItem \markup "Mul Mantra"
  \include "mountain-sadhana-mirabai/mul-mantra-mirabai.ly"
\markup { \vspace #3 }

\pageBreak 
 \tocItem \markup "Wahre Guru Wahre Jio"
  \include "mountain-sadhana-mirabai/wahe-guru-wahe-jio-mirabai.ly"
\markup { \vspace #1 }

%% \pageBreak 
\tocCD \markup "Snatam Kaur: Anand Bliss"

  \tocItem \markup "Mul Mantra"
  \include "anand-bliss-snatam-kaur/mul-mantra.ly"
\markup { \vspace #1 }

\tocCD \markup "Tera Naam: In Thy Name"

  \tocItem \markup "Sat Narayan"
  \include "in-thy-name-tera-naam/sat-narayan.ly"
\markup { \vspace #1 }
