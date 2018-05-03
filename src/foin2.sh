#/bin/bsh
#程序：id username
#作者：袁冲杰

usernames=`cut -d ":" -f1 /etc/passwd`

for i in $usernames
do
id $i
done
