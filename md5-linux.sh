#!/usr/bin/env bash
# -*- coding: utf-8 -*-

printHelp() {
    echo "md5 [-f|--file-name <file-name>] [-v|--version] [-h|--help]"
    echo
    echo "md5(apple md5-like tool for Linux), v1.0"
    echo "(C)Copyright 2020. Nick Jiang<congtao.jiang@outlook.com>"
}

# read the options
optstring=`getopt -o f:v::h:: --long file-name::,version::,help:: -- "$@"`

if [ $? -ne 0 ]; then exit 1 ; fi

eval set -- "$optstring"

# extract options and their arguments into variables.
while true ; do
    case "$1" in
        -f|--file-name)
        fileName=$2 ; shift 2 ;;
        -v|--version)
        showVersion=1 ; shift 2;;
        -h|--help)
        printHelp ;     exit 0 ;;
        --) shift ; break ;;
        *) echo "Invalid Argument!" ; exit 1 ;;
    esac
done

if [ "${showVersion}" = "1" ]; then
    echo "md5(apple md5-like tool for Linux), v1.0"; exit 0
fi

if [ "${fileName}" != "" ]; then
    digest=$(md5sum ${fileName} | cut -d ' ' -f1)
    echo "MD5 (${fileName}) = ${digest}"
fi
