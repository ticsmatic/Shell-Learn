#!/bin/bash

begin_time=$(date +%s)

echo "a"

# 转义
echo "\"dad\""

# 读取参数
read name sec
echo "input name is $name"

# 读取执行脚本时传的参数
echo $1

echo -e "OK! \n" # -e 开启转义， \n 换行 、\c 不换行
echo "It is a test"

# 把结果输出到文件， > 是覆盖写入、 >> 是追加
echo "error: wxq" >> t.log

echo $(date)
echo `date`

end_time=$(date +%s)
cost=$((end_time - begin_time))
echo "执行耗时：$cost 秒"