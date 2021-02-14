\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposal}[2018/05/06 Custom class for Pune University Ph.D. proposal]

\LoadClass[a4paper,13bp]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage{fmtcount}
\RequirePackage{parskip}
\RequirePackage{scrextend}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage[a4paper,bindingoffset=0in,margin=1in]{geometry}
\RequirePackage[overload]{textcase}
\RequirePackage[english]{babel}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{csquotes}
\RequirePackage{tabulary}
\RequirePackage[
  backend=biber,
  style=mla,
  guessmedium=false,
  dashed=false
]{biblatex}

\global\let\@institution\@empty
\global\let\@guide\@empty
\global\let\@course\@empty
\global\let\@department\@empty

\def\institution#1{\def\@institution{#1}}
\def\guide#1{\def\@guide{#1}}
\def\course#1{\def\@course{#1}}
\def\researchcenter#1{\def\@researchcenter{#1}}

% Paragraph styling
\setlength{\parindent}{\p@}
\setlength{\parskip}{1\baselineskip}

% Line spacing
\linespread{1.45}

\setmainfont{Times New Roman}

\titleformat{\section}{\normalfont\large\bfseries\uppercase}{}{0pt}{}
\titleformat{\subsection}{\normalfont\bfseries}{}{0pt}{}

% https://tex.stackexchange.com/questions/63390/how-to-decrease-spacing-before-chapter-title#63393
\titlespacing*{\chapter}{0pt}{0pt}{0pt}

\newcommand\frontmatter{%
    \cleardoublepage
    \pagenumbering{roman}}
  
\newcommand\mainmatter{%
    \cleardoublepage
    \pagenumbering{arabic}}

\newcommand\backmatter{%
  \relax}

\DeclareNameFormat{last-first-bold}{%
  \ifthenelse{\value{listcount}=1}
    {\namepartfamily%
     \ifblank{\namepartgiven}{}{
     \addcomma\space\namepartgiven}}
    {\ifblank{\namepartgiven}{}{\namepartgiven\space}%
    \namepartfamily}%
  \ifthenelse{\value{listcount}<\value{liststop}}
    {\addcomma\space}
    {}}

\DeclareNameAlias{sortname}{last-first-bold}

\setlength{\bibitemsep}{\baselineskip}
