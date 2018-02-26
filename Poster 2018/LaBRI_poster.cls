%%
%% This is file `LaBRI_poster.cls` <2017/01/30>
%% LaBRI poster style
%%
%%  Created on 2018/01/30 by P. Dorbec
%%     v1.0 on 2018/02/01 by P. Dorbec
%%  File labri_Poster.cls
%%
%% Inspired from 
%% http://www.nathanieljohnston.com/2009/08/latex-poster-template/
%%



\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LaBRI_poster}
              [2018/02/01 v1.0 LaBRI - poster style]

\LoadClass{beamer}
\usepackage{tikz}

\newif\ifINRIA
\INRIAfalse

\usepackage[scale=0.71,orientation=portrait,size=a0]{beamerposter} % Use the beamerposter package for laying out the poster

\definecolor{labriBlue}{RGB}{0,114,201}
\definecolor{labriGreen}{RGB}{10,177,134}
\definecolor{labriTopRed}{RGB}{152,52,54}
\definecolor{labriMiddleRed}{RGB}{173,97,84}
\definecolor{labriBottomRed}{RGB}{230,208,213}


\definecolor{labriRed}{RGB}{152,52,54}

%\definecolor{labriBlue}{rgb}{0,.447,.725}
%\definecolor{labriGreen}{rgb}{.0392,.694,.525}
%\definecolor{labriTopRed}{rgb}{.635,.184,.196}
%\definecolor{labriRed}{rgb}{.698,.458,.388}
%\definecolor{labriBottomRed}{rgb}{.901,.807,.768}



\def\URlogo{
    \begin{tikzpicture}[scale=.15]
        \def\rectanglepath{-- ++(0cm,38.5cm)-- ++(10cm,0cm)-- ++(0cm,-30.3cm)-- ++(13cm,0cm)-- ++(-2cm,-8.2cm)-- cycle}
        \shade[top color=labriTopRed,bottom color=labriBottomRed,middle color=labriMiddleRed,shading=axis,shading angle=-135] (19.25, 19.25) circle (6.75cm);
        \fill[fill=labriBlue] (0,0) \rectanglepath;
        \fill[rotate=180,fill=labriGreen] (-38.5,-38.5) \rectanglepath;
    \end{tikzpicture}
}


\newlength{\sepwidth}
\newlength{\onecolwidth}
\newlength{\twocolwidth}
\newlength{\threecolwidth}
\newlength{\fourcolwidth}
\newlength{\twothirdcolwidth}
\newlength{\bottomcolwidth}

\setlength{\paperwidth}{840mm} % Dimensions for A0, 
\setlength{\paperheight}{1190mm} % to be updated

%\setlength{\paperwidth}{594mm} % Dimensions for A1, 
%\setlength{\paperheight}{840mm} % to be updated

%-----------------------------------------------------------
% Define the column widths and overall poster size
% To set effective sepwid, onecolwid and twocolwid values, first choose how many columns you want and how much separation you want between columns
% In this template, the separation width chosen is 0.022 of the paper width
% onecolwidth should correspond to everything but 2 sepwidth
% twocolwid to be (onecolwid-sepwid)/2 = 0.464
% threecolwid to be (3*onecolwid)+2*sepwid = 0.708

\setlength{\sepwidth}{0.022\paperwidth} % Separation width (white space) between columns
\setlength{\fourcolwidth}{0.2225\paperwidth} % width for four columns
\setlength{\threecolwidth}{0.304\paperwidth} % Width for three columns
\setlength{\twothirdcolwidth}{0.630\paperwidth} % Width for three columns
\setlength{\twocolwidth}{0.467\paperwidth} % Width for two columns
\setlength{\onecolwidth}{0.956\paperwidth} % Width for a single column
\setlength{\topmargin}{-0.5in} % Reduce the top margin size


% define some length variables that are used by the template
\newlength{\inboxwd}
\newlength{\iinboxwd}
\newlength{\inboxrule}
\makeatletter
\makeatother


\setbeamerfont{block title}{series=\bfseries}
\setbeamerfont{block alerted title}{series=\bfseries}
\setbeamercolor{block title}{fg=labriBlue!80!black,bg=white}
\setbeamercolor{block body}{fg=black,bg=white}
\setbeamercolor{block inside}{fg=black,bg=white}

\setbeamercolor{block frame}{fg=labriBlue,bg=labriBlue}

\setbeamercolor{block alerted frame}{fg=black,bg=labriGreen!90!black}
\setbeamercolor{block body alerted}{fg=black,bg=labriGreen!80!white}
\setbeamercolor{block title alerted}{fg=white,bg=labriGreen!90!black}
\setbeamercolor{toprulerbox}{fg=black,bg=labriGreen}
\setbeamercolor{bottomrulerbox}{fg=black,bg=labriBlue}
%==============================================================================
% build the poster title
%==============================================================================

