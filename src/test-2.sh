#/bin/bsh
#程序：
#作者：袁冲杰

read -p "输入生日mmDD" sr
now=`date +%m%d`

echo $now
year=`date +%Y`
if [ "$sr" -eq "$now" ];then

echo "生日快乐"
elif [ "$sr" -gt "$now" ];then

timeDuring=$(($(date +%s -d "$year$sr") - $(date +%s -d "$year$now")))
days=$(($timeDuring/60/60/24))
echo $days

else
timeDuring=$(($(date +%s -d "$(($year+1))$sr") - $(date +%s -d "$year$now")))
days=$(($timeDuring/60/60/24))
echo $days

fi




