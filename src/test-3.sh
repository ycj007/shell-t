#/bin/bsh
#程序：用户输入一个数字，从 1+2+3一直累加到此数字
#作者：袁冲杰

read -p "请输入一个正数：" num
if [ -z "$num" ];then
echo "输入不可为空"
exit 0
fi

if [ -z $(grep '^[[:digit:]]*$' <<< "$num") ];then
echo "输入非法字符"
exit 0
fi

if [ "$num" -lt 1 ];then
echo "输入数字小于0"
exit 0
fi

sum=0
for (( i=0; i<=$num; i++ ))
do
sum=$(( $i + $sum ))
done
echo "sum:$sum"