\setbeamertemplate{headline}{
    \begin{columns}[c]
        \begin{column}{.12\linewidth}
            %          \vspace{1cm}
            \begin{center}
                \URlogo
            \end{center}
        \end{column}
        \begin{column}{.7\linewidth}
            \centering
            \usebeamercolor{title in headline}{\color{labriRed}\Huge{\textbf{\inserttitle}}\\[0.8ex]}
            \usebeamercolor{title in headline}{\color{labriRed}\huge{\textbf{\insertsubtitle}}\\[1ex]}
            \usebeamercolor{author in headline}{\color{labriBlue}\Large{\insertauthor}\\[1ex]}
            \usebeamercolor{institute in headline}{\color{labriBlue}\large{\insertinstitute}\\[1ex]}
        \end{column}
        \vspace{1ex}
        \begin{column}{.12\linewidth}
            %         \vspace{1cm}
            \includegraphics[width=\textwidth]{logos/logo_EDMI.jpg}
        \end{column}
    \end{columns}
 \vspace{0.5in}
 \hspace{0.5in}\begin{beamercolorbox}[wd=\linewidth,colsep=0.15cm]{toprulerbox}\end{beamercolorbox}
 }

 % no navigation symbols
\setbeamertemplate{navigation symbols}{}


% Insertion of the logo at bottom
\ifINRIA
  \setlength{\bottomcolwidth}{.25\linewidth}
\else
  \setlength{\bottomcolwidth}{.33\linewidth}
\fi
\setbeamertemplate{footline}{
    \hspace{0.5in}\begin{beamercolorbox}[wd=\linewidth,colsep=0.15cm]{bottomrulerbox}\end{beamercolorbox}
        \vspace{0.5in}
 \begin{columns}[c]
     \begin{column}{\bottomcolwidth}
         \centering
         \includegraphics[height=3.5cm]{logos/UBX-7.jpg}
     \end{column}
     %\begin{column}{\bottomcolwidth}
     %    \centering
     %    \includegraphics[height=3cm]{logos/logo_INPB.png}
     %\end{column}
     \ifINRIA
     \begin{column}{\bottomcolwidth}
         \centering
         \includegraphics[height=3cm]{logos/INRA_logo.jpg}%logo_inria
     \end{column}
     \fi
     \begin{column}{\bottomcolwidth}
         \centering
         \includegraphics[height=3.5cm]{logos/logo_cnrs.png}
     \end{column}
 \end{columns}
 {}
\vspace{2cm}
}

% Block definition
\setbeamertemplate{block begin}
{
    \vskip-2pt
      \setlength{\inboxwd}{\linewidth}
      \addtolength{\inboxwd}{-4pt}
      \setlength{\iinboxwd}{\inboxwd}
      \addtolength{\iinboxwd}{-10cm}
    \par\vskip\medskipamount
  \begin{beamercolorbox}[center,dp={0pt},rounded=true]{block frame}
      \vspace{-4pt}
      \begin{beamercolorbox}[wd=\inboxwd,center,rounded=true]{block inside}
          \begin{beamercolorbox}[ht=3ex,dp=1.5ex,center]{block title}
              \usebeamerfont{block title}\Large\insertblocktitle
              %    \begin{flushleft}
              %    \vskip-1cm
              %    \begin{tikzpicture}[remember picture,overlay]
              %      \shade [inner color=gray,outer color=white]
              %      (0,0) rectangle (\textwidth,0.3cm);
              %    \end{tikzpicture}
              %    \end{flushleft}
          \end{beamercolorbox}
          {\parskip0pt\par}
          \begin{beamercolorbox}[leftskip=3ex,rightskip=3ex,dp=1.5ex]{block body}
          }

              \setbeamertemplate{block end}
              {
          \end{beamercolorbox}
      \end{beamercolorbox}
  \end{beamercolorbox}
  \medskip
}


% Alert block definition (with frame)
\setbeamertemplate{block alerted begin}
{
    \par\vskip\medskipamount
  \begin{beamercolorbox}[sep=0ex,rounded=true,center,dp={2ex}]{block title alerted}
      \vskip0.01cm
      \usebeamerfont{block title}\large\insertblocktitle
  \end{beamercolorbox}
  {\parskip0pt\par}
  \usebeamerfont{block body}
  \vskip-0.8cm
  \begin{beamercolorbox}[sep=0.5cm, rounded=true,center]{block alerted frame}
      \setlength{\inboxwd}{\linewidth}
      \addtolength{\inboxwd}{-1cm}
      \begin{beamercolorbox}[rounded=true,wd={\inboxwd},center]{block body alerted}
          \setlength{\iinboxwd}{\inboxwd}
          \setlength{\inboxrule}{\inboxwd}
          \addtolength{\iinboxwd}{-0.5cm}
          \addtolength{\inboxrule}{0.5cm}
          \begin{center}
              \begin{minipage}{\iinboxwd}
                  %  \justifying
              }

                  \setbeamertemplate{block alerted end}
                  {
              \end{minipage}
          \end{center}
      \end{beamercolorbox}
  \end{beamercolorbox}
    \medskip
}
