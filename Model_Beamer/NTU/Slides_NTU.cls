%忽略Warning
\RequirePackage{silence}%忽略Warning的宏包，使用\WarningFilter时如果不放在cls内（如调试过程），那么就该包和\WarningFilter一起放在\doucumentclass之前
\WarningFilter{l3regex}{This package is obsolet}%忽略mhchem的固有错误，因为mhchem自带l3regex包而该包已老，需用expl3替代，所以有一个harmless的warning，这两个命令一定要加在class之前
\WarningFilter{biblatex}{Patching footnotes failed}%忽略BibTex的固有Warning.可放于后面
%----------------------------------------
%----------------基础--------------------
%----------------------------------------
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{Slides_NTU}%class的名称
\LoadClass[8pt,xcolor=dvipsnames,serif,professionalfont]{beamer}
\usetheme[compress]{Ilmenau}%模板主题
\usecolortheme{beaver}%颜色主题
\usefonttheme{serif}%字体主题
\useoutertheme{miniframes}
%----------------------------------------
%----------------宏包--------------------
%----------------------------------------
%\RequirePackage{utopia} %font utopia imported
%\RequirePackage{pifont,manfnt}%特殊字符
%\RequirePackage{eulervm}%数学字体Euler virtual math fonts
\RequirePackage[utf8]{inputenc}%识别特殊字体的输入
\RequirePackage{beamerfoils}%控制Logo的出现和消失
\RequirePackage{booktabs}%允许表格中使用不同粗细的横线来划分行。
\RequirePackage[T1]{fontenc}%使用T1字体
\RequirePackage{xspace}%define macros that will insert a space dynamically 
\RequirePackage{rotating}%可以将文本、表格、图形旋转
\RequirePackage{multirow}%表格中某一单元横跨两行以上
\RequirePackage{graphicx}%图像
\RequirePackage{subfig}%子图
\RequirePackage{amsmath,amssymb,latexsym,amsfonts,amscd}%数学符号
\RequirePackage{fontawesome}%提供可缩放的矢量图标，如首页中的邮件
\RequirePackage{listings}%排版 C, C++, Pascal等源代码，提供语法加亮显示的功能
\RequirePackage{pgf}%pgf
\RequirePackage{multicol}%分栏/多列
\RequirePackage{expl3}%化学式相关的子包
\RequirePackage[version=4]{mhchem}%化学式相关
\RequirePackage{chemfig}%画化学分子
%----------------------------------------
%---------------命令打包-----------------
%----------------------------------------
%~~~~~~~~~~~~~~~~~标题~~~~~~~~~~~~~~~~~~~
\RequirePackage{caption}%修改标题
\captionsetup[figure]{labelfont={bf,small},textfont={it,small},name=Fig.,justification=centering}%设置figure的Caption格式
\captionsetup[table]{labelfont={bf,small},textfont={it,small},justification=centering}%设置table的Caption格式
\captionsetup[subfloat]{labelfont={bf,small},textfont={it,small},justification=centering}%设置subfloat的Caption格式
%~~~~~~~~~~~~~首行缩进2字符~~~~~~~~~~~~~~
\RequirePackage{indentfirst}%首行缩进宏包
%\setlength{\parindent}{2em}%首行缩进2字符
%~~~~~~~~~~~~~~~~单位相关~~~~~~~~~~~~~~~~
\RequirePackage{siunitx}%数学单位
\sisetup{separate-uncertainty,multi-part-units = single,range-units = single} % Set for SI units
%~~~~~~~~~~~~~~~~~~Tikz~~~~~~~~~~~~~~~~~~
\RequirePackage{tikz}%Tikz
\usetikzlibrary{positioning}%调整tikz位置分布
%~~~~~~~~~~~~~~~~参考文献~~~~~~~~~~~~~~~~
\RequirePackage[backend=biber,style=science]{biblatex}%BibTex参考文献宏包
%\addbibresource{../references.bib}%添加参考文献库
%\setbeamerfont{footnote}{size=\tiny}%调整footnote的格式
\setbeamercolor{bibliography entry author}{fg=purple4}%调整footnote参考文献的颜色
\setbeamercolor{footnote mark}{fg=purple4}%调整footnote的角标的颜色
%~~~~~~~~去掉参考文献中的一些field~~~~~~~
\renewbibmacro{in:}{}
\AtEveryCitekey{
\clearfield{title}\clearfield{month}\clearfield{volume}\clearfield{number}\clearfield{pages}\clearfield{issn}\clearfield{pages}\clearfield{url}\clearfield{doi}
}
%~~~~~~~~~~~~~~~~~~导航栏~~~~~~~~~~~~~~~~~
\usepackage{ragged2e}
%\definecolor{gray2}{RGB}{242,242,242}%定义颜色Darkred
%\setbeamercolor{section in head/foot}{fg=white,bg=DarkRed}
%\setbeamercolor{subsection in head/foot}{fg=DarkRed,bg=gray2}
%\setbeamercolor{frametitle}{fg=DarkRed,bg=gray2}
%-------------调整导航栏高度---------------
%\iffalse
%-------------Add Section to Nav-----------
\makeatletter
\setbeamertemplate{headline}{%
\begin{beamercolorbox}[wd=\paperwidth,ht=7.5ex]{section in head/foot}
    \insertnavigation{\paperwidth}
\end{beamercolorbox}
}
\makeatother
%-----------Add Subsection to Nav----------
\makeatletter
%\begin{beamercolorbox}[wd=\paperwidth,ht=3ex]{subsection in head/foot}
%\quad\ \insertsubsection
%\end{beamercolorbox}
\makeatother

