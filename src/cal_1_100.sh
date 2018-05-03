#/bin/bsh
#程序：计算1+2+。。。+100
#作者：袁冲杰
count=0
while [ "$count" -ne 101 ]
do
	count=$(($count+1))
	sum=$(($sum+$count))
done
echo "sum:$sum"
