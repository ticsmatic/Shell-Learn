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
