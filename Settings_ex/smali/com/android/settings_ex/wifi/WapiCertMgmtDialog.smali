.class public Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;


# static fields
.field private static certificate_installation_path:Ljava/lang/String;

.field private static certificate_path:Ljava/lang/String;

.field private static default_sdcard_path:Ljava/lang/String;

.field private static external_sdcard_path:Ljava/lang/String;

.field private static wifi_sdcard_path:Ljava/lang/String;


# instance fields
.field private mASCertEdit:Landroid/widget/EditText;

.field private mASCertText:Landroid/widget/TextView;

.field private mCancelButtonPos:I

.field private mCreateSubdirEdit:Landroid/widget/EditText;

.field private mCreateSubdirText:Landroid/widget/TextView;

.field private mCustomTitle:Ljava/lang/CharSequence;

.field private mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mInstallButtonPos:I

.field private mMode:I

.field private mUninstallButtonPos:I

.field private mUninstallCerts:Ljava/lang/String;

.field private mUserCertEdit:Landroid/widget/EditText;

.field private mUserCertText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7fffffff

    .line 90
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    .line 74
    iput v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 75
    iput v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallButtonPos:I

    .line 76
    iput v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCancelButtonPos:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p1, "fileDest"    # Ljava/io/File;
    .param p2, "fileSource"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 423
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 424
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 425
    .local v4, "i":I
    const-string v6, "WapiCertMgmtDialog"

    const-string v7, "copyFile"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .local v2, "fI":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 440
    .local v3, "fO":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 445
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 456
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 457
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 462
    const/4 v5, 0x1

    .end local v2    # "fI":Ljava/io/FileInputStream;
    .end local v3    # "fO":Ljava/io/FileOutputStream;
    :goto_1
    return v5

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fI":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 435
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 441
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fO":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 442
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 449
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 450
    :catch_3
    move-exception v1

    .line 451
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 459
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private deleteAll(Ljava/lang/String;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 628
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, "f":Ljava/io/File;
    const-string v5, "WapiCertMgmtDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAll filepath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 632
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 633
    .local v0, "delFile":[Ljava/io/File;
    array-length v2, v0

    .line 635
    .local v2, "fileNum":I
    if-nez v2, :cond_2

    .line 636
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 643
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 647
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    :cond_1
    :goto_0
    return-void

    .line 638
    .restart local v0    # "delFile":[Ljava/io/File;
    .restart local v2    # "fileNum":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 639
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 640
    .local v4, "subdirectory":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 644
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    .end local v3    # "i":I
    .end local v4    # "subdirectory":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 645
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getDeletDirFromSpinner()I
    .locals 2

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 607
    .local v0, "position":I
    return v0
.end method

.method private getInput(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p1, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 559
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCancle()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method private handleDeletDirChange(I)V
    .locals 4
    .param p1, "deletDirIdx"    # I

    .prologue
    .line 614
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/wapi_certificate"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v1, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 625
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 620
    .local v0, "certificateList":[Ljava/io/File;
    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    .end local v0    # "certificateList":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 623
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleInstall()V
    .locals 21

    .prologue
    .line 204
    const-string v17, "WapiCertMgmtDialog"

    const-string v18, "handleInstall"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v12, "/data/wapi_certificate"

    .line 207
    .local v12, "stringDefDir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, "defDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 218
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Cert. base dir create failed"

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 418
    :goto_0
    return-void

    .line 226
    :cond_0
    const/16 v17, 0x1ff

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v14

    .line 230
    .local v14, "subdir":Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 231
    :cond_2
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c23

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    goto :goto_0

    .line 238
    :cond_3
    invoke-static {v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->isValidFilename(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 239
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c24

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    goto/16 :goto_0

    .line 247
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/wapi_certificate/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 248
    .local v13, "stringDestDir":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0xfe

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 249
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c25

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    goto/16 :goto_0

    .line 257
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v5, "destDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 259
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c26

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    goto/16 :goto_0

    .line 268
    :cond_6
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_7

    .line 273
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c27

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v6

    .line 270
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 282
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "asCert":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 284
    :cond_8
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c28

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_9
    const-string v17, "/system/wifi/sdcard"

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    .line 295
    const-string v17, "SECONDARY_STORAGE"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    .line 296
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    .line 298
    sget-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 299
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "default_sdcard_path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "asCert file:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 302
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "certificate_path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v7, Ljava/io/File;

    sget-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v7, "fileASCert":Ljava/io/File;
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fileASCert.exists(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_a

    .line 307
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Certificate path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not exist"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Hence trying with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 310
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 311
    new-instance v7, Ljava/io/File;

    .end local v7    # "fileASCert":Ljava/io/File;
    sget-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v7    # "fileASCert":Ljava/io/File;
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fileASCert.exists(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_a

    .line 315
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Secondary certificate path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not exist."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Hence trying with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 318
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 319
    new-instance v7, Ljava/io/File;

    .end local v7    # "fileASCert":Ljava/io/File;
    sget-object v17, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v7    # "fileASCert":Ljava/io/File;
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fileASCert.exists(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_a

    .line 323
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "wifi certificate path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not exist."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v17, "WapiCertMgmtDialog"

    const-string v18, "Hence ABORTING!!!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c29

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->isAsCertificate(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 337
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c2a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :cond_b
    const-string v17, "WapiCertMgmtDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleInstall Create AS Cert: = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v8, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "as.cer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v8, "fileDestAS":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 355
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :catch_1
    move-exception v6

    .line 351
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 359
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v16

    .line 364
    .local v16, "userCert":Ljava/lang/String;
    if-eqz v16, :cond_e

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 365
    :cond_e
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c2c

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 371
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :cond_f
    new-instance v10, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v10, "fileUserCert":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_10

    .line 376
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c2d

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    :cond_10
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->isUserCertificate(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 386
    new-instance v17, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0c045a

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1080027

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0c2b

    invoke-virtual/range {v17 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 392
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    :cond_11
    new-instance v9, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "user.cer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v9, "fileDestUser":Ljava/io/File;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    :goto_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 402
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :catch_2
    move-exception v6

    .line 399
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 407
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_13
    const/16 v17, 0x1c7

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 412
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "user.cer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x124

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 413
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "as.cer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x124

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0c0c2e

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, "status":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 417
    .local v15, "toast":Landroid/widget/Toast;
    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private handleUninstall()V
    .locals 4

    .prologue
    .line 563
    const-string v2, "WapiCertMgmtDialog"

    const-string v3, "handleUninstall"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0c2f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "status":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 569
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 571
    .end local v0    # "status":Ljava/lang/String;
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private isAsCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "ascert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 477
    const-string v2, "BEGIN CERTIFICATE"

    .line 478
    .local v2, "stringCertBegin":Ljava/lang/String;
    const-string v3, "END CERTIFICATE"

    .line 479
    .local v3, "stringCertEnd":Ljava/lang/String;
    const-string v4, "BEGIN EC PRIVATE KEY"

    .line 480
    .local v4, "stringECBegin":Ljava/lang/String;
    const-string v5, "END EC PRIVATE KEY"

    .line 481
    .local v5, "stringECEnd":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "as":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v6

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 491
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    .line 499
    :try_start_2
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-nez v8, :cond_0

    .line 507
    :try_start_3
    invoke-virtual {p0, v5, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    .line 514
    goto :goto_0

    .line 494
    :catch_1
    move-exception v1

    .line 495
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 502
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 503
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 511
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isUserCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "usercert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 518
    const-string v1, "BEGIN CERTIFICATE"

    .line 519
    .local v1, "stringCertBegin":Ljava/lang/String;
    const-string v2, "END CERTIFICATE"

    .line 520
    .local v2, "stringCertEnd":Ljava/lang/String;
    const-string v3, "BEGIN EC PRIVATE KEY"

    .line 521
    .local v3, "stringECBegin":Ljava/lang/String;
    const-string v4, "END EC PRIVATE KEY"

    .line 522
    .local v4, "stringECEnd":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v5, "user":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v6

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    .line 540
    :try_start_2
    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-ne v7, v8, :cond_0

    .line 548
    :try_start_3
    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-ne v7, v8, :cond_0

    move v6, v7

    .line 555
    goto :goto_0

    .line 535
    :catch_1
    move-exception v0

    .line 536
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 544
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 552
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isValidFilename(Ljava/lang/String;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 688
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 689
    .local v0, "filename":[B
    const-string v4, "//"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\\"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    const/16 v4, 0x3c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    const/16 v4, 0x7c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    array-length v4, v0

    if-ne v4, v2, :cond_1

    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    .line 696
    .local v1, "invalidFilename":Z
    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v2

    .end local v1    # "invalidFilename":Z
    :cond_1
    move v1, v3

    .line 689
    goto :goto_0

    .restart local v1    # "invalidFilename":Z
    :cond_2
    move v2, v3

    .line 696
    goto :goto_1
.end method

.method private onLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "positiveButtonResId":I
    const/4 v0, 0x0

    .line 101
    .local v0, "negativeButtonResId":I
    const/4 v1, 0x0

    .line 103
    .local v1, "neutralButtonResId":I
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setInverseBackgroundForced(Z)V

    .line 105
    iget v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    if-nez v3, :cond_1

    .line 106
    const v3, 0x7f0401f3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setLayout(I)V

    .line 107
    const v2, 0x7f0c0c1b

    .line 108
    iput v4, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 114
    :cond_0
    :goto_0
    const v0, 0x7f0c0c1d

    .line 115
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCancelButtonPos:I

    .line 117
    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButtons(III)V

    .line 118
    return-void

    .line 109
    :cond_1
    iget v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    if-ne v3, v5, :cond_0

    .line 110
    const v3, 0x7f0401f4

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setLayout(I)V

    .line 111
    const v2, 0x7f0c0c1c

    .line 112
    iput v4, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallButtonPos:I

    goto :goto_0
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f120483

    .line 127
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    if-nez v0, :cond_1

    .line 128
    const v0, 0x7f12047d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirText:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f12047e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;-><init>(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    const v0, 0x7f12047f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mASCertText:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f120480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    .line 162
    const v0, 0x7f120481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUserCertText:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f120482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0c20

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/wifi/WifiSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setDeletDirSpinnerAdapter()V

    goto :goto_0
.end method

.method private setButtons(III)V
    .locals 2
    .param p1, "positiveResId"    # I
    .param p2, "negativeResId"    # I
    .param p3, "neutralResId"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    if-lez p1, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    :cond_0
    if-lez p3, :cond_1

    .line 184
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 187
    :cond_1
    if-lez p2, :cond_2

    .line 188
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    :cond_2
    return-void
.end method

.method private setDeletDirSpinnerAdapter()V
    .locals 8

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 576
    .local v3, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/wapi_certificate"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v2, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 603
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 588
    .local v1, "certificateList":[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 589
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 596
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v1    # "certificateList":[Ljava/io/File;
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 600
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setLayout(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->onReferenceViews(Landroid/view/View;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    const-string v0, "WapiCertMgmtDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mInstallButtonPos:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    if-nez v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleInstall()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallButtonPos:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleUninstall()V

    goto :goto_0

    .line 198
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCancelButtonPos:I

    if-ne p2, v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleCancle()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 654
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onClick View "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->onLayout()V

    .line 96
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onItemSelected(II)V
    .locals 1
    .param p1, "parent"    # I
    .param p2, "value"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSpinner;->getID()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getDeletDirFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleDeletDirChange(I)V

    .line 672
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 666
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 658
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onNothingSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method public searchString(Ljava/lang/String;Ljava/io/File;)I
    .locals 5
    .param p1, "find_str"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 467
    .local v1, "reader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x800

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 468
    .local v2, "reader2":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 469
    .local v3, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "buffer":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    return v4
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    .line 174
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 685
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 678
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 679
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCustomTitle:Ljava/lang/CharSequence;

    .line 680
    return-void
.end method
