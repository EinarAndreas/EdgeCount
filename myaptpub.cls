\def\filename{myaptpub.cls}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myaptpub}[2001/03/09]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[twoside]{article}
\RequirePackage{ifthen,calc}
\RequirePackage{amsbsy,amsfonts,amssymb,amsmath}
\RequirePackage{theorem}

\usepackage[a4paper,hmargin=30mm,vmargin=25mm]{geometry}
\usepackage{times}

\pagestyle{plain}

\renewcommand{\today}
             {\number\day \space \ifcase\month\or
              January\or February\or March\or April\or May\or June\or
              July\or August\or September\or October\or November\or December
              \fi \space \number\year
             }
\renewcommand{\title}[1]{\thispagestyle{plain}\vspace*{9pt}
              \begin{center}\fontsize{12}{14}\selectfont\textbf{\textsc{#1}}\end{center}}
\renewenvironment{abstract}
             {\vspace{6pt}\begin{center}\begin{minipage}{315.83pt}
              \small\begin{center}{\bf Abstract}\end{center}
              \noindent\ignorespaces}
             {\end{minipage}\end{center}}

\newcommand{\shorttitlea}{Short title}
\newcommand{\shorttitle}[1]{\renewcommand{\shorttitlea}{#1}}
\newcommand{\authornamesa}{AUTHOR NAMES}
\newcommand{\authornames}[1]{\renewcommand{\authornamesa}{#1}}
\newcommand{\authorone}[2][]{}
\newcommand{\addressone}[1]{}
\newcommand{\email}[1]{}
\newcommand{\emailone}[1]{}
\renewcommand{\author}{\authorone}
\newcommand{\address}{\addressone}
\newcommand{\keywords}[1]{}
\newcommand{\amsprimary}[1]{}
\newcommand{\ams}[2]{}
\newcommand\msc[2]{\ams{#1}{#2}}
\newcommand\mscprimary[1]{\amsprimary{#1}}
%%
% The section headings
%%
\renewcommand{\section}{\makeatletter
\renewcommand{\@seccntformat}[1]{{\csname the##1\endcsname.}\hspace{0.45em}}
\makeatother
\@startsection
{section}%                                            the name
{1}%                                                  the level
{0pt}%                                                the indent
{\baselineskip}%                                      the beforeskip
{0.5\baselineskip}%                                   the afterskip
{\centering\normalsize\bfseries\mathversion{bold}}}%  the style
%%
\renewcommand{\subsection}{\makeatletter
\renewcommand{\@seccntformat}[1]{{\csname the##1\endcsname.}\hspace{0.45em}}
\makeatother
\@startsection
{subsection}%                                         the name
{2}%                                                  the level
{0pt}%                                                the indent
{0.5\baselineskip}%                                   the beforeskip
{0.25\baselineskip}%                                  the afterskip
{\normalsize\bfseries\mathversion{bold}}}%            the style
%%
\renewcommand{\subsubsection}{\makeatletter
\renewcommand{\@seccntformat}[1]{{\rm{\csname the##1\endcsname.}}\hspace{0.45em}}
\makeatother
\@startsection
{subsubsection}%                   the name
{3}%                               the level
{0pt}%                             the indent
{0.5\baselineskip}%                the beforeskip
{-0.25\baselineskip}%              the afterskip
{\normalsize\itshape}}%            the style
%%
%%
% Appendices
%%
\renewcommand{\appendix}{\setcounter{section}{0}\renewcommand{\thesection}{\Alph{section}}
\renewcommand{\section}{\makeatletter
\renewcommand{\@seccntformat}[1]{{\appendixname\ \csname thesection\endcsname.}\hspace{0.45em}}
\makeatother
\@startsection
{section}%                                            the name
{1}%                                                  the level
{0pt}%                                                the indent
{\baselineskip}%                                      the beforeskip
{0.5\baselineskip}%                                   the afterskip
{\centering\normalsize\bfseries\mathversion{bold}}}%  the style
}
%%
% The Acknowledgements section
%%
\newcommand\ack{\section*{Acknowledgement}}
\newcommand\Ack{\section*{Acknowledgement}}
\newcommand\acks{\section*{Acknowledgements}}
\newcommand\Acks{\section*{Acknowledgements}}
%%
% The following are commands to print a ruled space, indicating
% the position of a figure.
%%
\newcounter{figno}
\newcommand{\Fig}[1]
           {\setcounter{figno}{\value{figure}+1}
            \begin{figure}
            \begin{center}
            \begin{picture}(150,150)
            \put(0,0){\framebox(150,150){Figure \thefigno}}
            \end{picture}
            \end{center}
            \caption{\small#1}
            \end{figure}
           }
%%
\newcommand{\hFig}[1]
           {\setcounter{figno}{\value{figure}+1}
            \begin{figure}[h]
            \begin{center}
            \begin{picture}(150,150)
            \put(0,0){\framebox(150,150){Figure \thefigno}}
            \end{picture}
            \end{center}
            \caption{\small#1}
            \end{figure}
           }
%%
% The following commands refer to table captions.
%%
\renewcommand{\textfraction}{0.1}
\renewcommand{\floatpagefraction}{0.9}
\setlength{\textfloatsep}{10pt plus 2pt minus 2pt}
\setlength{\floatsep}{10pt plus 2pt minus 2pt}
\def\fnum@figure{\small{\sc\figurename}~\thefigure}
\def\fnum@table{\small{\sc\tablename}~\thetable}
%%
% The following commands are to do with theorem-like environments.
%%
% This bit defines the style
%%
\gdef\th@plain{\normalfont\itshape
  \def\@begintheorem##1##2{%
        \item[\hskip\labelsep \theorem@headerfont ##1\ {\bf ##2.}] }%
\def\@opargbegintheorem##1##2##3{%
   \item[\hskip\labelsep \theorem@headerfont ##1\ ##2.]{\upshape(}\emph{##3.}{\upshape)} }
}
%%
% These are the various available environments
%%
% For Theorem 1, Lemma 1, Corollary 1, Propostion 1,...
%%
\newtheorem{theorem}{\noindent Theorem}
\newtheorem{lemma}{\noindent Lemma}
\newtheorem{corollary}{\noindent Corollary}
\newtheorem{proposition}{\noindent Proposition}
\newtheorem{conjecture}{\noindent Conjecture}
\newtheorem{assertion}{\noindent Assertion}
\newtheorem{assumption}{\noindent Assumption}
\newtheorem{condition}{\noindent Condition}
%%
% For Theorem 1.1, Lemma 1.1, Corollary 1.1, Propostion 2.1,...
%%
\newtheorem{thm}{\noindent Theorem}[section]
\newtheorem{lem}{\noindent Lemma}[section]
\newtheorem{cor}{\noindent Corollary}[section]
\newtheorem{prop}{\noindent Proposition}[section]
\newtheorem{conj}{\noindent Conjecture}[section]
\newtheorem{assert}{\noindent Assertion}[section]
\newtheorem{assumpt}{\noindent Assumption}[section]
\newtheorem{cond}{\noindent Condition}[section]
%%
\theoremheaderfont{\normalfont\bfseries}
\theorembodyfont{\slshape}
\setlength{\theorempreskipamount}{6pt plus 2pt}
\setlength{\theorempostskipamount}{6pt plus 2pt}
%%
% For Example 1, Definition 1, ...
%%
{\theorembodyfont{\rmfamily} \newtheorem{example}{\noindent Example}}
{\theorembodyfont{\rmfamily} \newtheorem{definition}{\noindent Definition}}
{\theorembodyfont{\rmfamily} \newtheorem{problem}{\noindent Problem}}
{\theorembodyfont{\rmfamily} \newtheorem{observation}{\noindent Observation}}
{\theorembodyfont{\rmfamily} \newtheorem{result}{\noindent Result}}
{\theorembodyfont{\rmfamily} \newtheorem{remark}{\noindent Remark}}
{\theorembodyfont{\rmfamily} \newtheorem{remarks}[remark]{\noindent Remarks}}
{\theorembodyfont{\rmfamily} \newtheorem{note}{\noindent Note}}
{\theorembodyfont{\rmfamily} \newtheorem{notes}[note]{\noindent Notes}}
%%
% For Example 1.1, Definition 1.1, ...
%%
{\theorembodyfont{\rmfamily} \newtheorem{ex}{\noindent Example}[section]}
{\theorembodyfont{\rmfamily} \newtheorem{defn}{\noindent Definition}[section]}
{\theorembodyfont{\rmfamily} \newtheorem{prob}{\noindent Problem}[section]}
{\theorembodyfont{\rmfamily} \newtheorem{obs}{\noindent Observation}[section]}
{\theorembodyfont{\rmfamily} \newtheorem{res}{\noindent Result}[section]}
{\theorembodyfont{\rmfamily} \newtheorem{rem}{\noindent Remark}[section]}
{\theorembodyfont{\rmfamily} \newtheorem{rems}[rem]{\noindent Remarks}}
{\theorembodyfont{\rmfamily} \newtheorem{nte}{\noindent Note}[section]}
{\theorembodyfont{\rmfamily} \newtheorem{ntes}[nte]{\noindent Notes}}
%%
% For unnumbered Example, Definition, Remark,...
%%
\newenvironment{exnn}{\addvspace{\medskipamount}\noindent\textbf{Example.}}{\medbreak}
\newenvironment{defnn}{\addvspace{\medskipamount}\noindent\textbf{Definition.}}{\medbreak}
\newenvironment{probnn}{\addvspace{\medskipamount}\noindent\textbf{Problem.}}{\medbreak}
\newenvironment{obsnn}{\addvspace{\medskipamount}\noindent\textbf{Observation.}}{\medbreak}
\newenvironment{resnn}{\addvspace{\medskipamount}\noindent\textbf{Result.}}{\medbreak}
\newenvironment{remnn}{\addvspace{\medskipamount}\noindent\textbf{Remark.}}{\medbreak}
\newenvironment{remsnn}{\addvspace{\medskipamount}\noindent\textbf{Remarks.}}{\medbreak}
\newenvironment{notenn}{\addvspace{\medskipamount}\noindent\textbf{Note.}}{\medbreak}
\newenvironment{notesnn}{\addvspace{\medskipamount}\noindent\textbf{Notes.}}{\medbreak}
%%
% The proof environment
%%
\newenvironment{proof}[1][Proof]
               {\par \normalfont \topsep6\p@\@plus2\p@\relax
                \trivlist
                \item[\hspace{17pt}\itshape #1{.}]\ignorespaces
               }{\endtrivlist}
%%
% Various useful definitions
%%
\def\var{\mathop{\rm var}\nolimits}    %variance
\def\cov{\mathop{\rm cov}\nolimits}    %covariance
\def\corr{\mathop{\rm corr}\nolimits}  %correlation
%
\newcommand{\rd}{\mathrm{d}} %differential d
\DeclareMathOperator\sd{d\!} %differential d preceeded by a thin space, when needed
\newcommand{\ri}{\mathrm{i}} %imaginary i
\newcommand{\re}{\mathrm{e}} %exponential e
\DeclareMathOperator\sP{P}   %probability, treated as an operator
\newcommand{\rP}{\mathrm{P}} %probability, when spacing isn't a worry
\DeclareMathOperator\sE{E}   %expectation, treated as an operator
\newcommand{\rE}{\mathrm{E}} %expectation, when spacing isn't a worry
%
\newcommand{\trans}{^\top}   %matrix transpose
%
\newcommand{\cvgpr}{\xrightarrow{\text{\upshape\tiny P}}}   %convergence in probability
\newcommand{\cvgwk}{\xrightarrow{\text{\upshape\tiny W}}}   %weak convergence
\newcommand{\cvgdist}{\xrightarrow{\text{\upshape\tiny D}}} %convergence in distribution
\newcommand{\eqdist}{\stackrel{\text{\upshape\tiny D}}{=}}  %equality in distribution
%
\hyphenpenalty=1000
%
