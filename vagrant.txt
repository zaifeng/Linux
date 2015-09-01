用以下命令进行打包：
1.vagrant package:该命令直接将当前的box进行打包,打出来的包默认名字为package.box
2.vagrant package --base Name:该命令中Name为virtual box中的镜像的名字，或者是UUID。打出来的包默认为package.box;
3.vagrant package --base Name --output Name2:表示将virtual box中的镜像的名字或者UUID打包，并且打包出来的名字为Name2；

如果你希望停止vagrant，可以使用vagrant halt；
这样vagrant就被关闭了。
如果你希望去掉某个box，则可以使用vagrant box remove boxName；
如果希望完全删除某个已经初始化的vagrant，则使用vagrant destroy。
