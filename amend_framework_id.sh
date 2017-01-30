#!/bin/bash
#
# Add miui smali files
#
# $1:pre add smalis
# $2: target src dir

if [ $2 = "out/framework" ]
then
  sed -i 's/.field static final TRANSACTION_deleteApplicationCacheFilesForUser:I = 0x5c/.field static final TRANSACTION_deleteApplicationCacheFilesForUser:I = 0x99/g' $1/framework/smali/android/content/pm/IPackageManager\$Stub.smali.part
  sed -i 's/0x5c/0x99/g' $1/framework/smali/android/content/pm/IPackageManager\$Stub\$Proxy.smali.part
fi
