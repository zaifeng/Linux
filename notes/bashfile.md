### ``.bash_profile``和``.bashrc``的区别 (如何设置生效)

/etc/profile:此文件为系统的每个用户设置环境信息,当用户第一次登录时,该文件被执行.

并从/etc/profile.d目录的配置文件中搜集shell的设置.

```/etc/bashrc```:为每一个运行bash shell的用户执行此文件.当bash shell被打开时,该文件被读取.

``~/.bash_profile``:每个用户都可使用该文件输入专用于自己使用的shell信息,当用户登录时,该

文件仅仅执行一次!默认情况下,他设置一些环境变量,执行用户的.bashrc文件.

``~/.bashrc``:该文件包含专用于你的bash shell的bash信息,当登录时以及每次打开新的shell时,该
该文件被读取.

``~/.bash_logout``:当每次退出系统(退出bash shell)时,执行该文件. 

另外,/etc/profile中设定的变量(全局)的可以作用于任何用户,而~/.bashrc等中设定的变量(局部)只能继承/etc/profile中的变量,他们是"父子"关系.

~/.bash_profile 是交互式、login 方式进入 bash 运行的
~/.bashrc 是交互式 non-login 方式进入 bash 运行的
通常二者设置大致相同，所以通常前者会调用后者。

设置生效：可以重启生效，也可以使用命令：source 
```
alias php=/var/eyouim/pub/php/bin/php
source /etc/profile
```

2.3. 用户环境配置

为使Bash更好地为我们服务，我们需定制bash shell环境。

2.3.1 ```.bash_profile```、```.bashrc```、和``.bash_logout``

上面这三个文件是bash shell的用户环境配置文件，位于用户的主目录下。

其中.bash_profile是最重要的一个配置文件，它在用户每次登录系统时被读取，里面的所有 命令都会被bash执行。

`.profile`(由Bourne Shell和Korn Shell使用)和`.login`(由C Shell使用)两个文件是`.bash_profile`的同义词，目的是为了兼容其它Shell。在Debian中使用`.profile`文件代替`.bash_profile`文件。

`.bashrc`文件会在bash shell调用另一个bash shell时读取，也就是在shell中再键入bash命令启动一个新shell时就会去读该文件。这样可有效分离登录和子shell所需的环境。但一般 来说都会在`.bash_profile`里调用`.bashrc`脚本以便统一配置用户环境。

.bash_logout在退出shell时被读取。所以我们可把一些清理工作的命令放到这文件中。

在 /etc目录的`bash.bashrc`和profile是系统级（全局）的配置文件，当在用户主目录下找不到`.bash_profile` 和`.bashrc`时，就会读取这两个文件。

`.bash_history`是bash shell的历史记录文件，里面记录了你在bash shell中输入的所有命令。

可通过HISSIZE环境变量设置在历史记录文件里保存记录的条数。alias l = 'ls -l'是设置别名的语句，把它放在这些配置文档中就可使我们能用简单的'l'命令，代替'ls -l'命令。


当我们修改了这些配置件后，可用``source .bash_profile``命令使它修改内容马上生效。

2.3.2. 选项

`bash shell`中的选项可控制shell的行为和功能，我们可以通过shopt命令来设置。使用set命令也可以，但它已被shopt替代，但为了向下兼 容，set命令还是可以使用的。使用不带参数的shopt命令可以列出当前shell中只能由shopt设置的选项，用shopt -o可列出可由set命令设置的选项。

下面是一些可由set命令基本的选项，默认是关闭的。

emacs 进入emacs编辑模式
vi 进入vi编辑模式
- [x] ignoreeof 不允许单独使用Ctrl_D退出的用法，要使用exit。与IGNOREEOF=10等价
- [x] noclobber 不允许重定向覆盖已存在文件
- [x] noglob 不允许扩展文件名通配符
- [x] nounset 使用未定义的变量时给出错误
下面是一些只能由shopt命令设置的选项。

cdspell 自动改正cd命令参数中的小错误
hostcomplete 以@开头时，按tab键可进行主机名的自动完成
dotgblob 以点开始的文件名被包含在路径名扩展中
mailwarn 显示邮件警告信息
shopt命令的选项如下：


- -p 显示可设置选项及当前取值
- -s 设置每一选项为on
- -u 设置每一选项为off
- -q 不输出信息
- -o 

```
command &>/dev/null
This syntax redirects both standard output and error output messages to /dev/null where it is ignored by the shell.
```