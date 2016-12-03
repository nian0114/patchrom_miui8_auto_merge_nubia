#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

device_name=`grep "ro.product.device=" stockrom/system/build.prop | cut -d '=' -f2`
curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name "*.patch"`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function appendSmaliPart() {
  for file in `find $1 -name *.part`
  do
    filepath=`dirname $file`
    filename=`basename $file .part`
    dstfile="out/$filepath/$filename"
    cat $file >> $dstfile
  done
}

function isPatchrom() {
  sed -i -e "s/\"hammerhead\"/\"$device_name\"/g" `grep -lnr "hammerhead" $1/smali`
}

if [ $1 = "DeskClock" ];then
    isPatchrom $2
fi

if [ $1 = "MiuiKeyguard" ];then
    applyPatch $1 $2
fi

if [ $1 = "MiuiSystemUI" ];then
    appendSmaliPart "MiuiSystemUI"
	applyPatch $1 $2
fi

if [ $1 = "TelephonyProvider" ];then
    applyPatch $1 $2
fi

if [ $1 = "SecurityCoreAdd" ];then
    applyPatch $1 $2
fi

if [ $1 = "XiaomiServiceFramework" ];then
    applyPatch $1 $2
fi

if [ $1 = "SecurityCenter" ];then
    applyPatch $1 $2
    isPatchrom $2
fi
