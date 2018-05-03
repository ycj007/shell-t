#/bin/bsh
#程序：while test
#作者：袁冲杰

while [ "${yn}" != "yes" -a "$yn" != "YES" ]
do
	read -p "plese input the right answer:" yn
done
echo "your answer is correct!"
