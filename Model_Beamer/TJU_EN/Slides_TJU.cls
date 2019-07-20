\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{Slides_TJU}%class的名称
% [2013/2/2, Mark Andrews's Beamer slides class.]
\LoadClass[10pt,xcolor=dvipsnames,serif,professionalfont]{beamer}
%----------------------------------------
%----------------宏包--------------------
%----------------------------------------
%\RequirePackage{pifont,manfnt}}%特殊字符
\RequirePackage{booktabs}%允许表格中使用不同粗细的横线来划分行
\RequirePackage[T1]{fontenc}%使用T1字体
\RequirePackage{eulervm}%数学字体
\RequirePackage{tikz}%Tikz
\linespread{1.05}
\RequirePackage{xspace}%define macros that will insert a space dynamically
%\RequirePackage{apacite}
\RequirePackage{rotating}%可以将文本、表格、图形旋转
\RequirePackage{multirow}%表格中某一单元横跨两行以上
\RequirePackage{graphicx}%图像
\RequirePackage{subfig}%子图
%\input{andrews_commands}
\RequirePackage{amssymb,latexsym,amsmath,amsfonts,amscd}%数学符号
\RequirePackage{siunitx}%数学单位
\RequirePackage{fontawesome}%提供可缩放的矢量图标，如首页中的邮件
\RequirePackage{listings}%排版 C, C++, Pascal等源代码，提供语法加亮显示的功能
\RequirePackage{beamerfoils}%控制Logo的出现和消失
\RequirePackage{pgf}%pgf
\RequirePackage{caption}%标题
\RequirePackage{multicol}%分栏/多列
\RequirePackage[backend=biber,style=science,]{biblatex}%BibTex参考文献宏包
\RequirePackage{silence}%忽略Warning的宏包
%----------------------------------------
%----------------设置--------------------
%----------------------------------------
\usecolortheme[named=Gray]{structure} 
\setbeamerfont{title}{family=\it}
\setbeamerfont{footnote}{size=\tiny}%调整引文格式
\setbeamerfont{frametitle}{family=\it}
\setbeamercolor{titlelike}{fg=black!60!red}
\definecolor{Mygrey}{gray}{0.75}
%\addbibresource{references.bib} %BibTeX数据文件及位置
\setlength{\abovecaptionskip}{0pt} % Set the length between the caption and table
\setlength{\belowcaptionskip}{2pt} % Set the length between the caption and figure
\captionsetup[figure]{labelfont={bf,small},textfont={it,small},justification=centering}
\captionsetup[subfloat]{labelfont={bf,small},textfont={it,small},justification=centering}
\usetikzlibrary{positioning}
%\usetikzlibrary{trees}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{footline}[frame number]
\WarningFilter{biblatex}{Patching footnotes failed}%忽略BibTex的固有Warning
%----------------------------------------
%----------------首页--------------------
%----------------------------------------
\MyLogo{\pgfputat{\pgfxy(-0.5,7.7)}{\pgfbox[right,base]{\includegraphics[height=0.7cm]{TJUlogo.png}}}}  % Put the logo in the upper right
\title{Study and Application on the Underwater Bionic Surface Adhesion and Anti-Fouling}
\author{Li Chuanxi} 
\institute{School of Chemical Engineering and Technology\\
Tianjin University\\[1ex]
\faEnvelopeO  \ \texttt{molakirlee@tju.edu.cn}}
\date{}


%----------------------------------------
%----------------未知--------------------
%----------------------------------------
\DeclareSymbolFont{legacymaths}{OT1}{cmr}{m}{n}
\DeclareMathAccent{\dot}{\mathalpha}{legacymaths}{95}
\DeclareMathAccent{\bar}{\mathalpha}{legacymaths}{22}
\DeclareMathAccent{\tilde}{\mathalpha}{legacymaths}{126}