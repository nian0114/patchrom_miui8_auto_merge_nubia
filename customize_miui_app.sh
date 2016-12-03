#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

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

if [ $1 = "TeleService" ];then
    applyPatch $1 $2
    sed -i '/readPermission="android.permission.READ_CONTACTS"/a\        <uses-library android:name="com.qualcomm.qcrilhook" android:required="true"/>' $2/AndroidManifest.xml
    sed -i '/readPermission="android.permission.READ_CONTACTS"/a\        <uses-library android:name="qti-telephony-common" android:required="true"/>' $2/AndroidManifest.xml
fi
