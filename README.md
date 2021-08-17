# vim-conf
vim 配置文件

### install
1. install vim plug
 ```
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 ```
2. install plugins
vim ~/.vimrc
:PlugInstall  


### 常用操作：

```

* 选中单词 vw
* 选中单词变成大写 vw+gU
* 首字母大写 V+G
* 选中多行做相同操作
 :normal 0+vw+gU
shift+v 选中一行， 上下选择多行， 然后: 就会normal ， 然后输入操作


* 删除[] 中的单词
vi + “  快速选择双引号里面的内容
ci +” 快速删除双引号里面的年内容并且进入编辑模式（change inner）
ci { 删除括号里面的内容


* 开始替换
R 大写R 会不断替换后面的字符

* S  删除并且进入插入模式

Cw 删除 一个单词然后进入插入模式
ct+ 字符  change to 字符


* 翻页
ctrl u,  ctrl f   上下翻页，  zz 屏幕中央


* 上次一 在normal 模式输入的内容:
↑

* 给单词加上双引号you surrounded  inner w
ys iw “

* 去掉单词引号
ds”


* 缩进 
>

* 跳到多少行
100 G  跳到100行


替换
:%s/before/after/g

```

