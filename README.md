![GitHub](https://img.shields.io/github/license/ToryDeng/ZUEL-Thesis)
![](https://img.shields.io/badge/Language-TeX-blue)
![GitHub Repo stars](https://img.shields.io/github/stars/ToryDeng/ZUEL-Thesis)
![GitHub repo size](https://img.shields.io/github/repo-size/ToryDeng/ZUEL-Thesis)
# 中南财经政法大学本科毕业论文LaTeX模板
本模板适用于中南财经政法大学**本科**毕业论文撰写。参考了教务部对本科毕业论文的[基本规范](http://jwc.zuel.edu.cn/2021/0303/c10880a264631/page.htm)（试行）。若您觉得此模板对您有帮助，请点亮右上角的小星星（star）~

***在使用前，请与您的指导老师协商好，确定可以提交pdf格式的文件进行论文审阅，并仔细阅读下面的使用说明。注意：本模板并非官方模板，使用本模板的一切后果由您自行承担。***
-----------
## 内容列表
- [背景](#背景)
- [本模板特性](#本模板特性)
- [主要文件结构](#主要文件结构)
- [下载模板](#下载模板)
- [使用模板](#使用模板)
  - [填写基本信息](#填写基本信息)
  - [填写论文主要内容](#填写论文主要内容)
  - [编译](#编译)
- [反馈与贡献](#反馈与贡献)
- [软件许可证](#软件许可证)
## 背景
本模板作者在使用word排版本科毕业论文时，深感痛苦。身边的同学也因为使用word，在与内容无关的排版问题上花费了大量时间。在GitHub上搜索财大本科毕业论文的LaTeX模板，虽然有一些相关项目（如[donk3yzz/zuel_zh](https://github.com/donk3yzz/zuel_zh)、[jinlin82/rmd-zuel-thesis-template](https://github.com/jinlin82/rmd-zuel-thesis-template)等），但要么时间久远，要么难以快速上手。这促使作者下定决心自学LaTeX，在几天内完成了一个较为完善的纯LaTeX模板。理论上，即使是从未接触过LaTeX的同学，在几个小时内也能上手。
## 本模板特性
1. 注释完善，理解方便。
2. 对公式、图表、脚注、交叉引用等常见格式均给出了例子。
3. 教务部对参考文献要求为：
```列示顺序。主要参考文献列示顺序为中文在前，外文在后。中文文献按第一作者姓氏的拼音增序排列，外文文献按第一作者名的字母增序排列，第一作者相同的文献则按发表时间增序排列。```
  本模板支持按照此顺序自动对参考文献排序。
4. 支持从源代码文件直接导入代码，无需手动复制粘贴（支持中文注释）。
5. 已设置好超链接颜色，跨行超链接自动换行。
## 主要文件结构
```
│  thesis.bib           # 存放参考文献
│  main.tex             # 主文件
│  zuelthesis.cls       # LaTeX类
│          
├─code
│      matrix.py        # 演示代码
│      
├─content
│      abstract.tex     # 摘要
│      appendices.tex   # 附录
│      chapter1.tex     # 第一章
│      chapter2.tex     # 第二章
│      conclusion.tex   # 结论
│      epilogue.tex     # 结语
│      introduction.tex     # 引言
│      
├─cover_imgs
│      badge.png     # 封面校徽图片
│      name.png      # 封面校名图片
│      
├─imgs
│      蛋炒饭.jpeg    # 演示图片
│      
└─out
       main.pdf      # 输出的PDF文件
```
## 下载模板
本模板压缩包可在[GitHub](https://github.com/ToryDeng/ZUEL-Thesis)和[Gitee](https://gitee.com/ToryDeng/ZUEL-Thesis)上下载。您可根据自己的网络情况选择下载地址。

下载完压缩包后，推荐上传至[Overleaf平台](https://www.overleaf.com/project/)，设置使用 **XeLaTeX** 编译器开始写作。


## 使用模板
`out/main.pdf`文件是已经编译好的模板。您可以在使用前先查看一下模板，确认是否符合您的需求。
### 填写基本信息
在`main.tex`中，填写您的论文题目、姓名、学号、学院、专业、班级等基本信息。虽然模板会根据信息自动更新封面页、作者声明和标题页，仍然请您再次检查以确认无误。本模板使用系统的当前时间作为论文的完成时间，您也可以手动更改。
### 填写论文主要内容
#### 文字内容
在`content`文件夹中有引言、摘要、正文、结论、后记等示例文件，将示例中的文字替换为您的论文内容。
#### 图表内容
* **图片**：在`content/chapter1.tex`文件中有图片的使用演示，根据演示创建您自己的图片并在正文中引用它们。图片最好放在`imgs`文件夹中。
* **表格**：在`content/chapter2.tex`文件中有表格的使用演示，根据演示创建您自己的表格并在正文中引用它们。表格创建推荐使用Excel插件Excel2LaTeX([安装和使用教程](https://blog.csdn.net/qq_16763983/article/details/122912373))或者网站[Tables Generator](https://www.tablesgenerator.com/)，可根据表格生成相应的LaTeX代码。

注意：示例pdf文件中的表格标题到表格的间距略大，但作者实际使用中创建更为复杂的表格没有问题。
#### 公式
LaTeX的数学公式编辑是其一大特色。由于内容较多，请您自行学习并使用（很容易学会）。在`content\chapter2.tex`中给出了一个多行公式以及引用公式的示例。

##### 推荐网站：
* [在线公式编辑器](https://latexlive.com/)
* [语法手册](http://www.uinio.com/Math/LaTex/)
#### 脚注
答辩老师要求脚注不带圈。注意`content/chapter2.tex`中对脚注为参考文献这一情况的处理。
#### 参考文献
在`thesis.bib`中填写您的参考文献（BibTex格式），模板会按照中英文分开显示，并根据作者、年份排序。
* **中国知网**：截止至2022.03.28，知网目前无法直接导出BibTex格式文件，一个替代方法是使用[百度学术](https://xueshu.baidu.com/)。
* **谷歌学术**：在谷歌学术中可以将搜索到的参考文献保存到`我的图书馆`，在`我的图书馆`中可以一次性以BibTex格式导出所有保存的文献。
#### 附录
本模板自定义了`\appdx`命令以生成附录标题。见`content\appendices.tex`。
#### 代码
在`content`文件夹中的`appendices.tex`有代码的使用演示，将代码文件放入`code`文件夹，并根据演示在附录中显示代码。
#### 超链接
两种超链接的演示见`content\chapter1.tex`。
#### 目录
您无需手动生成目录，只需要在`main.tex`中调节行距因子以获得最佳目录显示。在目录中点击章节名可直接跳转到对应的章节。
### 编译
对于Overleaf，只需点击页面中的`compile`按钮。注意：如果在本地第一次编译，可能会出现如下警告导致无法显示参考文献:
```
LaTeX Warning: There were undefined references.

Package biblatex Warning: Please (re)run Biber on the file:
(biblatex)       main
(biblatex)       and rerun LaTeX afterwards.
```
此时需要执行命令
```
biber main
```
然后再编译，即可正常显示参考文献。

## 反馈与贡献
由于作者水平、时间、精力都有限，本模板一定还有众多不完善的地方，虽然作者有心修正，奈何分身乏术，所以您有任何问题，都可以在[GitHub讨论区](https://github.com/ToryDeng/ZUEL-Thesis/discussions)里提出，但作者不保证及时回答。也欢迎新的贡献者能参与维护该项目！~~（以便作者划水）~~

## 软件许可证
* 中南财经政法大学校徽校名图片（`cover_imgs/badge.png`、`cover_imgs/name.png` ）的版权归[中南财经政法大学](http://www.zuel.edu.cn/)所有。
* `biblatex-gb7714-2015` 样式文件使用 [LPPL](https://www.latex-project.org/lppl.txt) 授权。
* 其它部分使用 [GNU General Public License v3.0](LICENSE) 授权。

