###httperf用法

- httperf -\-server 192.168.0.1 \-\-port 80 -\-uri /index.html -\-rate 300 -\-num-conn 30000 -\-num-call 1 -\-timeout 5
- rate是指每秒多少个请求数，num-conn指共发多少个请求 ，num-call每次连接发送的请求数通常为1
- -\-client=I/N 指定当前客户端I，是N个客户端中的第几个。用于多个客户端发请求，希望确保每个客户端发的请求不是完全一致。一般不用指定
- -\-server 请求的server名
- -\-port 请求的端口号，默认为80，如果指定了--ssl为443
- -\-uri 请求路径
- -\-rate 指定一个固定速率来创建连接和会话
- -\-num-conns 创建连接数
- -\-num-call 每个连接发送多少请求
- -\-send-buffer 指定发送http请求的最大buffer，默认为4K，一般不用指定
- -\-recv-buffer 指定接受http请求的最大buffer，默认为16K，一般不用指定


#####结果分析

- Maximum connect burst length: 6
> 最大并发连接数：6

- Total: connections 50 requests 5050 replies 5000 test-duration 9.193 s
> 一共50个连接，5050个请求，应答了5000个，测试耗时：9.193秒

- Connection rate: 5.4 conn/s (183.9 ms/conn, <=50 concurrent connections)
> 连接速率：5.4个每秒（每个连接耗时183.9 ms, 小于指定的50个并发连接）

- Connection time [ms]: min 8364.0 avg 8757.5 max 9014.7 median 8899.5 stddev 231.9
> 连接时间（微秒）：最小8364.0，平均8757.5，最大9014.7，中位数 8899.5， 标准偏差231.9

- Connection time [ms]: connect 89.9
> 连接时间（微秒）：连接 89.9

- Connection length [replies/conn]: 100.000
>连接长度（应答/连接）：100.000

- Request rate: 549.3 req/s (1.8 ms/req)
> 请求速率：549.5 (pqs)，每个请求1.8 ms

- Request size [B]: 72.0
> 请求长度（字节）：72.0

- Reply rate [replies/s]: min 514.8 avg 514.8 max 514.8 stddev 0.0 (1 samples)
> 响应速率（响应个数/秒）：最小514.8， 平均514.8，最大514.8，标准偏差 0.0（一个例样）

- Reply time [ms]: response 25.5 transfer 61.0
> 响应时间（微妙）：响应25.5，传输61.0

- Reply size [B]: header 147.0 content 53263.0 footer 2.0 (total 53412.0)
> 响应包长度（字节）：响应头147.0 内容：53263.0 响应末端 2.0（总共53412.0）

- Reply status: 1xx=0 2xx=5000 3xx=0 4xx=0 5xx=0
> 响应包状态： 2xx 有5000个，其他没有

- CPU time [s]: user 9.00 system 0.20 (user 97.9% system 2.1% total 100.0%)
> CPU时间（秒）: 用户9.00 系统0.2（用户占了97.9% 系统占2.1% 总共100%）

- Net I/O: 28407.8 KB/s (232.7*10^6 bps)
> 网络I/O：28407.8 K每秒

- Errors: total 50 client-timo 0 socket-timo 0 connrefused 0 connreset 50
> 错误：总数50 客户端超时0 套接字超时0 连接拒绝0 连接重置50

- Errors: fd-unavail 0 addrunavail 0 ftab-full 0 other 0
> 错误：fd不正确0 地址不正确0 ftab占满0 其他0