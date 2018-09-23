#!/bin/bash

# 输入输出重定向

echo "
命令	说明
command > file	将输出重定向到 file。
command < file	将输入重定向到 file。
command >> file	将输出以追加的方式重定向到 file。
n > file	将文件描述符为 n 的文件重定向到 file。
n >> file	将文件描述符为 n 的文件以追加的方式重定向到 file。
n >& m	将输出文件 m 和 n 合并。
n <& m	将输入文件 m 和 n 合并。
<< tag	将开始标记 tag 和结束标记 tag 之间的内容作为输入。
需要注意的是文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。
"

echo "周杰伦地表最强战队" > jielun


# 输入重定向
echo "和输出重定向一样，Unix 命令也可以从文件获取输入，语法为：
command1 < file1
这样，本来需要从键盘获取输入的命令会转移到文件读取内容。"

# 需要统计 jielun 文件的行数,执行以下命令:
wc -l jielun
# 也可以将输入重定向到 users 文件：
wc -l < jielun
