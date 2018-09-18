#!/bin/bash

# Shell 数组

# Bash Shell 只支持一维数组
# 元素用"空格"符号分割开
# 使用@ 或 * 可以获取数组中的所有元素
my_array[0]=A
shell_array=(1 2 3)
echo ${shell_array[@]}

# 遍历数组元素
for i in ${shell_array[*]}; do
	echo ${i}
done

# 取某个元素
my_array2=('wxq' 1 3 D "jack ma")
echo ${my_array2[4]}




:<<EOF
for file in $(ls /etc) 
do
	echo ${file}
done

# 累加
awk 'BEGIN { for(i=1; i<=100; i++) sum+=i; print sum}'

# 累加
sum=0
for (( i = 0; i < 10; i++ )); do
	#statements
	# sum+=${i}
	sum=$((sum+i))
done
echo ${sum}
EOF