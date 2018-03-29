#!/bin/sh
#删除当前目录下的小于当前日期一周的子一级目录
#
CURRENT=$(cd `dirname $0`;pwd)
echo $CURRENT
RETAIN=()
function inTheCol(){
  local collection=`echo $1`
  for i in ${collection[*]}
  do
        if [ $i = $2 ]
        then
		echo yes
		return
        fi
  done


        echo no
        

}

for ((i=0;i<7;i++ ))
do
 RETAIN[$i]=$(date -d "$i day ago" +"%Y-%m-%d" )
done
echo ${RETAIN[*]}

dirs=$(find $CURRENT   -maxdepth 1 -type d)
for dir in $dirs;
do
        if [ -d $dir -a $dir != $CURRENT  ]
        then
        xrsh_tmp=`echo ${RETAIN[*]}`
        dir=`basename $dir` 
        result=`inTheCol "$xrsh_tmp"  "$dir"`
	echo 'result:'$result
		if [ $result = 'no' ] 
        	 then
        	 rm -rf $dir
		 #echo "dir:"$dir
        	 fi

        fi
done
exit 0

