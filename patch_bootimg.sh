#!/bin/bash

#I need signed
./other/boot_signer/boot_signer /boot $BOOTIMG other/boot_signer/security/verity.pk8 other/boot_signer/security/verity.x509.pem $BOOTIMG