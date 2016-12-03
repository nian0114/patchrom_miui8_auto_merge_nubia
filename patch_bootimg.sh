#!/bin/bash

BOOTIMG=$1

rm -rf $TARGET_BOOT_DIR
mkdir -p $TARGET_BOOT_DIR
$UNPACKBOOTIMG -i $BOOTIMG -o $TARGET_BOOT_DIR > /dev/null
gunzip $TARGET_BOOT_DIR/boot.img-ramdisk.gz
mkdir -p $TARGET_BOOT_DIR/ramdisk
cd $TARGET_BOOT_DIR/ramdisk
cpio -i < ../boot.img-ramdisk
cd - > /dev/null
#  cat overlay/boot/file_contexts >> $TARGET_BOOT_DIR/ramdisk/file_contexts
  line=`sed -n '/BOOTCLASSPATH/=' $TARGET_BOOT_DIR/ramdisk/init.environ.rc | tail -n1`
  sed -i "${line}s/.*/&:\/system\/framework\/patchrom-core.jar:\/system\/app\/miui\/miui.apk:\/system\/app\/miuisystem\/miuisystem.apk/" $TARGET_BOOT_DIR/ramdisk/init.environ.rc
  line=`sed -n '/SYSTEMSERVERCLASSPATH/=' $TARGET_BOOT_DIR/ramdisk/init.environ.rc | tail -n1`
  sed -i "${line}s/.*/&:\/system\/framework\/patchrom-server.jar/" $TARGET_BOOT_DIR/ramdisk/init.environ.rc
  cp overlay/boot/init.miui.rc $TARGET_BOOT_DIR/ramdisk/
  cp overlay/boot/init.miui8.rc $TARGET_BOOT_DIR/ramdisk/
  echo "import /init.miui.rc" >> $TARGET_BOOT_DIR/ramdisk/init.rc
$MKBOOTFS $TARGET_BOOT_DIR/ramdisk | gzip > $TARGET_BOOT_DIR/ramdisk.gz


OLDCMDLINE=$(cat $TARGET_BOOT_DIR/boot.img-cmdline)

if [[ $OLDCMDLINE =~ "androidboot.selinux" ]];then
  sed -i -e "s/androidboot\.selinux=.*/androidboot\.selinux=permissive/g" $TARGET_BOOT_DIR/boot.img-cmdline
else
  sed -i "1s/.*/& androidboot\.selinux=permissive/" $TARGET_BOOT_DIR/boot.img-cmdline
fi

NEWCMDLINE=$(cat $TARGET_BOOT_DIR/boot.img-cmdline)

BASEADDR=$(cat $TARGET_BOOT_DIR/boot.img-base)
PAGESIZE=$(cat $TARGET_BOOT_DIR/boot.img-pagesize)
RAMDISKOFFSET=$(cat $TARGET_BOOT_DIR/boot.img-ramdisk_offset)
TAGSOFFSET=$(cat $TARGET_BOOT_DIR/boot.img-tags_offset)

$MKBOOTIMG --kernel $TARGET_BOOT_DIR/boot.img-zImage --ramdisk $TARGET_BOOT_DIR/ramdisk.gz --dt $TARGET_BOOT_DIR/boot.img-dt --base "$BASEADDR" --pagesize "$PAGESIZE" --ramdisk_offset "$RAMDISKOFFSET" --tags_offset "$TAGSOFFSET" --cmdline "$NEWCMDLINE" -o $BOOTIMG
#I need signed
./other/boot_signer/boot_signer /boot $BOOTIMG other/boot_signer/security/verity.pk8 other/boot_signer/security/verity.x509.pem $BOOTIMG