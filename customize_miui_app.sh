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

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

if [ $1 = "InCallUI" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "TeleService" ];then
    applyPatch $1 $2
    appendSmaliPart "TeleService"
    cp -f $1/smali/com/android/phone/*.smali $2/smali/com/android/phone/
    cp -rf $1/smali/com/android/phone/nubia $2/smali/com/android/phone/
    sed -i '/readPermission="android.permission.READ_CONTACTS"/a\        <uses-library android:name="com.qualcomm.qcrilhook" android:required="true"/>' $2/AndroidManifest.xml
    sed -i '/readPermission="android.permission.READ_CONTACTS"/a\        <uses-library android:name="qti-telephony-common" android:required="true"/>' $2/AndroidManifest.xml
fi
