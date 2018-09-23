#!/bin/bash

printf "Shell中的 test 命令用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试。\n"


# 用于数值中
printf "这个test命令功能上和shell的关系运算符没什么差别 \n"

printf "\-eq \-gt \-lt \-ge \-le \-ne等\n"

printf "比如：\n"

num1=14
num2=20

if test $num1 -lt $num2; then
	#statements
	echo "${num1}小于${num2}"
elif test $num1 -gt $num2; then
	echo "${num1}大于${num2}"
else
	echo "${num1}等于${num2}"
fi



# 用于字符串中
printf "把test命令用于字符串测试\n"

printf "在字符串中使用test命令，大致包括以下几个参数样式\n"

printf "= != \-z \-n \n"

printf "比如：\n"

string1="wxq"
string2="cloud"
if test $string1 = $string2 ; then
	echo "${string1} equal ${string2}"
else
	echo "${string1} not equal ${string2}"
fi



# 用于文件中
printf "test命令用于文件判断中\n"

echo "
参数	说明
-e 文件名	如果文件存在则为真
-r 文件名	如果文件存在且可读则为真
-w 文件名	如果文件存在且可写则为真
-x 文件名	如果文件存在且可执行则为真
-s 文件名	如果文件存在且至少有一个字符则为真
-d 文件名	如果文件存在且为目录则为真
-f 文件名	如果文件存在且为普通文件则为真
-c 文件名	如果文件存在且为字符型特殊文件则为真
-b 文件名	如果文件存在且为块特殊文件则为真
"

path=/Users/$USER/Downloads/
cd $path

if test -e ./叫兽亲启.rar; then
	#statements
	echo "${path}下，存在叫兽亲启.rar这个文件"
else
	echo "${path}下，不存在叫兽亲启.rar这个文件"
fi


# 另外，Shell还提供了与( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，其优先级为："!"最高，"-a"次之，"-o"最低。例如：
cd /bin
if test -e ./notFile -o -e ./bash
then
    echo '至少有一个文件存在!'
else
    echo '两个文件都不存在'
fi