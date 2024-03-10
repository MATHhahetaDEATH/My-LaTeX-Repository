\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{plainbook}




\LoadClass[a4paper,oneside]{book}

\RequirePackage{setspace}

\RequirePackage{csquotes}


\RequirePackage{hyperref}
\hypersetup{
  breaklinks,
  unicode,
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdfkeywords={ElegantBook},
  colorlinks,
  linkcolor=winered,
  citecolor=winered,
  urlcolor=winered,
  plainpages=false,
  pdfstartview=FitH,
  pdfborder={0 0 0},
  linktocpage
}


%% page settings
\RequirePackage{geometry}
    \geometry{
    a4paper,
    top=25.4mm, bottom=25.4mm,
    left=20mm, right=20mm,
    headheight=2.17cm,
    headsep=4mm,
    footskip=12mm
  }


\setcounter{tocdepth}{3}



%% font settings

\RequirePackage[UTF8]{ctex}

\renewcommand{\baselinestretch}{1.5}


%% Environments -> https://zhuanlan.zhihu.com/p/472540719
\RequirePackage[strict]{changepage} % 提供一个 adjustwidth 环境
\RequirePackage{framed} % 实现方框效果
\RequirePackage[dvipsnames,svgnames]{xcolor}
% environment derived from framed.sty: see leftbar environment definition
\definecolor{problemshade}{rgb}{0.97,0.98,0.96} % 文本背景颜色=248,251,244
\definecolor{problem}{rgb}{0.55,0.78,0.25} % 框颜色=141,198,63
\definecolor{generalshade}{rgb}{1,0.98,0.94} % 文本背景颜色=255,249,239
\definecolor{general}{rgb}{0.98,0.62,0.17} % 框颜色=250,157,43
\definecolor{theoremshade}{rgb}{1,0.97,0.95} % 文本背景颜色=255,246,240
\definecolor{theorem}{rgb}{1,0.36,0.09} % 框颜色=255,91,22
\definecolor{propositionshade}{rgb}{0.93,0.97,0.98} % 文本背景颜色=238,244,251
\definecolor{proposition}{rgb}{0,0.49,0.78} % 框颜色=0,124,198
\definecolor{example}{rgb}{0.29,0.63,0.35} % 74,163,91


\newcounter{prob}[chapter]
\setcounter{prob}{0}
\newcounter{prop}[chapter]
\setcounter{prop}{0}
\newcounter{theo}[chapter]
\setcounter{theo}{0}
\newcounter{coro}[chapter]
\setcounter{coro}{0}
\newcounter{lemm}[chapter]
\setcounter{lemm}{0}
\newcounter{defi}[chapter]
\setcounter{defi}{0}
\newcounter{exam}[chapter]
\setcounter{exam}{0}
\newcounter{exer}[chapter]
\setcounter{exer}{0}
\newcounter{axio}[chapter]
\setcounter{axio}{0}


