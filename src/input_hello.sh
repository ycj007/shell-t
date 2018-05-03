#/bin/bsh
#程序：必须带参数hello
# 如果参数没有或者为其他 则显示参数不正确
# 如果正确则退出
#作者：袁冲杰

if [ "$#" -eq 0 -o "$1" != "hello" ];then
echo "参数不正确"
exit 0;
fi
echo "参数：$1 "

