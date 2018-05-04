#/bin/bsh
#程序：
#从 /etc/passwd 取出所有用户名，然后打印出来。打印格式为 "行号 用户名"

#作者：袁冲杰
accounts=`cat /etc/passwd | cut -d ":" -f1`
line=0
for i in $accounts
do
((line++))
echo "\"$line $i\""
done
