### д��ǰ��Ļ�
������һ���Լ����õ�Model���������Ա�ȡ��

### Trouble Killer
�Ȱ�֮������������дһ��:
###### �����Ű�
�ĵ������ı���ο�[LaTeX�����Ű棨ʹ��XeTeX��](http://linux-wiki.cn/wiki/LaTeX%E4%B8%AD%E6%96%87%E6%8E%92%E7%89%88%EF%BC%88%E4%BD%BF%E7%94%A8XeTeX%EF%BC%89)���ɡ�  


###### �����
ʹ�ú��`\usepackage{listings}`��
```
\begin{lstlisting}
\end{lstlisting}
```
��ʵ�ִ����Ĳ��룬������Beamer��ʹ��lstlisting����ʱ������`\begin{frame}`���`[fragile]`������`\begin{frame}[fragile]`��������Ϊ`lstlisting`������verbatim�ġ�  
 ��beamer-frames can't handle verbatim environment (and listings is a kind of verbatim). If a frame contains a verbatim (or listings)-environment, the frame must contain the option fragile. ��
 �ο���[����](https://tex.stackexchange.com/questions/130109/cant-insert-code-in-my-beamer-slide)  


�ðɣ�˳��Ҳ����һ��Latex

### TeX �ĵ����뷢չ

��ʮ���ĩ��Donald E. Knuth���ߵ��ɣ��ڿ������������The Art of Computer Programming���ڶ����У��ʱ�����ɼ�����Ű��У���ĵ������е��޷����ܡ���˾����� ��������һ���������ļ�����Ű�ϵͳ������������ TeX��

TeX��Դ�������� Pascal д�ɵģ�ԭ���� Knuth ϣ�� TeX�����ܷ������ֲ������ �Ĳ���ϵͳ��ȥ����ʱ Pascal �����ʺ�����һҪ��ı�����ԡ���Ҳʹ�� TeX�����Ѿ� �ڼ������еļ����ϵͳ�еõ�ʵ�֡�

TeX����һ����Ҫ����������������������豸�޹صġ�TeX������ļ���Ϊ DVI �� �������ǡ�Device Independent����һ�� TeX����������ļ��������õ��� DVI �ļ��Ϳ� �Ա��͵��κ�����豸���ӡ������Ļ�Ȳ����ܻ�õ���ͬ�Ľ������������Щ����豸�� ����û���κι�ϵ����˵�� DVI �ļ������е�Ԫ�أ���ҳ�����õ��ı����ַ���λ�ö��� �̶������ܸ��ġ�

### TeXϵͳ�����а汾��
TeXϵͳ�Ǽ����˱��� (La)TeX �ĵ����������ͺ����ϵͳ�����õİ�����

- MikTeX��MiKTeX �� Windows ������õ� TeXϵͳ����ַ�� http://www.miktex.org �� http://miktex.sourceforge.net
- TeXLive��TeXLive ���ɹ��� TeX�û���֯ TUG ������ TeXϵͳ��**֧�ֲ�ͬ�Ĳ���ϵͳƽ̨����һ������ˣ�**���� Windows �汾�ֳ� fpTeX �� Unix/Linux �汾�������� teTeX ����ַ��http://tug.org/texlive/
- CTeX��CTeX ������װ�ǻ��� Windows �µ� MiKTeX ϵͳ�������˱༭�� WinEdt �� PostScript ������� Ghostscript �� GSview ����Ҫ���ߡ� CTeX ������װ�� MiKTeX �Ļ����������˶����ĵ�����֧�֡� CTeX ������װ֧�� CJK, xeCJK, CCT, TY �ȶ��� ���� TeX����ʽ����ַ��http://www.ctex.org

�����κν׶ε� TeX �û������ﶼ�Ƽ���װ TeX Live ��һ���а档����ʹ�� macOS�����Ƽ���װ���� TeX Live ������ macTeX ��һ���а档**ע�⣺���Ƽ� CTeX ���а档û�����ɣ��������͡�**[�ο���TeX ���桢��ʽ�����а�֮����](http://www.latexstudio.net/archives/51537.html)

### [���棨��������](https://www.overleaf.com/learn/latex/Articles/The_TeX_family_tree:_LaTeX,_pdfTeX,_XeTeX,_LuaTeX_and_ConTeXt)
�����������ɻ�ĳ�������Ļ������ܾ��ǽ���TeX�﷨�������ų��У������ų�ҳ���漰�����֡����С���ҳ���㷨����ԭʼ��������TeX��

- TeX��1978����Donald Erwin Knuth�������Ǻ����󲿷�TeX��صĻ�����������dvi�ļ���Ȼ������������ת��Ϊpdf�ļ���
- pdfTeX��Tex���Ե���һ��ʵ�֣���TeX����ֱ�ӱ����PDF�ļ���
- XeTeX��TeX ���Ե��µ�ʵ�֣�֧�� Unicode �����ֱ�ӷ��ʲ���ϵͳ���塣
- LuaTeX��TeX ���Ե�һ������������չ��ʵ�֡�LuaTeX֧��Unicode��ϵͳ�������Ƕ������չ����ֱ�����PDF��ʽ�ļ���Ҳ������Ȼ��� DVI ��ʽ��

����XeTex��LuaTex��ѡ��*��ʵ�Ķ�������£�LuaTeX �� XeTeX ������������ûʲô���*
LuaTex���ĵ���������ǶLua���ԣ�������������չ�Ը�ǿ���������������ʺܵͣ���������������Ļ������ܲ�һ������LuaTeX�Ļ����������ĸо�����˵����ʲôʱ���ͻȻ������ˡ���XeTeX�����Ϳ�������˵���⼸��Ҳû��̫��ı仯���������建����Ƶ����⣬��Windows��ż�������˺��ջ�
***һ������£�Ӣ����pdfLaTex���룬������XeLaTex���롣***


### TeX���˱༭���Ļ�����ʲô��
TeX��һ���ǳ���Ŷ��յĳ������������Ա༭���ģ��鼮���õ�Ƭ��ѧ����־�����˼� ���������� �༭���ף���ѧ����ͼ����·ͼ���������壬�й����壬����Χ�����ף�������ʵ��ֻ���� ���ĵ����ʺ��� TeX�༭��

### ���ɲ���
[block��ӱ߿�](https://tex.stackexchange.com/questions/11211/can-i-have-framed-blocks-in-beamer)���ɲο�tcolorbox��[Manual](https://mirror.hmc.edu/ctan/macros/latex/contrib/tcolorbox/tcolorbox.pdf)  

### ����Ķ�
[�ְ��ֽ�����LaTeXд����ʿ���ġ���Nicola L. C. Talbot][1]  
[�½ڱ����Ű���][2]
[Beamer��������-���뱾-������ʦ����][3]

[1]:https://mp.weixin.qq.com/s?__biz=MzAxNjI3Mzc3Mw==&mid=2652773033&idx=1&sn=007ae6bb8c3f26b66bddb0ddb112ca58&chksm=801de2abb76a6bbdd92bf576d59ce94b7bc458f3e34b7163937a32a215262c76a9be3d1b59a9&mpshare=1&scene=24&srcid=09089mUT0Tb1wOsi0EfYYlzF#rd
[2]:https://mp.weixin.qq.com/s?__biz=MzAxNjI3Mzc3Mw==&mid=2652773067&idx=1&sn=d6e40ab83c5dfc1f5b4ca114dd7a8786&chksm=801de2c9b76a6bdfc1b45ad820632afd8e672be4a3137081a8e56b9fb4812e8b783192778e47&mpshare=1&scene=24&srcid=0908BS4VnswQpfLZCnqjr01Y#rd
[3]:http://www.latexstudio.net/archives/51706.html
### Nice Model
**�鼮ģ��**  
[��ԭ������ʽ��D&D 5e LaTeXģ��](http://www.latexstudio.net/archives/6865.html)  
[һ����ֹ�ھ��µ�LaTeX�鼮ģ��](http://www.latexstudio.net/archives/51443.html)  
**����ģ��***  
[����֦�ļ���LaTeXģ��](http://www.latexstudio.net/archives/7498.html)  
[moderncv���Ƶ������ļ���](http://www.latexstudio.net/archives/11760.html)  
[������˵����ȫ���ϸ�µ�����ʽ����](http://www.latexstudio.net/archives/51442.html)  
**ѧ������**  
[������ɫ�豸����](http://www.latexstudio.net/archives/351.html)  
[����ɫ����](http://www.latexstudio.net/archives/5448.html)  
