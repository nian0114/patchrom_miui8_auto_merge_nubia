#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

function appendSmaliPart() {
  for file in `find $1 -name *.part`
  do
    filepath=`dirname $file`
    filename=`basename $file .part`
    dstfile="out/$filepath/$filename"
    cat $file >> $dstfile
  done
}

if [ $1 = "MiuiSystemUI" ];then
    appendSmaliPart "MiuiSystemUI"
fi
