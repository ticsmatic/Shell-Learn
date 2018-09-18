#!/bin/bash

# Shell 数组

# 遍历某个路径下的文件
# for file in $(ls /etc); do
# 	echo $file
# done

# 定义一个数组
# 数组元素用"空格"符号分割开
my_array=(1 2 3)
for tmp in $my_array; do
	echo $tmp
done
 
# 读取数组
echo ${my_array[0]} # 越界不会报错，会返回空值

# 使用 @ 符号可以获取数组中的所有元素
echo ${my_array[@]}

# 获取数组的长度
# 取得数组元素的个数
echo ${#my_array[@]}

# 获取单个元素长度
echo ${#my_array[0]} # 1



# Shell 注释

#--------------------------------------------
# 这是一个注释
# author：菜鸟教程
# site：www.runoob.com
# slogan：学的不仅是技术，更是梦想！
#--------------------------------------------
##### 用户配置区 开始 #####
#
#
# 这里可以添加脚本描述信息
# 
#
##### 用户配置区 结束  #####



# 多行注释
:<<EOF
注释内容...
注释内容...
注释内容...
EOF