%------------Add Frametitle----------------
\makeatletter
\setbeamertemplate{frametitle}{%
\vskip-1.1pt % to shift the frametitle
\begin{beamercolorbox}[wd=\paperwidth,sep=1.8pt]{frametitle}
\ \insertframetitle
\end{beamercolorbox} 
}
\makeatother

%------------导航栏自动换行----------------
\makeatletter
\setbeamertemplate{section in head/foot}{\parbox[c][13.3ex][t]{\dimexpr(\textwidth-1.3cm)/\beamer@sectionmax\relax}{\RaggedRight\fontsize{4}{4}\selectfont\insertsectionhead}}
\makeatother
%\fi
%------------------------------------------
%\section[Title in Nav and Toc]{Title in Document}%If your titles are too long, you could consider using the optional argument of \section instead
%----------------------------------------
%----------------设置--------------------
%----------------------------------------
\DeclareUnicodeCharacter{2212}{-}%Unicode U+2212 is MINUS SIGN, which is not set up by default with inputenc.Just add.
\setlength{\abovecaptionskip}{0pt} % Set the length between the caption and figure
\setlength{\belowcaptionskip}{0pt} % Set the length between the caption and table
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{footline}[frame number]
\setbeamerfont{title}{family=\it}
\setbeamerfont{frametitle}{family=\it}
\setbeamercolor{button}{bg=DodgerBlue3,fg=white}%设置button的颜色
\hypersetup{colorlinks,linkcolor=,urlcolor=DodgerBlue3}%打开并设置超链接文本颜色
\hypersetup{pdfpagemode=FullScreen}% 设置用acrobat打开就会全屏显示
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%----------------------------------------
%---------------即取即用-----------------
%----------------------------------------
%\newcounter{newcountfigure}%创建新计数器
\definecolor{purple4}{RGB}{85,26,139}%定义颜色purple4
\definecolor{DodgerBlue3}{RGB}{24,116,205}%定义颜色purple4
\definecolor{DarkRed}{RGB}{163,0,0}%定义颜色Darkred
\DeclareSIUnit\ppm{ppm}%creat a new unit named ppm
%\texorpdfstring{}%想在标题中加入数学公式时，把公式放在括号内
%\addbibresource{../references.bib}%添加参考文献库
\iffalse%~~~~~~~~~~~~~~图中加强调框~~~~~~~~~~
\begin{tikzpicture}
    \node[anchor=south west,inner sep=0](image) at (0,0){\includegraphics[width=0.8\textwidth]{l_nmr_quer}};
    \scope[x=(image.south east),y=(image.north west)]
    %方便找相对位置
    %\draw[help lines,xstep=.1,ystep=.1] (0,0) grid (1,1);
    %\foreach \x in {0,1,...,9} { \node [anchor=north] at (\x/10,0) {0.\x}; }
    %\foreach \y in {0,1,...,9} { \node [anchor=east] at (0,\y/10) {0.\y}; }
    \draw[red, ultra thick, rounded corners](0.7,0.4) rectangle(0.9,0.6);
    \endscope
