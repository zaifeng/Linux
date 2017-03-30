## 一、Source命令 ##

功能：在当前bash环境下读取并执行配置文件中的命令

#### 1. 命令格式 ####

    source 配置文件  或  . 配置文件

#### 2. 命令示例 ####

    [root@localhost ~]# source /etc/profile #让/etc/profile配置文件生效
    [root@localhost ~]# . /etc/profile #与上面的命令效果一样


## 二、全局环境变量配置文件 ##

全局环境变量配置文件会对所有用户生效。



- **/etc/profile**

作用：

    1) 定义USER变量、LOGNAME变量、MAIL变量、PATH变量、HOSTNAME变量、HISTSIZE变量
    2) 定义系统默认权限umask
    3) 调用/etc/profile.d/*.sh文件


- /etc/profile.d/*.sh


- **/etc/bashrc**

作用：

    1) 定义PS1(命令提示符)变量
    2) umask
    3) 定义PATH变量
    4) 调用/etc/profile.d/*.sh文件

## 三、用户环境变量配置文件 ##

每个用户下面都有以下两个环境变量配置文件，这些文件只会对其所属的用户生效。

1. ~/.bash_profile

作用：
    
    1) 调用~/.bashrc文件
    
    2) 在PATH变量后面加入":$HOME/bin"目录

2. ~/.bashrc

作用：
    
    1) 定义rm cp mv的alias别名
    
    2) 调用/etc/bashrc

## 四、环境变量文件执行流程 ##


1. 用户正常登录，会从/etc/profile一直加载到/etc/bashrc

2. 用户非正常登录[not login shell]，比如通过su切换用户，会从/etc/bashrc开始执行，最后到/etc/sysconfig/i18n

## 五、其他环境变量配置文件 ##

1. ~/.bash_logout

注销时生效的环境变量配置文件,一般情况下不使用，常见添加进去的命令包括clear(清屏),history -c(清空历史命令)。



1. ~/.bash_history
 
操作历史命令存放文件，只有当注销时，才会把用户登录过程中的操作命令写入到文件中，登录过程中执行的命令，不会立即写入文件，而是写在内存中。


1. /etc/issue

本地终端欢迎信息，通过远程登录是看不到的。



1. /etc/issue.net

远程登录欢迎信息

    注：是否显示此欢迎信息，是有ssh的配置文件（/etc/ssh/sshd_config）决定的，
	加入"Banner /etc/issue.net"行才能显示，加入后，需要重启ssh服务。



1. /etc/motb

> 登录后欢迎信息，不管是本地登录，还是远程登录，都可以显示此欢迎信息。


### 几个系统变量 ###
    UID
    PATH
    LANG
    LOGNAME
