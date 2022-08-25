\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zuelthesis}



%%% 添加文档信息
% 中英文作者名
\newcommand{\@authoreng}{} %作者英文名
\renewcommand{\author}[2]{
  \def\@author{#1}
  \renewcommand{\@authoreng}{#2}
}
% 中英文标题名
\newcommand{\@titleeng}{}
\renewcommand{\title}[2]{
  \def\@title{#1}
  \renewcommand{\@titleeng}{#2}
}
% 学号
\newcommand{\@studentnumber}{}
\newcommand{\studentnumber}[1]{\renewcommand{\@studentnumber}{#1}}
% 班级
\newcommand{\@class}{}
\newcommand{\class}[1]{\renewcommand{\@class}{#1}}
% 专业
\newcommand{\@major}{}
\newcommand{\major}[1]{\renewcommand{\@major}{#1}}
% 学院
\newcommand{\@school}{}
\newcommand{\school}[1]{\renewcommand{\@school}{#1}}
% 指导教师
\newcommand{\@advisor}{}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}
% 指导教师职称
\newcommand{\@advisortitle}{}
\newcommand{\advisortitle}[1]{\renewcommand{\@advisortitle}{#1}}




%%% 宏包设置
\LoadClass[zihao=-4, a4paper, oneside, UTF8, fancyhdr]{ctexbook} %支持中文
\RequirePackage{fontspec}
\RequirePackage{makecell}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{geometry}  % [showframe]
\RequirePackage{tocloft}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{caption}
\RequirePackage{booktabs}
\RequirePackage{pifont}  % 带圈脚注
\RequirePackage[backend=biber, style=gb7714-2015, sorting=gb7714-2015, sortlocale=zh__pinyin]{biblatex} % 参考文献格式
\RequirePackage{listings}
\RequirePackage{xcolor}  % 代码颜色
\RequirePackage{amsmath}
\RequirePackage{hyperref}
\RequirePackage{xurl}  % 解决超长url换行问题
\RequirePackage[hang,flushmargin,perpage]{footmisc}  % 取消脚注缩进
\usepackage{chngcntr}





%%% 超链接
\hypersetup{
    colorlinks=true,  % 用颜色标识而不是方框
    linkcolor=black,  % 目录等中的超链接
%    hidelinks,  % 隐藏超链接，包括方框和颜色
    urlcolor=blue,
    citecolor=green
}


%%% 设置英文字体，CTEX默认中文字体为宋体
\setmainfont{Times New Roman}



%%% 页面设置
\geometry{left=2.5cm,right=2cm,top=3cm,bottom=2.5cm}
\savegeometry{global}
\setlength{\parskip}{0em}  % 段间距等于行间距
\setstretch{1.4}  % 经测试，1.4大致对应word中的1.25倍行距
\setlength{\parindent}{2em}



%%% 创建封面
\newcommand{\makecover}{
    \newgeometry{left=3.18cm,right=3.18cm,top=2.54cm,bottom=2.54cm} %封面页边距对称
    \thispagestyle{empty}  % 无页码
    % 插入封面图片
\begin{center}
    \includegraphics[scale=0.15]{cover_imgs/name.png} \\
    \vspace*{12pt}
    \zihao{-0}{\textbf{本科毕业论文（设计）}} \\
    \vspace*{24pt}
    \includegraphics[scale=0.35]{cover_imgs/badge.png} \\
    \vspace*{36pt}
\end{center}
% 制作封面表格
\begin{center}
    \renewcommand\arraystretch{1.9}
    \begin{tabular}{rc}
        \zihao{4}{\textbf{论文题目：}}&
        \multicolumn{1}{b{8cm}}{\zihao{4}{\makecell{\@title}}} \\ [-0.1cm]   \cline{2-2}
        \zihao{4}{\textbf{姓\qquad 名：}}&
        \multicolumn{1}{c}{\zihao{4}{\@author}}  \\ [-0.2cm] \cline{2-2}
        \zihao{4}{\textbf{学\qquad 号：}}&
        \multicolumn{1}{c}{\zihao{4}{\@studentnumber}}\\ [-0.2cm] \cline{2-2}
        \zihao{4}{\textbf{班\qquad 级：}}&
        \multicolumn{1}{c}{\zihao{4}{\@class}}\\ [-0.2cm] \cline{2-2}
        \zihao{4}{\textbf{专\qquad 业：}}& 
        \multicolumn{1}{c}{\zihao{4}{\@major}}\\ [-0.2cm] \cline{2-2}
        \zihao{4}{\textbf{学\qquad 院：}}&
        \multicolumn{1}{c}{\zihao{4}{\@school}}\\ [-0.2cm] \cline{2-2}
        \zihao{4}{\textbf{指导教师：}}&
        \multicolumn{1}{c}{\zihao{4}{\@advisor\quad \@advisortitle}}\\ [-0.2cm] \cline{2-2}
        \zihao{4}{\textbf{完成时间：}}&
        \multicolumn{1}{c}{\zihao{4}{\today}}\\ [-0.2cm]  \cline{2-2}
    \end{tabular}
\end{center}

\loadgeometry{global}  % 恢复页面设置
}



%%% 创建作者声明

\newcommand{\makestatement}{
    \newpage
    \thispagestyle{empty}  % 无页码
    \vspace*{12pt}
    \centerline{\zihao{2}{\textbf{作者声明}}}
    \vspace*{12pt}
    % \begin{spacing}{1.5}
    \zihao{4}{本论文报告是在老师的指导下由本人独立撰写完成的，没有剽窃、抄袭、造假等违反道德、学术规范和其他侵权行为。对本论文报告的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。因本论文报告引起的法律结果完全由本人承担。\par 特此声明。}
    % \end{spacing}
    

% 空行
\vspace*{36pt}
% 签名表
\begin{flushright}
\renewcommand\arraystretch{1}
    \begin{tabular}[r]{rl>{\centering\arraybackslash }m{10em}}
    \zihao{4}{作者专业}                 & : & \zihao{4}{\@major}       \\
    \zihao{4}{作者学号}                 & : & \zihao{4}{\@studentnumber}  \\
    \zihao{4}{作者签名}                 & : & \multicolumn{1}{r}{\zihao{5}{\kaishu{（手写有效）}}} \\
    \multicolumn{1}{l}{} & \multicolumn{2}{r}{\zihao{4}{\textbf{年\quad 月\quad 日}}\zihao{5}{\kaishu{（手填）}}}   
    \end{tabular}
\end{flushright}
}



%%% 创建标题页
\renewcommand{\maketitle}{
    \begin{titlepage}
    
     \begin{center}
        \vspace*{8em}
        \begin{spacing}{1.0}  % 局部定义为单倍行距
        \zihao{2} \heiti \textbf{\@title} \\
        \vspace*{1em}
        \zihao{3} \textbf{\@author} \\
        \vspace*{1em}
        \zihao{2} \textit{\textbf{\@titleeng}}  \\
        \vspace*{1em}
        \zihao{3} \textit{\textbf{\@authoreng}} \\
        \end{spacing}
        \vfill
        \zihao{3} \textbf{\today}\\
        \vspace*{2em}
    \end{center}
    \end{titlepage}
    \zihao{-4}  % 设置后面为小四号字
}


%%% 重定义plain样式并应用
\fancypagestyle{plain}{
    \pagestyle{fancy}
    \fancyhf{}
    \chead{\zihao{-5} 中南财经政法大学\number\year 届本科生毕业论文（设计）}
    \cfoot{\zihao{-5} -\thepage -}
    \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{plain}


%%% 定义中文摘要和关键词环境
\newenvironment{cnabstract}[1]{
    \def\@cnkeywords {#1}
    \newpage
    \pagenumbering{arabic} %开始罗马数字页码
    \vspace*{12pt}
    \centerline{\zihao{-2} \textbf{摘\hspace{2em}要}}
    \vspace*{12pt}
    \zihao{-4}
}{
    \par
    \vspace*{12pt}
    \zihao{-2} \textbf{关键词：}{\zihao{-4} \@cnkeywords}
}



%%% 定义英文摘要和关键词环境
\newenvironment{engabstract}[1]{
    
    \def\@engkeywords{#1}
    \newpage
    \pagenumbering{arabic} %开始罗马数字页码
    \vspace*{12pt}
    \centerline{\zihao{-2} \textbf{Abstract}}
    \vspace*{12pt}
    \zihao{-4}
}{
    \par
    \vspace*{12pt}
    \zihao{-3} \textbf{Key words:}{\zihao{-4} \@engkeywords}
}



%%% 自定义目录和多级标题
% 用ctexset才能在目录中正常显示
\setcounter{secnumdepth}{3} %解决第四级标题计数问题
\ctexset{
    contentsname = {目\hspace{1em}录},
    chapter = {
        format += \bfseries \centering \heiti \zihao{3},
        name = {,、},
        number = \chinese{chapter},
        beforeskip = 12pt,
        afterskip = 0pt,
        aftername = \hspace{0pt}
    },
    section = {
        format += \bfseries \raggedright \songti \zihao{4},
        name = {\hspace{2em}（,）},
        number = \chinese{section},
        beforeskip = 0pt,
        afterskip = 0pt,
        aftername = \hspace{0pt}
    },
    subsection = {
        format += \bfseries \raggedright \songti \zihao{-4},
        name = {\hspace{2em},.},
        number = \arabic{subsection},
        beforeskip = 0pt,
        afterskip = 0pt,
        aftername = \hspace{0pt}
    },
    subsubsection = {
        format += \bfseries \raggedright \songti \zihao{-4},
        name = {\hspace{2em}（,）},
        number = \arabic{subsubsection},
        beforeskip = 0pt,
        afterskip = 0pt,
        aftername = \hspace{0pt}
    }
}
% 修改目录深度，显示到款次级（即“（一）”）
% \setcounter{secnumdepth}{1}
\setcounter{tocdepth}{1}
% 标题居中
\renewcommand{\cfttoctitlefont}{\hfill \songti \zihao{-2} \bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
% 段前段后各空一行
\setlength{\cftbeforetoctitleskip}{12pt}
\setlength{\cftaftertoctitleskip}{12pt}
% 修改chapter和section
\renewcommand{\cftdot}{·}
% 点的距离
\renewcommand{\cftchapdotsep}{-2}
\renewcommand{\cftsecdotsep}{-3}
% 修改字体字号
\renewcommand{\cftchapfont}{\heiti \zihao{4} \bfseries}
\renewcommand{\cftsecfont}{\songti \zihao{-4}}
% 取消额外间距，对齐
\renewcommand{\cftchapaftersnumb}{\hspace{-0.7em}} 
\cftsetindents{chapter}{0em}{0em}
\cftsetindents{section}{0em}{0em}
% 定义可调节行距的目录命令
\newcommand{\adjustabletableofcontents}[1]{
    \begin{spacing}{#1}
    \tableofcontents
    \pagenumbering{arabic}  % 目录单独起序
    \end{spacing}
}



%%% 图表标题
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\captionsetup{labelsep=quad, font={bf, normalsize}}

%%% 参考文献格式
\renewcommand{\bibfont}{\zihao{5}}
\defbibheading{zuelbib}[\bibname]{%
    \addcontentsline{toc}{chapter}{#1}
    \vspace*{12pt}
    \centering \songti \textbf{\zihao{-2}{#1}} 
    \vspace*{12pt}
}


%%% 公式
\renewcommand{\theequation}{%
    式\thechapter-\arabic{equation}
}


%%% 附录
% 自定义附录标题
\newcounter{appdxcounter}
\setcounter{appdxcounter}{1}

\newcommand{\appdx}[1]{
    % 第一个附录在大标题下，从第二个目录开始另起一页
    \ifnum \value{appdxcounter}=1 \par \else \newpage \fi 
    \phantomsection  % reestablish the hyper anchors
    \addcontentsline{toc}{section}{\hspace{2.6em}附录\chinese{appdxcounter}}
    \leftline{\zihao{4} \textbf{附录\chinese{appdxcounter}}}
    \vspace*{12pt}
    \centerline{\zihao{3}{\heiti{\textbf{#1}}}}
    \vspace*{12pt}
    \stepcounter{appdxcounter}
    
}


% 用来设置附录中代码的样式 （演示语言为Python）
\renewcommand{\lstlistingname}{代码文件}
\lstset{
    basicstyle          =   \sffamily,          % 基本代码风格
    keywordstyle        =   \bfseries,          % 关键字风格
    commentstyle        =   \rmfamily\itshape,  % 注释的风格，斜体
    stringstyle         =   \ttfamily,  % 字符串风格
    flexiblecolumns,                % 别问为什么，加上这个
    numbers             =   left,   % 行号的位置在左边
    showspaces          =   false,  % 是否显示空格，显示了有点乱，所以不显示了
    numberstyle         =   \zihao{-5}\ttfamily,    % 行号的样式，小五号，tt等宽字体
    showstringspaces    =   false,
    captionpos          =   t,      % 这段代码的名字所呈现的位置，t指的是top上面
    frame               =   lrtb,   % 显示边框
}

\lstdefinestyle{Python}{
    language        =   Python, % 语言选Python
    basicstyle      =   \zihao{5}\ttfamily,
    numberstyle     =   \zihao{5}\ttfamily,
    keywordstyle    =   \color{blue},
    keywordstyle    =   [2] \color{teal},
    stringstyle     =   \color{magenta},
    commentstyle    =   \color{red}\ttfamily,
    breaklines      =   true,   % 自动换行，建议不要写太长的行
    columns         =   fixed,  % 如果不加这一句，字间距就不固定，很丑，必须加
    basewidth       =   0.5em,
}