\newenvironment{theorem}[1]{%
	\def\FrameCommand{%
		\hspace{1pt}%
		{\color{theorem}\vrule width 2pt}%
		{\color{theoremshade}\vrule width 4pt}%
		\colorbox{theoremshade}%
	}%
	\MakeFramed{\advance\hsize-\width\FrameRestore}%
	\noindent\hspace{-4.55pt}% disable indenting first paragraph
	\begin{adjustwidth}{}{7pt}%
    \vspace{0.5em}%
	\refstepcounter{theo}%
	\textbf{定理 \thechapter.\arabic{theo}}%
	~~\textbf{#1}\newline%
}%
{%
\vspace{6pt}\end{adjustwidth}\endMakeFramed%
}%


\newenvironment{proposition}[1]{%
	\def\FrameCommand{%
		\hspace{1pt}%
		{\color{proposition}\vrule width 2pt}%
		{\color{propositionshade}\vrule width 4pt}%
		\colorbox{propositionshade}%
	}%
	\MakeFramed{\advance\hsize-\width\FrameRestore}%
	\noindent\hspace{-4.55pt}% disable indenting first paragraph
	\begin{adjustwidth}{}{7pt}%
    \vspace{0.5em}%
	\refstepcounter{prop}%
	\textbf{命题 \thechapter.\arabic{prop}}%
	~~\textbf{#1}\newline%
}%
{%
\vspace{6pt}\end{adjustwidth}\endMakeFramed%
}%

\newenvironment{corollary}[1]{%
	\def\FrameCommand{%
		\hspace{1pt}%
		{\color{general}\vrule width 2pt}%
		{\color{generalshade}\vrule width 4pt}%
		\colorbox{generalshade}%
	}%
	\MakeFramed{\advance\hsize-\width\FrameRestore}%
	\noindent\hspace{-4.55pt}% disable indenting first paragraph
	\begin{adjustwidth}{}{7pt}%
    \vspace{0.5em}%
	\refstepcounter{coro}%
	\textbf{推论 \thechapter.\arabic{coro}}%
	~~\textbf{#1}\newline%
}%
{%
\vspace{6pt}\end{adjustwidth}\endMakeFramed%
}%

\newenvironment{lemma}[1]{%
	\def\FrameCommand{%
		\hspace{1pt}%
		{\color{general}\vrule width 2pt}%
		{\color{generalshade}\vrule width 4pt}%
		\colorbox{generalshade}%
	}%
	\MakeFramed{\advance\hsize-\width\FrameRestore}%
	\noindent\hspace{-4.55pt}% disable indenting first paragraph
	\begin{adjustwidth}{}{7pt}%
    \vspace{0.5em}%
	\refstepcounter{lemm}%
	\textbf{引理 \thechapter.\arabic{lemm}}%
	~~\textbf{#1}\newline%
}%
{%
\vspace{6pt}\end{adjustwidth}\endMakeFramed%
}%

\newenvironment{axiom}[1]{%
	\def\FrameCommand{%
		\hspace{1pt}%
		{\color{general}\vrule width 2pt}%
		{\color{generalshade}\vrule width 4pt}%
		\colorbox{generalshade}%
	}%
	\MakeFramed{\advance\hsize-\width\FrameRestore}%
	\noindent\hspace{-4.55pt}% disable indenting first paragraph
	\begin{adjustwidth}{}{7pt}%
    \vspace{0.5em}%
	\refstepcounter{axio}%
	\textbf{公理 \thechapter.\arabic{axio}}%
	~~\textbf{#1}\newline%
}%
{%
\vspace{6pt}\end{adjustwidth}\endMakeFramed%
}%

% Definition
\newenvironment{definition}[1]{%
	\def\FrameCommand{%
		\hspace{1pt}%
		{\color{problem}\vrule width 2pt}%
		{\color{problemshade}\vrule width 4pt}%
		\colorbox{problemshade}%
	}%
	\MakeFramed{\advance\hsize-\width\FrameRestore}%
	\noindent\hspace{-4.55pt}% disable indenting first paragraph
	\begin{adjustwidth}{}{7pt}%
    \vspace{0.5em}%
	\refstepcounter{defi}%
	\textbf{定义 \thechapter.\arabic{defi}}%
	~~\textbf{#1}\newline%
}%
{%
\vspace{6pt}\end{adjustwidth}\endMakeFramed%
}%



% Example
\newenvironment{example}{ \refstepcounter{exam}
	\par\noindent\textbf{\color{example}{\text{例\thechapter.\arabic{exam}}}~~} 
	\citshape
}{\vspace{3pt}}

% Exercise
\newenvironment{exercise}{ \refstepcounter{exer}
	\par\noindent\textbf{\color{example}{\text{练习\thechapter.\arabic{exer}}}~~} 
	\citshape
}{\vspace{3pt}}

% Solution
\newenvironment{solution}{
	\par\noindent\textbf{\color{example}{\text{解}}~~} \itshape
	\citshape
}{\vspace{3pt}}

% Proof
\newenvironment{proof}{
	\par\noindent\textbf{\color{general}{\text{证明}}~~} \itshape
	\citshape
}{\vspace{3pt}}

% Hint
\newenvironment{hint}{
	\par\noindent\textbf{\color{proposition}{\text{提示}}~~} \itshape
	\citshape
}{\vspace{3pt}}

% Remark
\newenvironment{remark}{
	\par\noindent\textbf{\color{general}{\text{注}}~~} \itshape
	\citshape
}{\vspace{3pt}}

% Note
\newenvironment{note}{
	\par\noindent\textbf{\color{general}{\text{注意}}~~} \itshape
	\citshape
}{\vspace{3pt}}
