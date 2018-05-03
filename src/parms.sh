#!/bin/bash
#程序：
#打印出文件后的参数具体信息
#如果参数小于2 输出参数太少
#如果参数大于等于2 则：
#	打印文件名
#	打印参数个数
#	打印参数具体内容
#	打印参数总内容
[ "$#" -lt 2 ]  && echo "输入参数太少" && exit 0;
[ "$#" -ge 2 ] 
 echo "文件名：$0"
 echo "参数个数$#"
 echo "参数总内容$*"
 echo "第一个$1"
 echo "第二个$2"
exit 0