#/bin/bsh
#程序：
#a检查logic 这个文件是否存在，如果不存在则用touch 建立文件。检测文件是否为文件类型，如果是则删除创建目录
#检测是否是目录，如果是则删除此目录
#作者：袁冲杰

if [ ! -e logic ];then
touch logic
echo "创建文件logic"
exit -1
fi

if [ -f logic ];then
rm logic
mkdir logic
echo "rm logic mkdir logic"
exit -1
fi

if [ -d logic ];then
rm -rf logic
echo "rm -rf logic"
exit -1
fi

