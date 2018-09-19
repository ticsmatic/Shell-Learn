#!/bin/bash

# Shell 基本运算符

# 表达式和运算符之间要有空格
# 在 MAC 中 shell 的 expr 语法是：$((表达式))，表达式中的 "*" 不需要转义符号 "\" 。

# Shell 和其他编程语言一样，支持多种运算符，包括：
# 算数运算符
# 关系运算符
# 布尔运算符
# 字符串运算符
# 文件测试运算符

# 表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2
# var=`expr 2 + 2`
var=`expr $((2 + 2))`
echo "2+2求和的结果为：${var}"


# 算数运算符
# 运算符	说明	举例
# +	加法	`expr $a + $b` 结果为 30。
# -	减法	`expr $a - $b` 结果为 -10。
# *	乘法	`expr $a \* $b` 结果为  200。
# /	除法	`expr $b / $a` 结果为 2。
# %	取余	`expr $b % $a` 结果为 0。
# =	赋值	a=$b 将把变量 b 的值赋给 a。
# ==	相等。用于比较两个数字，相同则返回 true。	[ $a == $b ] 返回 false。
# !=	不相等。用于比较两个数字，不相同则返回 true。	[ $a != $b ] 返回 true。

a=10
b=5
c=`expr $((${a} + ${b}))`
c=`expr $((${a} - ${b}))`
c=`expr $(($a * $b))` # 非mac下是c=`expr $(($a \* $b))
c=`expr $(($a / $b))`
c=`expr $(($a % $b))`
echo $c

echo "判断${a}和${b}两个值是否相等：$[ $a == $b ]"

if [ $a == $b ]; then
   echo "a 等于 b"
fi
if [ $a != $b ]; then
   echo "a 不等于 b"
fi


## 关系运算符
# 关系运算符只支持数字，不支持字符串，除非字符串的值是数字。
# 运算符	说明	举例
# -eq	检测两个数是否相等，相等返回 true。	[ $a -eq $b ] 返回 false。					(equal)
# -ne	检测两个数是否不相等，不相等返回 true。	[ $a -ne $b ] 返回 true。				(not equal)
# -gt	检测左边的数是否大于右边的，如果是，则返回 true。	[ $a -gt $b ] 返回 false。		(greeter than)
# -lt	检测左边的数是否小于右边的，如果是，则返回 true。	[ $a -lt $b ] 返回 true。		(less than)
# -ge	检测左边的数是否大于等于右边的，如果是，则返回 true。	[ $a -ge $b ] 返回 false。	(greeter than or equal)
# -le	检测左边的数是否小于等于右边的，如果是，则返回 true。	[ $a -le $b ] 返回 true。	(less than or equal)
if [ $a -eq $b ]; then
	echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi


# 布尔运算符
if [[ $a != $b ]]; then
	#statements
	echo "布尔运算$a 不等于$b"
else
	echo "相等"
fi

if [[ $a -gt $b ]]; then
	echo "$a gt $b"
elif [[ $a -eq $b ]]; then
	echo "$a -eq $b"
else
	echo "$a -lt $b"
fi


# 逻辑运算符 && || 
if [[ $a -lt 100 && $b -gt 1 ]]; then
	echo  "逻辑运算符-判断条件满足"
else
	echo  "逻辑运算符-判断条件不满足"
fi


# 字符串运算符
# 运算符	说明	举例
# =	检测两个字符串是否相等，相等返回 true。	[ $a = $b ] 返回 false。
# !=	检测两个字符串是否相等，不相等返回 true。	[ $a != $b ] 返回 true。
# -z	检测字符串长度是否为0，为0返回 true。	[ -z $a ] 返回 false。
# -n	检测字符串长度是否为0，不为0返回 true。	[ -n "$a" ] 返回 true。
# str	检测字符串是否为空，不为空返回 true。	[ $a ] 返回 true。

string_1="hello"
string_2="cloud"
if [ $string_1 = $string_2 ]; then
	echo "字符串相等"
else
	echo "字符串不相等"
fi

if [[ -n $string_1 ]]; then
	#statements
	echo "字符串${string_1}长度不为0且长度为${#string_1}"
fi


# 文件测试运算符
# 检测 Unix 文件的各种属性。
操作符	说明	举例
# -b file	检测文件是否是块设备文件，如果是，则返回 true。	[ -b $file ] 返回 false。
# -c file	检测文件是否是字符设备文件，如果是，则返回 true。	[ -c $file ] 返回 false。
# -d file	检测文件是否是目录，如果是，则返回 true。	[ -d $file ] 返回 false。
# -f file	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。	[ -f $file ] 返回 true。
# -g file	检测文件是否设置了 SGID 位，如果是，则返回 true。	[ -g $file ] 返回 false。
# -k file	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。	[ -k $file ] 返回 false。
# -p file	检测文件是否是有名管道，如果是，则返回 true。	[ -p $file ] 返回 false。
# -u file	检测文件是否设置了 SUID 位，如果是，则返回 true。	[ -u $file ] 返回 false。
# -r file	检测文件是否可读，如果是，则返回 true。	[ -r $file ] 返回 true。
# -w file	检测文件是否可写，如果是，则返回 true。	[ -w $file ] 返回 true。
# -x file	检测文件是否可执行，如果是，则返回 true。	[ -x $file ] 返回 true。
# -s file	检测文件是否为空（文件大小是否大于0），不为空返回 true。	[ -s $file ] 返回 true。
# -e file	检测文件（包括目录）是否存在，如果是，则返回 true。	[ -e $file ] 返回 true。
f_path="/Users/${USER}/Downloads/Shell-Learn/learn-shell-5-operator.sh"
if [[ -e $f_path ]]; then
	#statements
	echo "$f_path 这个路径下文件存在"
fi

if [[ -r $f_path ]]; then
	echo "${f_path} 文件可读"
fi

w1=$(expr 1 + 2)
echo "求和的结果为：$w1"