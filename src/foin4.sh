#/bin/bsh
#程序：ping 192.168.1.0 -192.168.1.100 zhuji
#作者：袁冲杰

dir=`pwd`
networkbase=""
for i in $(cat $dir"/domain")
do
 ping -c 1 -w 1 $i &>/dev/null && result=0 || result=1

 if [ "$result" -eq 0 ];then
 echo "$networkbase$i up"
 fi
 if [ "$result" -eq 1 ]; then
echo "$networkbase$i down"
fi 
done
