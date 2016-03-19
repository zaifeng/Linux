ssh 是一个专为远程登录会话和其他网络服务提供安全性的协议。默认状态下ssh链接是需要密码认证的，可以通过添加系统认证（即公钥-私钥）的修改，修改后系统间切换可以避免密码输入和ssh认证。以下将创建过程简单介绍下。
 
一、用ssh-keygen创建公钥
haifeng@haifeng-EX38-DS4:/$ ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/haifeng/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/haifeng/.ssh/id_rsa.
Your public key has been saved in /home/haifeng/.ssh/id_rsa.pub.
The key fingerprint is:
7b:75:98:eb:fd:13:ce:0f:c4:cf:2c:65:cc:73:70:53 haifeng@haifeng-EX38-DS4
The key's randomart image is:
+--[ RSA 2048]----+
|                E|
|                .|
|              ...|
|             + =.|
|        S   + +.*|
|         . . + Bo|
|        . . . = =|
|         . . . * |
|            . ..=|
+-----------------+
 
##输入后，会提示创建.ssh/id_rsa、id_rsa.pub的文件，其中第一个为密钥，第二个为公钥。过程中会要求输入密码，为了ssh访问过程无须密码，可以直接回车 。
2.查看钥匙。
[root@localhost .ssh]# ls ~/.ssh/
id_rsa  id_rsa.pub  known_hosts

###可以发现 ssh目录下的两枚钥匙。
3.将公钥复制到被管理机器上面
[root@localhost .ssh]# scp id_rsa.pub root@192.168.36.194:~/.ssh/authorized_keys
root@192.168.36.194's password: 
id_rsa.pub                                    100%  408     0.4KB/s   00:00
4.访问
# ssh 192.168.36.194
The authenticity of host '<Game2> (<192.168.36.194>)' can't be established. 
RSA key fingerprint is 34:b9:92:06:53:e6:91:4d:47:92:73:57:78:6a:5d:09. 
Are you sure you want to continue connecting (yes/no)?yes 
Warning: Permanently added '<Game2> (<192.168.36.194>' (RSA) to the list of known hosts. 

这是因为首次访问后，ssh会在.ssh/known_hosts中保存各个认证过的主机信息：
192.168.36.194 ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAppStzIRxeFn0e737z7KO1tdm6CJUoLapaaoBDZqHy0Z11cUAmpg02dbrqwU7TBY9lDFwWQcry+W8X8qk1CoPdzu8YcMCpw5425mai0/RxkB/RPZ1putL2DQrRBMRTU1m5meLOYRXYlnU5E+YElCgH+ZJ8EXiurOzDvw6vi7pASi9wMQuJosFyNmv5E9/8ULgaKg3LtvP+0O1wPxrHOBDwVq2u9Oi7T2pX8deBEnOI4uG4CGXn/p0ml+uuS4DO3Up2VjqoRtqtuzWExnTyAGS/wQNnN3mera1ERya3FomEVHJRV5K2zJRkgSF8WfETXzQ2rAliOsW/YLTGF8vVvjo5w==
5.再次访问，ssh登录发现可以不用密码登录。
[root@localhost .ssh]# ssh 192.168.36.194
Last login: Fri Apr 22 00:56:45 2011 from 192.168.18.44
[root@Game2 ~]# 



用ssh-copy-id将公钥复制到远程机器中
jsmith@local-host$ ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host
jsmith@remote-host's password:
Now try logging into the machine, with "ssh 'remote-host'", and check in:
.ssh/authorized_keys
to make sure we haven't added extra keys that you weren't expecting.
注意: ssh-copy-id 将key写到远程机器的 ~/ .ssh/authorized_key.文件中
