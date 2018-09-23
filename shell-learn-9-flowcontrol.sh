#!/bin/bash

echo "
流程控制包括像判断(if elif, switch case)
循环(for while until)
"

echo"
if condition1
then
    command1
elif condition2 
then 
    command2
else
    commandN
fi
"
if [[ 1 > 2 ]]; then
	echo "a"
else
	echo "b"
fi

if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi

if [[ 3 > 2 ]]; then echo "aa"; fi


num1=$[ 2 * 3 ]
num2=$[ 3 * 4 ]

if test $num1 -lt $num2; then
	echo "${num1} less than ${num2}"
fi



# 循环
# for
echo "
for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done
"
# for var in item1 item2 ... itemN; do command1; command2… done;

words="a b c d"
words2=(a b  c d)
words3=("m" 10 'x' wxq 👌)
for i in ${words3[*]}; do
	#statements
	echo $i
done


# while
echo "
while condition
do
    command
done"

wsum=0 
i=1
while [ $i -le 10 ]; do
	wsum=$[ $wsum + $i ]
	i=$[ $i + 1 ]
done
echo $wsum


# until
echo "
until 循环执行一系列命令直至条件为 true 时停止。

until 循环与 while 循环在处理方式上刚好相反。

一般 while 循环优于 until 循环，但在某些时候—也只是极少数情况下，until 循环更加有用。

格式:
until condition
do
    command
done
"

a=0
until [[ ! $a -lt 10 ]]; do
	echo $a
	a=$[$a + 1]
done


# case
echo "
case 值 in
模式1)
    command1
    command2
    ...
    commandN
    ;;
模式2）
    command1
    command2
    ...
    commandN
    ;;
esac
"

echo "输入一个1到4的数"
echo "你输入的数字为:"
read num
case $num in
	1 ) echo "你选择了 1"
	;;
	2 ) echo "你选择了 2"
	;;
	3 ) echo "你选择了 3"
	;;
	4 ) echo "你选择了 4"
	;;
	*)  echo '你没有输入 1 到 4 之间的数字'
	;;
esac


while :
do
    echo -n "输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的!"
            break
            echo "游戏结束"
        ;;
    esac
done

for i in words; do
	#statements
done
