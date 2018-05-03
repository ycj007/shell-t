#!/bin/bash

#程序：
#让用户选择 Y N 
#如果用户输入Y /y 则显示继续
#如果用户输入N/n 则显示退出
#如果用户输入其他字符显示"输入错误"
#作者：袁冲杰
read -p "plese input Y/N" yn

[ "${yn}" == "Y"  -o "${yn}" == "y" ] && echo "继续。。。" && exit 0
[ "${yn}" == "N"  -o  "${yn}" == "n" ] && echo "退出" && exit 0 

echo "输入错误"


 

