% resume.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[Resume]

\LoadClass[11pt, a4paper]{article}

% Packages
\usepackage[utf8]{inputenc}
\usepackage{enumitem}
\usepackage{fontawesome}
\usepackage{hyperref}
\usepackage{geometry}
\usepackage{fontspec}
\usepackage{color}

% Layout
\geometry{margin=0.75in}

% Fonts
\setmainfont{Arial} % Arial is a safe, ATS-friendly font
\setlength{\parindent}{0pt}

% Header of entire résumé
\newcommand{\contactHeader}[7]{
    \begin{center}
        {\Huge\bfseries #1} \\ % Full name in large bold font
        \vspace{6pt}
        \faEnvelope~\href{mailto:#2}{#2} \quad % Email
        \faPhone~\href{tel:#3}{#3} \quad % Phone
        \faLinkedin~\href{https://linkedin.com/in/#4}{#4} \quad % LinkedIn
        \faGithub~\href{https://github.com/#5}{#5} \quad % GitHub
        \faGlobe~\href{https://#6}{#6} % Personal URL
        \vspace{8pt}
    \end{center}
}

% Top-Level Sections (Experience, etc)
\newcommand{\resumeSection}[1]{
    \vspace{12pt}
    {\Large\bfseries #1}
    \vspace{4pt}
    \hrule
}

% Each job bullet point item
\newcommand{\resumeItem}[1]{
    \begin{itemize}[leftmargin=0,label={}]
        \item #1
        \vspace{4pt}
    \end{itemize}
}

% Title -- Dates
% Company -- Location
\newcommand{\resumeCompany}[5]{
    \vspace{1pt}
    \begin{itemize}[leftmargin=0,label={},margin=0]
        \item \textbf{#1} \hfill #2
        \vspace{-8pt}
        \item \href{#4}{#3} \hfill \textit{#5}
    \end{itemize}
}

% Brief company roles (under Experience)
\newcommand{\resumeBriefCompany}[5]{%
    \begin{itemize}[leftmargin=0,label={},margin=0,itemsep=-6pt,topsep=0pt,parsep=0pt]
        \item%
        \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}
            \textbf{#1}%
            \ifx\relax#3\relax\else\ @\ \href{#4}{#3}\fi
            & #2 \textit{(#5)}
        \end{tabular*}
    \end{itemize}%
}
