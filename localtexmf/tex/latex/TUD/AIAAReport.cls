%%% Initial Setup
\LoadClass[11pt]{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{AIAAReport}


%%% Load required packages
\RequirePackage[margin=1in]{geometry}
\RequirePackage{pdflscape}
\RequirePackage[superscript,biblabel]{cite}
\RequirePackage{media9}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[toc]{glossaries}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{acro}
\RequirePackage{fontenc}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{setspace}
\RequirePackage{caption}
\RequirePackage[nottoc,notlof,notlot]{tocbibind} 
\RequirePackage{wrapfig,lipsum,booktabs}
\RequirePackage{etoolbox}
\RequirePackage{gensymb}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{pgf}
\RequirePackage{pgfpages}
\RequirePackage[toc, page]{appendix}
\RequirePackage{multirow}
\RequirePackage{wrapfig}
\RequirePackage{mcode}
\RequirePackage{amsmath}
%\RequirePackage[group-separator={,}]{siunitx}
%\RequirePackage{showframe}

%%% Support some options
%\DeclareOption{arial}{}
%\DeclareOption*{\PassOptionstoClass{\CurrentOption}{report}}
%\ProcessOptions \relax

%Format the document (margins, box, headers and footers)
\doublespacing
\geometry{headheight=60pt,headsep=10pt,top=0.75in,bottom=0.46in,left=1in,right=1in}
\pgfpagesdeclarelayout{boxed}
{
	\edef\pgfpageoptionborder{0pt}
}
{
	\pgfpagesphysicalpageoptions
	{%
		logical pages=1,%
	}
	\pgfpageslogicalpageoptions{1}
	{
		border code=\pgfsetlinewidth{1pt}\pgfstroke,%
		border shrink=\pgfpageoptionborder,%
		resized width=.925\pgfphysicalwidth,%
		resized height=.925\pgfphysicalheight,%
		center=\pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}%
	}%
}

\pgfpagesuselayout{boxed}

\fancypagestyle{plain}{
\fancyhf{}
\lhead{\includegraphics[width = 1.75in]{"KUHeader"}\vspace{-.5cm} \\
}
\lfoot{\includegraphics[width = .5in]{"JHFooter"} Aerospace Engineering Department }
\rfoot{\thepage}
}
\pagestyle{plain}


%Change commands
\renewcommand\bibname{References}
\renewcommand{\footrulewidth}{1pt}
\renewcommand{\chapterautorefname}{Chapter}%Capitalize chapter references
\renewcommand{\sectionautorefname}{Section}%Capitalize chapter references

\titlespacing*{\chapter}{0pt}{-35pt}{10pt}
\titlespacing*{\section}{0pt}{-10pt}{4pt}
\titlespacing*{\subsection}{0pt}{-6pt}{4pt}
\titlespacing*{\subsubsection}{0pt}{-6pt}{4pt}
%\titleformat{\chapter}[display]{\normalfont\LARGE\bfseries\singlespacing}{\chaptertitlename\ \thechapter}{10pt}{}{}
\titleformat{\chapter}[hang]{\normalfont\LARGE\bfseries\singlespacing}{\chaptertitlename\ \thechapter:}{5pt}{}{}
\setlength{\parindent}{1cm}


\bibliographystyle{aiaa}