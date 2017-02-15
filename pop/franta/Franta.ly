%{
  Checkout: http://lilypond.org/doc/v2.18/Documentation/notation/common-notation-for-fretted-strings
%}

\header{
  title = "Franta"
}

piano = \new Staff {
  \relative c'' {
  \set Staff.instrumentName = #"Organ"
  \time 4/4
  \clef "treble"
  \tempo "Moderato" 4 = 110

  <g b d>4.( <g b d>2)   r8
  <g c e>4.( <g b d>2)   r8
  <g b d>4.( <fis b d>2) r8
  <g c e>4.( <fis a d>2) r8

  <fis a d>4.( <fis a d>2) r8
  <fis a d>4.( <fis a c>2) r8
  <e g a c>4.( <fis a c>2) r8
  <d fis a>4.( <d g b>2)   r8

  }
}

bass = \new Staff {
  \set Staff.instrumentName = #"Bass"
  \clef "bass"

  g4 r8 g8 r8 g8 r4
  c4 r8 g,8 r8 g,8 r4
  g4 r8 b8 r8 b8 r4
  c'4 r8 d'8 r8 d8 r4

  \break 

  d4 r8 fis8 r8 fis8 r4
  a4 r8 c8 r8 c'8 r4
  a,4 r8 d8 r8 d8 r4
  fis4 r8 g,8 r8 g8 r4

  %\bar "|."

}

violin = \new Staff {
  \relative c'' {
    \set Staff.instrumentName = #"Violin"
    \clef "treble"
  \repeat volta 3 {

    b4. d8~d2
    e4. d8~d2
    b4. d8~d2
    e4. d8~d2

    a4. d8~d2
    d4. c8~c2
    a4. c8~c2
    c4. b8~b2

  }
  }
}

harmonies = \relative c' {
 % \chordmode {

%  <g b d>4. <g b d>2 <g b d>8
  <g b d>4. s2 s8
  <c e g>4. <g b d>2 s8
  <g b d>4. <b d fis>2 s8
  <c e g>4. <d fis a>2 s8

%  <d fis a>4. <d fis a>2 <d fis a>8
  <d fis a>4. s2 s8
  <d fis a>4. <a c fis>2 s8
  <c e g a>4. <d fis a c>2 s8
  <d fis a>4. <g b d>2 s8

}

\score {
  <<
    <<
      \violin
    >>
    \new StaffGroup <<
      <<
        \new ChordNames {
          %\set chordChanges = ##t
          \set chordNameLowercaseMinor = ##t
          \semiGermanChords
          \harmonies
        }
        \piano
      >>
      \bass
    >>
  >>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
