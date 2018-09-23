#!/bin/bash

# printf 传递个参数而已，有点objc的NSLog的感觉

# printf 命令模仿 C 程序库（library）里的 printf() 程序。
# printf 由 POSIX 标准所定义，因此使用 printf 的脚本比使用 echo 移植性好。
# printf 使用引用文本或空格分隔的参数，外面可以在 printf 中使用格式化字符串，还可以制定字符串的宽度、左右对齐方式等。默认 printf 不会像 echo 自动添加换行符，我们可以手动添加 \n。

# format-string: 为格式控制字符串
# arguments: 为参数列表。
# printf  format-string  [arguments...]

printf "wxq_name_11111\n"

# %-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐）
# %-4.2f 指格式化为小数，其中.2指保留2位小数
printf "%-10s %-10s %-4s\n" 姓名 性别 体重kg
printf "%-2s %-10s %-4s\n" 欧阳娜拉 女 50.11
printf "%-10s %-10s %-4.2f\n" 欧阳疯 男 80.8888

printf "%s %d\n" dasd 1
printf "%s\n" abc def
printf "%s %s %s\n" a b c d e f g h i j

printf "%s %s \t %d \n" wxq 很👍 10000000000


printf "%d %s %f" 10 wxq 10.0000000
