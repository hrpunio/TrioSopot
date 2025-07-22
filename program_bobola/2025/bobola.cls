% Klasa dokumentow do skladu programów Wieczorów Muzycznych św. Andrzeja Boboli
% 
\def\ThisClassVersionId{v1.0}
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bobola}[2025/07/15 \ThisClassVersionId, Class for Bobola Programs]
%%
\def\@baseclass{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}}
\PassOptionsToClass{openany}{\@baseclass}
\ProcessOptions
\LoadClass{\@baseclass}
%%
\RequirePackage{polyglossia,multicol}
\RequirePackage{fontspec}
\setmainfont[Ligatures=TeX,Numbers=OldStyle]{Iwona}
\setmainlanguage{polish}
%% stopień pisma w przypisach
\let\oldfootnotesize\footnotesize
\renewcommand{\footnotesize}{\normalsize}
%%
\setdefaultlanguage{polish}
\usepackage[width=147.5truemm,height=210truemm,pdftex]{crop}
\advance\topmargin -35truemm
\advance\oddsidemargin -24mm
\evensidemargin=\oddsidemargin
\doublehyphendemerits=99999
\RequirePackage{fancyhdr,graphicx,wrapfig}
\pagestyle{fancy}
%%
\RequirePackage{color}
\definecolor{Yellow}{gray}{0.8}
\RequirePackage{pifont}
\newcommand{\ZDingXVIII}{{\fontsize{24.0pt}{24.0pt}\selectfont\ding{167}}}
\newcommand{\ZDingXII}{{\fontsize{12.0pt}{14.0pt}\selectfont\ding{165}}}
%%
\newfontfamily\Titlefont[Ligatures=TeX,Numbers=OldStyle]{Cyklop}
\newfontfamily\IwonaCondensed[Ligatures=TeX,Numbers=OldStyle]{Iwona Cond}
\newfontfamily\IwonaCondensedSC[Ligatures=TeX,RawFeature={+onum,+smcp}]{Iwona Cond}
\newfontfamily\IwonaSC[Ligatures=TeX,RawFeature={+smcp}]{Iwona}
%%
\newcommand{\titrm}{\Titlefont\fontsize{16pt}{18pt}\selectfont\bfseries}
\newcommand{\titrmSSS}{\Titlefont\fontsize{12pt}{14pt}\selectfont\bfseries}
\newcommand{\titrmCC}{\Titlefont\fontsize{12pt}{14pt}\selectfont\bfseries}
\newcommand{\titit}{\Titlefont\fontsize{9pt}{11pt}\selectfont\itshape}
\newcommand{\titrmS}{\IwonaCondensed\fontsize{14pt}{16pt}\selectfont\bfseries}
\newcommand{\titrmSS}{\IwonaCondensed\fontsize{12pt}{14pt}\selectfont\bfseries}
\newcommand{\rmSS}{\rm\fontsize{10pt}{12pt}\selectfont}
\newcommand{\emSS}{\rm\fontsize{10pt}{12pt}\selectfont\itshape}
\newcommand{\rmSSCC}{\IwonaSC\fontsize{9.4}{11pt}\selectfont}
\newcommand{\captionfont}{\rm\fontsize{8pt}{10pt}\selectfont}
\newcommand{\rmS}{\IwonaSC\fontsize{11pt}{13pt}\selectfont}
\newcommand{\rmSSXX}{\IwonaSC\fontsize{10pt}{12pt}\selectfont}
\newcommand{\bfH}{\IwonaCondensedSC\fontsize{11pt}{13pt}\selectfont\bfseries}
\newcommand{\rmPP}{\IwonaCondensed\fontsize{9.5pt}{12pt}\selectfont}
\newcommand{\rmPPxx}{\IwonaCondensed\fontsize{8pt}{10pt}\selectfont}
\newcommand{\rmN}{\rm\fontsize{10.5pt}{12pt}\selectfont}
\newcommand{\rmNS}{\IwonaSC\fontsize{10.5pt}{12pt}\selectfont}
\newcommand{\smallF}{\IwonaCondensed\fontsize{8pt}{10pt}\selectfont\bfseries}
%%\font\chineseFont="NotoSansTC-Regular" at 10pt
\baselineskip13.3pt
\doublehyphendemerits=499000
%%
\fontsize{11pt}{13pt}\selectfont
%%
\fancyhead{}
\fancyfoot{}
%\fancyhead[LE,RO]{\thepage} 
%% tytul=nieparzysta/autor parzysta. Jeżeli odwrotnie to zamienić zawartość LO/RO
% Numery stron w paginie dolnej:
\fancyfoot[RO]{\smallF\thepage}
\fancyfoot[LO]{\smallF\footlineTxt}
\fancyfoot[LE]{\smallF\thepage }
\fancyfoot[RE]{\smallF\footlineTxt }
%%%
\renewcommand{\headrulewidth}{0.0pt}
\fancypagestyle{plain}{%%
\fancyhf{} % clear all header and footer fields
%% zawartość paginy na stronie tytułowej:
\renewcommand{\footrulewidth}{0pt} % nie ma kreski na dole
\renewcommand{\headrulewidth}{0.0pt} % nie ma kreski na górze
}
%%
%%\input tp-boxes.tex
\newdimen\HruleThickness \newdimen\VruleThickness
\HruleThickness= 0.4pt \VruleThickness = 0.4pt
\def\Hrule{\hrule height\HruleThickness}
\def\Vrule{\vrule width\VruleThickness}
\newdimen\MarginSep   \MarginSep = 3pt
\def\MarginSepSkip{\kern\MarginSep}
\def\cbox#1{\vbox{\halign{&\hfil##\hfil\cr#1\crcr}}}
\def\lbox#1{\vbox{\halign{&##\hfil\cr#1\crcr}}}
\def\rbox#1{\vbox{\halign{&\hfil##\cr#1\crcr}}}
\def\boxit#1{\hbox{\vbox{\Hrule\hbox{\Vrule\MarginSepSkip%
\vbox{\MarginSepSkip#1\MarginSepSkip}\MarginSepSkip\Vrule}\Hrule}}}
\long\def\Lboxit#1{\vbox{\Hrule\hbox{\Vrule\MarginSepSkip%
\vbox{\MarginSepSkip#1\MarginSepSkip}\MarginSepSkip\Vrule}\Hrule}}
%%
\def\Line#1{\hbox to\textwidth{\lbox{#1}\hss}}
\def\RLine#1{\hbox to\textwidth{\hss\hss #1\hss}}
\def\Logo#1#2{\includegraphics[width=#1]{#2}}
%%
\def\makefootlineTxt#1{\def\footlineTxt{#1}}
%%\def\footlineTxt{XIV~WIECZORY MUZYCZNE U~ŚW.~ANDRZEJA~BOBOLI, SOPOT 2025}
\def\chinese#1{{\chineseFont #1}}
\def\dywiz{\kern0sp\discretionary{-}{-}{-}\penalty10000\hskip0sp\relax}
\def\head#1{\bigskip{\bfH\Line{#1\hss}}\par \smallskip}

\def\Kto#1{\par \vskip3mm plus 1.5mm{\rm #1}}
\def\KKto#1{\par \vskip1.0mm plus 2.5mm\noindent{%%
     \hbox to0pt{\hss \ZDingXII\kern1.5pt}\rm #1}}
\def\Wykonawcy{\par \vskip3mm plus 1mm
  \begingroup
  \pretolerance10001
  \rightskip0pt plus 3em %\baselineskip12pt
  %%\def\and{\relax}
\par \parindent0pt {\textsc{wykonawcy}}:~}
\def\WykonawcyA{\par \vskip3mm plus 1mm
  \begingroup
  \pretolerance10001
  \rightskip0pt plus 3em %\baselineskip12pt
  %%\def\and{\relax}
 \par \parindent0pt {\textsc{wykonawca}}:~}
\def\EndWykonawcy{\par \endgroup}
\def\EndWykonawcyA{\par \endgroup}
\def\nextItem{\par\vskip1.5mm plus .3mm}

\newdimen\OriIndent
\OriIndent=20pt

\def\Program{\par \begingroup \par 
  %\parindent0pt
  \fontsize{11pt}{13pt}\selectfont
\leftskip\OriIndent
\parindent-\leftskip
\rightskip 0pt plus 3em
 }
\def\EndProgram{\par \endgroup}
%% %% %%% %%% %%%
\def\EmptyTitle{}%%
\def\DataTop#1#2#3#4{\par \DataBody{#1}{#2}{#3}{#4}}
\def\Data#1#2#3#4{\par \vskip4.5mm plus 1.0mm \hrule \vskip2.5mm  \DataBody{#1}{#2}{#3}{#4}}
\def\DataBody#1#2#3#4{\def\ConcertTitle{#4}%%<--
\begingroup  \par \nobreak \leftskip\OriIndent
\parindent-\leftskip \rightskip 0pt plus 3em
%\Line{\bfH #1 #2 #3 \lowercase{#4}\hfil}\par\vskip2mm plus 1mm }
{\bfH #1 #2 #3%% <---
\ifx\ConcertTitle\EmptyTitle\else \\ \lowercase{#4}\fi}
\par \endgroup \vskip2mm plus 1mm }
%% %% %% %% %% %% %% %% %% %% %% %% %%
\parskip0pt plus 1pt
\textwidth=117.5mm
\textheight=185mm
%% 

\endinput
