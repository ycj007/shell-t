#/bin/bsh
#程序：检测 端口 21 22 25 80 是否运行
#作者：袁冲杰

echo "开始检测 21 22 25 80 端口是否被占用"

tmpFile="/dev/shm/netstat_checking.txt"
netstat -tuln > ${tmpFile}
testing=$( grep ":80 " ${tmpFile})
if [  -n "$testing" ] ; then
echo "80 端口占用"
fi
testing=$(grep ":21 " ${tempFile})
if [ "$testing" != "" ];then
echo "21端口占用"

fi
testing=`grep ":21 " $tempFile`
if [ "$testing" != ""  ];then
echo "22端口占用"
fi
testing=$(grep ":21 " ${tempFile})
if ["$testing" !=  "" ];then
echo "25端口占用"
fi 

