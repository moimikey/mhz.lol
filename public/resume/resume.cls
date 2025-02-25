% resume.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/11/14 Custom Resume Class]

\LoadClass[11pt,a4paper]{article}

% Packages
\RequirePackage{fontspec} % Should be loaded first
\RequirePackage{enumitem}
\RequirePackage{fontawesome}
\RequirePackage{geometry}
\RequirePackage{color}
\RequirePackage{hyperref}

% Layout
\geometry{
    margin=19mm, % converted from 0.75in for consistency
    % includehead,
    includefoot,
    % includemp
}

% Fonts
\setmainfont{Arial}
\setlength{\parindent}{0mm}
\raggedright

% Define consistent spacing
\newlength{\sectionspace}
\newlength{\smallspace}
\newlength{\mediumspace}
\setlength{\sectionspace}{12pt}
\setlength{\smallspace}{4pt}
\setlength{\mediumspace}{6pt}

% Header of entire résumé
\newcommand{\contactHeader}[7]{%
    \begin{center}
        {\Huge\bfseries #1}\\[\mediumspace]
        \faEnvelope~\href{mailto:#2}{#2} \quad
        \faPhone~\href{tel:#3}{#3} \quad
        \faLinkedin~\href{https://linkedin.com/in/#4}{#4} \quad
        \faGithub~\href{https://github.com/#5}{#5} \quad
    \end{center}
}

% Top-Level Sections
\newcommand{\resumeSection}[1]{%
    \vspace{\sectionspace}
    {\Large\bfseries #1}
    \vspace{\smallspace}
    \hrule
}

% Each job bullet point item
\newcommand{\resumeItem}[1]{%
    \begin{itemize}[
        leftmargin=0pt,
        label={},
        itemsep=\smallspace,
        parsep=0pt
    ]
        \item #1
    \end{itemize}%
}

% Title -- Dates
% Company -- Location
\newcommand{\resumeCompany}[5]{%
    \vspace{1pt}
    \begin{itemize}[
        leftmargin=0pt,
        label={},
        itemsep=0pt,
        parsep=0pt,
        topsep=0pt
    ]
        \item \textbf{#1} \hfill #2
        \item \href{#4}{#3} \hfill \textit{#5}
    \end{itemize}%
}

% Brief company roles
\newcommand{\resumeBriefCompany}[5]{%
    \begin{itemize}[
        leftmargin=0pt,
        label={},
        itemsep=-6pt,
        topsep=0pt,
        parsep=0pt
    ]
        \item%
        \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}
            \textbf{#1}%
            \ifx\relax#3\relax\else\ @\ \href{#4}{#3}\fi
            & #2 \textit{(#5)}
        \end{tabular*}
    \end{itemize}%
}

% Hyperref settings
\AtBeginDocument{%
    \hypersetup{
        colorlinks=true,
        linkcolor=black,
        filecolor=black,
        urlcolor=black,
        citecolor=black,
        pdftitle={Resume},
        pdfauthor={},
        pdfsubject={Resume},
        pdfkeywords={resume, cv}
    }
}
