#/bin/bsh
#程序：测试function
#作者：袁冲杰

function test(){
echo "$1\n"
echo "$@\n"
echo "$#\n"
echo "$*"
}

case $1 in 

   "1")
    test $1
  ;;
   "2")
    test $0
  ;;
    *)
	test a b

esac
