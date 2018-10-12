#!/bin/bash
:<<C
shell中截取字符串的方法有很多中，
${expression}一共有9种使用方法。
${parameter:-word}
${parameter:=word}
${parameter:?word}
${parameter:+word} 
上面4种可以用来进行缺省值的替换。
${#parameter}
上面这种可以获得字符串的长度。 
${parameter%word} 最小限度从后面截取word
${parameter%%word} 最大限度从后面截取word
${parameter#word} 最小限度从前面截取word
${parameter##word} 最大限度从前面截取word
上面4个就是用来截取字符串的方法了。
有了着四种用法就不必使用cut命令来截取字符串了
第一种又可以分为四种情况，下面一一介绍。

1、使用 # 号操作符。用途是从左边开始删除第一次出现子字符串即其左边字符，保留右边字符。用法为#*substr,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${str#*//}
得到的结果为www.你的域名.com/cut-string.html，即删除从左边开始到第一个"//"及其左边所有字符2、使用 ## 号操作符。用途是从左边开始删除最后一次出现子字符串即其左边字符，保留右边字符。用法为##*substr,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${str##*/}
得到的结果为cut-string.html，即删除最后出现的"/"及其左边所有字符
3、使用 % 号操作符。用途是从右边开始删除第一次出现子字符串即其右边字符，保留左边字符。用法为%substr*,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${str%/*}
得到的结果为http://www.你的域名.com，即删除从右边开始到第一个"/"及其右边所有字符
4、使用 %% 号操作符。用途是从右边开始删除最后一次出现子字符串即其右边字符，保留左边字符。用法为%%substr*,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${str%%/*}
得到的结果为http://www.你的域名.com，即删除从右边开始到最后一个"/"及其右边所有字符

第二种也分为四种，分别介绍如下：
1、从左边第几个字符开始以及字符的个数，用法为:start:len,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${var:0:5}
其中的 0 表示左边第一个字符开始，5 表示字符的总个数。
结果是：http:
2、从左边第几个字符开始一直到结束，用法为:start,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${var:7}
其中的 7 表示左边第8个字符开始
结果是：www.你的域名.com/cut-string.html
3、从右边第几个字符开始以及字符的个数，用法:0-start:len,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${str:0-15:10}
其中的 0-6 表示右边算起第6个字符开始，10 表示字符的个数。
结果是：cut-string
3、从右边第几个字符开始一直到结束，用法:0-start,例如：
str='http://www.你的域名.com/cut-string.html'
echo ${str:0-4}
其中的 0-6 表示右边算起第6个字符开始，10 表示字符的个数。
结果是：html
注：（左边的第一个字符是用 0 表示，右边的第一个字符用 0-1 表示）
C