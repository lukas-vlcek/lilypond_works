%{

%}

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Štědrý večer nastal"
  subtitle = \markup \small { * Polyfonní vytí hladové vlčí smečky v předvečer vánoc * }
  arranger = "arr. Lukáš Vlček"
}

violin = \new Staff {
  \relative c'' {
    \set Staff.instrumentName = #"Housle"
    \key c \major
    g2 b c4( b) a2 g2. r4 
    b2 d2 d4( c c e)      
    a,2 c2 c4( b b d)     
    g,2 b c4( b) a2 g2. r4

    g2 b c4( b) a2 g2. r4 
    b2 d2 d4( c c e)      
    a,2 c2 c4( b b d)     
%    g,2 b
    g,8-. g8~ g4
    b8-. b8~ b4
    c4( b) a2
    g1\fermata
  }
}

recorder = \new Staff {
  \relative c'' {
    \set Staff.instrumentName = #"Flétna"
    \clef "treble"

    \repeat volta 2
    {
      g2 d e4( g a fis) g2. r4
      d2 \grace { es16( e } f2)  e2. r4
      fis2 \grace { g16( as } a2)  g2 r4 fis4(
      e2) d e4( d e fis) g2. r4
    }

    \break

    g2 d e4( g a fis) g2. r4
    d2 \grace { es16( e } f2)  e2. r4
	\break
    fis2 \grace { g16( as } a2)  g2 r4 fis4
    e8-. e8~ e4
    d8-. d8~ d4
    e4( d e fis)
    g1\fermata

    \bar "|."
  }
}

trumpete = \new Staff {
  \relative c''' {
    \set Staff.instrumentName = #"Křídlovka"
    \clef "treble"
    r1 r1 r1 r1 r1 r1 r1 r1 r1 r1

    g2 d'4. d8
    e4( d c d)
    b2. r4
    g'2 f4. d8(
    e2.) r4
    a4. g8 fis( g a4-.)
    c8( b) a( b) g4. r8
    b8-. b8~ b4
    a8-. a8~ a4
    g8( e g) a4( d,8) fis4
    g1\fermata
  }
}

trombone = \new Staff {
  \relative b' {
    \set Staff.instrumentName = #"Pozoun"
    \clef "bass"
    \repeat volta 2
    {
      g2^\markup { \italic Podruhé } d4. d8 c4( b a) d8( fis8) g2. r4
      g2 b4. b8( c2.) e,4(
      d2) fis4. fis8( g2) fis4( d)
      c2 b a4 d( e fis) g2. r4
    }

    \break

      g2 d4. d8 c4( b a d)  g,2. r4
      g2 f4. b8( c2.) e4
      d2 fis,4 r8 fis8
      g8( a b4-.)
      b'8( c d4-.)
      c,8-. c8~ c4
      b8-. b8~ b4
      d8( g a) d,4( fis8) a,4
      g1\fermata
      \bar "|."
  }
}

\score {
  \new StaffGroup <<
    \transpose c c \violin
    \transpose c c \recorder
    \transpose b b, \trombone
    \transpose b cis, \trumpete
  >>
}

\markup {
  Updated: \date
}

