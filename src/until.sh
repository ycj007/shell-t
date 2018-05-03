#/bin/bsh
#程序：util test
#作者：袁冲杰

until [ "$yn" == "yes" -o "$yn" == "YES" ]
do
read -p "please input the right answer:" yn
done

