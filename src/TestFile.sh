#!/bin/bash
#
#程序：输入一个文件名，程序来判断
#	文件是否存在；文件是目录还是文件；文件权限
#作者：袁冲杰

#让用户输入文件名
echo "请输入一个文件名称。会检查文件是否存在，是目录还是文件，文件的权限"

read -p "请输入文件名：" filename

#判断是否输入文件名

test -z $filename && echo "你必须输入一个文件名" && exit 0
#判断文件是否存在
test ! -e $filename && echo "输入的文件不存在" && exit 0

#判断输入的文件是目录还是文件
test -d $filename && filetype="d"
test -f $filename && filetype="f"

#判断文件的权限，可读、可写、可执行
test -r $filename && perm="r"
test -w $filename && perm="${perm}w"
test -x $filename && perm="${perm}x"

echo "filetype:${filetype} perm:${perm}"
exit 0



