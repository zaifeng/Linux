## Declare命令 ##
### 命令格式: ###

    declare [+/-] [选项] 变量名

其中：

    -： 给变量设定类型属性
    +：取消变量的类型属性

### 参数说明 ###

    -i：将变量声明为整型
    -a：将变量声明为数组类型
    -x：将变量声明为环境变量
    -r：将变量声明为只读变量
    -p：显示指定变量被声明的类型

### 命令示例 ###

**-i**示例： 声明整型变量，由于shell默认变量的类型是字符串类型，如果需要进行数值的运算，则需要将变量转化为整型

    #!/bin/bash
    
    a=1
    b=2
    
    sum=$a+$b
    echo "默认字符串类型相加结果："
    echo $sum
    
    declare -i sum=$a+$b
    echo "声明为整型相加结果："
    echo $sum

输出结果：

    默认字符串类型相加结果：
    1+2
    声明为整型相加结果：
    3

**-a**示例：声明数组

    !/bin/bash
    
     声明数组
    declare -a arr #可以不写，shell可以通过检测中括号识别数组
    arr[0]="a"
    arr[1]="b"
    arr[2]="c"

 默认打印数组第一个元素

    echo ${arr}

打印第二个元素 

    echo ${arr[1]}

打印所有的元素

    echo ${arr[*]}

输出结果：

    a
    b
    a b c

**-x**示例：声明全局变量

> -x的功能和export 变量名功能相同，export只是declare -x 变量名的快捷方式

    !/bin/bash
    
    name="test"
    declare -x name # 等同效果 export name
    
    echo $name

输出结果：

    test

**-r**示例：声明只读变量

> -r会将变量变为只读，变为只读后，将不能进行修改，删除，也不能取消只读，只能重启才能取消。

    #!/bin/bash
    
    name="test"
    declare -r name
    echo $name
    
    name="abc"
    echo $name

输出结果：

    test
    test.sh: line 7: name: readonly variable
    test

**-p**示例：显示指定变量被声明的类型
    
    #!/bin/bash
    
    declare -i a
    declare -p a
    
    declare -a b
    declare -p b
    
    declare -x c
    declare -p c
    
    declare -r d
    declare -p d

输出结果：

    declare -i a=""
    declare -a b='()'
    declare -x c=""
    declare -r d=""

## 数值运算的方法 ##
### expr方法 ###
示例：

    #!/bin/bash
    a=1
    b=2
    sum=$(expr $a + $b) # 加号两边一定要留空格，不然会当成字符串连接起来  
    echo $sum

输出结果：

    3

### $(()) 或 $[]方法 ###

    #!/bin/bash
    
    a=1
    b=2
    sum=$(($a+$b)) # 加号两边加不加空格，无所谓
    echo $sum
    
    result=$[$a-$b]
    echo $result

运行结果：

    3
    -1
