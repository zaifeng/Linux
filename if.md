### 判断格式 ###
1） test 参数 文件

例： test -e /root/install.log

2) [ 参数 文件 ]  -- 推荐使用

例： [ -e /root/install.log ]

注意：中括号后面和前面需要有空格

### 判断文件类型参数 ###
1）-d 文件：判断该文件是否存在，并且是否为目录文件

2）-e 文件：判断文件是否存在

3）-f 文件：判断文件是否存在，并且是否为普通文件

4）-s 文件：判断文件是否存在，并且是否为非空

5）其他文件类型判断：

-b 块设备文件；-c 字符设备文件；-L 符号链接文件； -p 管道文件；-S 套接字文件

示例：


    [root@localhost ~]# [ -d /root ] && echo yes || echo no
    yes
    [root@localhost ~]# [ -e /root/install.log ] && echo yes || echo no
    yes
    [root@localhost ~]# [ -f /root/install.log ] && echo yes || echo no
    yes
    [root@localhost ~]# [ -s /root/install.log ] && echo yes || echo no
    yes

 

### 判断文件权限参数 ###

1）-r 文件：判断该文件是否存在，并且是否有读权限

2）-w文件：判断该文件是否存在，并且是否有写权限

3）-x文件：判断该文件是否存在，并且是否有执行权限

4）其他文件权限判断：

-u SUID权限；-g SGID权限； -k SBit权限

示例：

    [root@localhost ~]# [ -r /root/install.log ] && echo yes || echo no
    yes
    [root@localhost ~]# [ -w /root/install.log ] && echo yes || echo no
    yes
    [root@localhost ~]# [ -x /root/install.log ] && echo yes || echo no
    no
 

### 两个文件比较 ###
1）文件1 -nt 文件2：判断文件1的修改时间是否比文件2的新

2）文件1 -ot 文件2：判断文件1的修改是否是否比文件2的旧

3）文件1 -ef 文件2：判断文件1是否和文件2的lnode号一致，可以理解为两个文件是否为同一个文件。这个判断用于判断硬链接是很好的方法。

示例：

    [root@localhost ~]# [ /root/install.log -nt /root/install.log.syslog ] && echo yes || echo no
    yes
    [root@localhost ~]# [ /root/install.log -ot /root/install.log.syslog ] && echo yes || echo no
    no
    [root@localhost ~]# [ /root/install.log -ef /root/install.log.syslog ] && echo yes || echo no
    no
 

### 两个整数比较 ###

1）整数1 -eq 整数2：判断是否相等

2）整数1 -ne 整数2：判断是否不相等

3）整数1 -gt 整数2：判断是否大于

4）整数1 -lt 整数2：判断是否小于

5）整数1 -ge 整数2：判断是否大于等于

6）整数1 -le 整数2：判断是否小于等于

注：在shell里，所有的变量都是字符类型，但是加了整数比较参数，两边的变量就会被认为是整数类型。

示例：

    [root@localhost ~]# [ 1 -eq 1 ] && echo yes || echo no
    yes
    [root@localhost ~]# [ 1 -ne 1 ] && echo yes || echo no
    no
    [root@localhost ~]# [ 2 -gt 1 ] && echo yes || echo no
    yes
    [root@localhost ~]# [ 2 -lt 1 ] && echo yes || echo no
    no
    [root@localhost ~]# [ 1 -ge 1 ] && echo yes || echo no
    yes
    [root@localhost ~]# [ 1 -le 1 ] && echo yes || echo no
    yes


### 字符串判断 ###
1）-z 字符串：判断字符串是否为空

2）-n 字符串：判断字符串是否非空

3）字符串1 == 字符串2：判断两个字符串是否相等

4）字符串1 != 字符串2：判断两个字符串是否不相等

示例：
    
    [root@localhost ~]# str="abc"
    [root@localhost ~]# [ -z $str ] && echo yes || echo no
    no
    [root@localhost ~]# [ -n $str ] && echo yes || echo no
    yes
    [root@localhost ~]# str2="efg"
    [root@localhost ~]# [ "$str" == "$str2" ] && echo yes || echo no
    no
    [root@localhost ~]# [ "$str" != "$str2" ] && echo yes || echo no
    yes

### 多重条件判断 ###
1）判断1 -a 判断2：表示逻辑与，相当于and

2）判断1 -o 判断2：表示逻辑或，相当于or

3）！判断：表示逻辑非，相当于not

示例：

    [root@localhost ~]# [ 1 -eq 1 -a 1 -eq 2  ] && echo yes || echo no
    no
    [root@localhost ~]# [ 1 -eq 1 -o 1 -eq 2  ] && echo yes || echo no
    yes
    [root@localhost ~]# [ ! 1 -eq 2  ] && echo yes || echo no
    yes
 
