#/bin/bsh
#程序：处理文件
#在第二行新增内容 "你好袁先生"
#替换第三行 linux 为linuxs
#删除最后一行
#作者：袁冲杰
#在第一行后新增一行
`sed  -e 1a\"你好袁先生" ./file`
`sed -e s\linux\linuxs\ ./file`
`sed -e -1d ./file`