\end{tikzpicture}
\fi%~~~~~~~~~~~~~~~~~~图中加强调框~~~~~~~~~~~
\iffalse%~~~~~~~~~~~~~~图片加边框~~~~~~~~~~
%\setlength{\fboxrule}{1pt}    % 边框线线宽  
%\setlength{\fboxsep}{3pt}   % 边框与图形间的距离        
%\fbox{\includegraphics[width=7cm]{blank}}
\fi%~~~~~~~~~~~~~~~~~~图片加边框~~~~~~~~~~~

\iffalse%~~~~~~~~~~~~~三线表~~~~~~~~~~~~~~~
    \begin{table}[H]\footnotesize
        \centering
        \caption{Area occupied by a single molecule}
        \label{mod quant}
        \begin{tabular}{c c c c c}
            \toprule
            &\si{nmol/cm^2}&\si{\angstrom^2}&Ln&Wn\\
            \midrule
            P1&0.1016&163.57&15&11\\
            P2&0.0726&228.89&18&13\\
            P3&0.0612&271.45&20&14\\
            P4&0.0518&320.86&21&15\\
            P5&0.0468&355.08&22&16\\
            P6&0.0564&294.50&20&14\\
            P7&0.0670&247.96&19&13\\
            P8&0.0622&266.98&19&14\\
            P9&0.0881&188.49&16&12\\
            P10&0.0583&285.02&20&14\\
            \bottomrule
        \end{tabular}
    \end{table}
\fi%~~~~~~~~~~~~~~~~三线表~~~~~~~~~~~~~~~


%----------------------------------------
%-------------暂时不用部分---------------
%----------------------------------------

%\setbeamercolor*{palette secondary}{fg=DarkRed}%导航栏从下往上第二行颜色
%\setbeamercolor*{palette tertiary}{fg=white,bg=DarkRed}%导航栏从下往上第三行颜色

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~EEEEEEE~~~NNNN~~~NN~~~DDDDDD~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~EE~~~~~~~~NNNN~~~NN~~~DD~~~DDD~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~EEEEEEE~~~NN~NN~~NN~~~DD~~~~DD~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~EE~~~~~~~~NN~~NN~NN~~~DD~~DDD~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~EEEEEEE~~~NN~~~NNNN~~~DDD~D~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%----------------------------------------
%---------------标题页-------------------
%----------------------------------------
\title[XiLock->I cannot live without brain-work. What else is there to live for? ——《The Sign of Four》]{\textbf{Study and Application on the Underwater Bionic Surface Adhesion and Anti-Adhesion}}
\subtitle{\textbf{A short presentation}}
\author[Li Chuanxi]{Li Chuanxi\inst{1,2}}

\institute[NTU, TJU]{
  \inst{1}%
  School Of Materials Science \& Engineering\\
  Nanyang Technological University
  \and
  \inst{2}%
  School of Chemical Engineering \& Technology\\
  Tianjin University\\[1ex]
\faEnvelopeO  \ \texttt{N1805727B@e.ntu.edu.cn}
}
\date[NTU 2018]{Singapore, \today}

\MyLogo{\includegraphics[height=1.0cm]{NTUlogo}}
%----------------------------------------
%---Table of Contents before sections----
%----------------------------------------
%The next block of commands puts the table of contents at the 
%beginning of each section and highlights the current section:
\AtBeginSection[]
{
  \begin{frame}[plain]
    \frametitle{Table of Contents}
    \tableofcontents[currentsection]
  \end{frame}
  }


