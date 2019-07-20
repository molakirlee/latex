### 写在前面的话
整理了一下自己常用的Model放在这里以便取用

### Trouble Killer
先把之间遇到的问题写一下:
###### 中文排版
文档的中文编译参考[LaTeX中文排版（使用XeTeX）](http://linux-wiki.cn/wiki/LaTeX%E4%B8%AD%E6%96%87%E6%8E%92%E7%89%88%EF%BC%88%E4%BD%BF%E7%94%A8XeTeX%EF%BC%89)即可。  


###### 代码块
使用宏包`\usepackage{listings}`和
```
\begin{lstlisting}
\end{lstlisting}
```
可实现代码块的插入，但是在Beamer中使用lstlisting环境时必须在`\begin{frame}`后加`[fragile]`，即：`\begin{frame}[fragile]`，这是因为`lstlisting`环境是verbatim的。  
 “beamer-frames can't handle verbatim environment (and listings is a kind of verbatim). If a frame contains a verbatim (or listings)-environment, the frame must contain the option fragile. ”
 参考：[链接](https://tex.stackexchange.com/questions/130109/cant-insert-code-in-my-beamer-slide)  


好吧，顺便也介绍一下Latex

### TeX 的诞生与发展

七十年代末，Donald E. Knuth（高德纳）在看到其多卷巨著“The Art of Computer Programming”第二卷的校样时，对由计算机排版的校样的低质量感到无法忍受。因此决定自 己来开发一个高质量的计算机排版系统，这样就有了 TeX。

TeX的源程序是用 Pascal 写成的，原因是 Knuth 希望 TeX尽可能方便地移植到其它 的操作系统中去。当时 Pascal 是最适合于这一要求的编程语言。这也使得 TeX现在已经 在几乎所有的计算机系统中得到实现。

TeX的另一个重要的特征就是它的输出是与设备无关的。TeX的输出文件称为 DVI 文 件，即是“Device Independent”。一旦 TeX处理了你的文件，你所得到的 DVI 文件就可 以被送到任何输出设备如打印机，屏幕等并且总会得到相同的结果，而这与这些输出设备的 限制没有任何关系。这说明 DVI 文件中所有的元素，从页面设置到文本中字符的位置都被 固定，不能更改。

### TeX系统（发行版本）
TeX系统是集成了编译 (La)TeX 文档所需的软件和宏包的系统。常用的包括：

- MikTeX。MiKTeX 是 Windows 下最好用的 TeX系统。网址： http://www.miktex.org 或 http://miktex.sourceforge.net
- TeXLive。TeXLive 是由国际 TeX用户组织 TUG 开发的 TeX系统，**支持不同的操作系统平台（这一点棒极了）**。其 Windows 版本又称 fpTeX ， Unix/Linux 版本即著名的 teTeX 。网址：http://tug.org/texlive/
- CTeX。CTeX 中文套装是基于 Windows 下的 MiKTeX 系统，集成了编辑器 WinEdt 和 PostScript 处理软件 Ghostscript 和 GSview 等主要工具。 CTeX 中文套装在 MiKTeX 的基础上增加了对中文的完整支持。 CTeX 中文套装支持 CJK, xeCJK, CCT, TY 等多种 中文 TeX处理方式。网址：http://www.ctex.org

对于任何阶段的 TeX 用户，这里都推荐安装 TeX Live 这一发行版。若你使用 macOS，则推荐安装基于 TeX Live 开发的 macTeX 这一发行版。**注意：不推荐 CTeX 发行版。没有理由，不听解释。**[参考：TeX 引擎、格式、发行版之介绍](http://www.latexstudio.net/archives/51537.html)

### [引擎（编译器）](https://www.overleaf.com/learn/latex/Articles/The_TeX_family_tree:_LaTeX,_pdfTeX,_XeTeX,_LuaTeX_and_ConTeXt)
引擎是真正干活的程序。引擎的基本功能就是解释TeX语法，把字排成行，把行排成页，涉及到断字、断行、分页等算法。最原始的引擎是TeX。

- TeX：1978年由Donald Erwin Knuth开发。是后来大部分TeX相关的基础。其生成dvi文件，然后经由其他程序转换为pdf文件。
- pdfTeX：Tex语言的又一个实现，将TeX代码直接编译成PDF文件。
- XeTeX：TeX 语言的新的实现，支持 Unicode 编码和直接访问操作系统字体。
- LuaTeX：TeX 语言的一个完整的有扩展的实现。LuaTeX支持Unicode、系统字体和内嵌语言扩展，能直接输出PDF格式文件，也可以仍然输出 DVI 格式。

关于XeTex和LuaTex的选择：*现实的多数情况下，LuaTeX 比 XeTeX 更慢，而功能没什么差别。*
LuaTex核心的优势是内嵌Lua语言，计算能力和扩展性更强，但该优势利用率很低，而且运行起来你的机子性能不一定够。LuaTeX的话，用起来的感觉就是说不定什么时候就突然间崩掉了。而XeTeX，但就开发上来说，这几年也没有太大的变化，由于字体缓存机制的问题，在Windows上偶尔会让人很恼火。
***一般情况下，英文用pdfLaTex编译，中文用XeLaTex编译。***


### TeX除了编辑论文还能做什么？
TeX是一个非常多才多艺的程序。它不但可以编辑论文，书籍，幻灯片，学术杂志，个人简 历，还可以 编辑乐谱，化学分子图，电路图，国际象棋，中国象棋，甚至围棋棋谱，……事实上只有少 量文档不适合用 TeX编辑。

### 技巧补充
[block添加边框](https://tex.stackexchange.com/questions/11211/can-i-have-framed-blocks-in-beamer)，可参考tcolorbox的[Manual](https://mirror.hmc.edu/ctan/macros/latex/contrib/tcolorbox/tcolorbox.pdf)  

### 相关阅读
[手把手教你用LaTeX写作博士论文——Nicola L. C. Talbot][1]  
[章节标题排版宏包][2]
[Beamer快速入门-中译本-黄旭华老师翻译][3]

[1]:https://mp.weixin.qq.com/s?__biz=MzAxNjI3Mzc3Mw==&mid=2652773033&idx=1&sn=007ae6bb8c3f26b66bddb0ddb112ca58&chksm=801de2abb76a6bbdd92bf576d59ce94b7bc458f3e34b7163937a32a215262c76a9be3d1b59a9&mpshare=1&scene=24&srcid=09089mUT0Tb1wOsi0EfYYlzF#rd
[2]:https://mp.weixin.qq.com/s?__biz=MzAxNjI3Mzc3Mw==&mid=2652773067&idx=1&sn=d6e40ab83c5dfc1f5b4ca114dd7a8786&chksm=801de2c9b76a6bdfc1b45ad820632afd8e672be4a3137081a8e56b9fb4812e8b783192778e47&mpshare=1&scene=24&srcid=0908BS4VnswQpfLZCnqjr01Y#rd
[3]:http://www.latexstudio.net/archives/51706.html
### Nice Model
**书籍模板**  
[还原经典样式的D&D 5e LaTeX模板](http://www.latexstudio.net/archives/6865.html)  
[一个不止于精致的LaTeX书籍模板](http://www.latexstudio.net/archives/51443.html)  
**简历模板***  
[林莲枝的简历LaTeX模板](http://www.latexstudio.net/archives/7498.html)  
[moderncv定制的美美的简历](http://www.latexstudio.net/archives/11760.html)  
[简历会说话！全面而细致的三栏式简历](http://www.latexstudio.net/archives/51442.html)  
**学术海报**  
[深蓝紫色设备海报](http://www.latexstudio.net/archives/351.html)  
[淡蓝色海报](http://www.latexstudio.net/archives/5448.html)  
