#/bin/bsh
#程序：debug
#作者：袁冲杰
for ((i=0;i<100;i++))
do
if [ "$i" -lt 50 ];
then
echo $i
else
echo "$i>50"
fi
done
