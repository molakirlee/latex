\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{0Model/slides_NTU}%class的名称
\LoadClass[10pt,xcolor=dvipsnames,serif,professionalfont]{beamer}
%----------------------------------------
%----------------宏包--------------------
%----------------------------------------
\RequirePackage[utf8]{inputenc}%识别特殊字体的输入
%\RequirePackage{utopia} %font utopia imported
\RequirePackage{beamerfoils}%控制Logo的出现和消失
\RequirePackage{pifont,manfnt}%特殊字符
\RequirePackage{booktabs}%允许表格中使用不同粗细的横线来划分行。
\RequirePackage[T1]{fontenc}%使用T1字体
\RequirePackage{eulervm}%数学字体
\RequirePackage{tikz}%Tikz
\RequirePackage{xspace}%define macros that will insert a space dynamically 
\RequirePackage{rotating}%可以将文本、表格、图形旋转
\RequirePackage{multirow}%表格中某一单元横跨两行以上
\RequirePackage{graphicx}%图像
\RequirePackage{subfig}%子图
\RequirePackage{amssymb,latexsym,amsmath,amsfonts,amscd}%数学符号
\RequirePackage{siunitx}%数学单位
\RequirePackage{fontawesome}%提供可缩放的矢量图标，如首页中的邮件
\RequirePackage{listings}%排版 C, C++, Pascal等源代码，提供语法加亮显示的功能
\RequirePackage{pgf}%pgf
\RequirePackage{caption}%标题
\RequirePackage{multicol}%分栏/多列
\RequirePackage[backend=biber,style=science,]{biblatex}%BibTex参考文献宏包
\RequirePackage{silence}%忽略Warning的宏包
%----------------------------------------
%----------------设置--------------------
%----------------------------------------
\usetheme{Ilmenau}%模板主题
\usecolortheme{beaver}%颜色主题
\captionsetup[figure]{labelfont={bf,small},textfont={it,small},justification=centering}%设置figure的Caption格式
\captionsetup[subfloat]{labelfont={bf,small},textfont={it,small},justification=centering}%设置subfloat的Caption格式
\setlength{\abovecaptionskip}{0pt} % Set the length between the caption and table
\setlength{\belowcaptionskip}{2pt} % Set the length between the caption and figure
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{footline}[frame number]
\setbeamerfont{title}{family=\it}
\setbeamerfont{frametitle}{family=\it}
\usetikzlibrary{positioning}
\WarningFilter{biblatex}{Patching footnotes failed}%忽略BibTex的固有Warning
\setbeamerfont{footnote}{size=\tiny}%调整引文格式
\captionsetup[figure]{labelfont={bf,small},textfont={it,small},justification=centering}
\captionsetup[subfloat]{labelfont={bf,small},textfont={it,small},justification=centering}

%----------------------------------------
%---------------标题页-------------------
%----------------------------------------
\title[About Beamer]{\textbf{Study and Application on the Underwater Bionic Surface Adhesion and Anti-Fouling}}
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

\date[NTU 2018] % (optional)
{Location, \today}
\MyLogo{\includegraphics[height=1.0cm]{NTUlogo}}
