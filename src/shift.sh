#!/bin/bash
#程序：演示shift 效果
echo "$@"
echo "$#"
shift
echo "$@"
echo "$#"
shift
echo "$@"
echo "$#"



