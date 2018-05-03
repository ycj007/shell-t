#/bin/bsh
#程序：case 测试
#作者：袁冲杰

case $1 in
	"hello")
	echo "hello"
;;
	"")
	echo "blank"
;;
	*)
	echo "$0 hello"
esac
