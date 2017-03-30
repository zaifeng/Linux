Redis批量删除key命令
```
redis-cli -h xx.xx.xx.x -a 123qaz keys user*|xargs redis-cli -h xx.xx.xx.x -a 123qaz del
```

其中：
- -h 用于连接指定ip 
- -a 用于指定Redis密码
- 最后可以添加一个Redis命令

配合xargs可以 删除某些key
