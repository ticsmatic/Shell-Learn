#!/bin/bash
echo "Hello World !"


# Shell中的变量

# 定义变量(中间不应该有空格)
my_name="wxq"
# 使用变量，推荐给所有变量加上花括号，这是个好的编程习惯。
echo $my_name
echo ${my_name}

# readonly 只读变量 
my_id="1111111"
readonly my_id
# my_id="2222" # my_id: readonly variable

# unset 删除变量 
my_dog="nick dog"
unset my_dog
echo $my_dog

# 变量类型
# 1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
# 2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
# 3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行



# Shell 字符串

# 分单引号、双引号
str='this is a string'
# 单引号字符串的限制：

# 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
# 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。

# 双引号
your_name="大石头"
str="hello, where are you \"${your_name}\"?"
echo $str
# 双引号里可以有变量
# 双引号里可以出现转义字符

# 拼接字符串
your_name="labda"
greeting="hello ${your_name}, i'm you"
echo $greeting "goodbye"

# 获取字符串长度 ${#string} 
name="Mike Jackson"
echo ${#name}

# 提取子字符串 ${name:1:4}
name="runoob is a great site"
echo ${name:1:4} # 输出 unoo

