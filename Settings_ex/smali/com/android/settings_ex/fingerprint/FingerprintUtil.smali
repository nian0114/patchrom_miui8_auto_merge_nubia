.class public Lcom/android/settings_ex/fingerprint/FingerprintUtil;
.super Ljava/lang/Object;
.source "FingerprintUtil.java"


# static fields
.field private static uriManager:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "content://cn.nubia.applockmanager/locked_app_manager/finger_applock_switch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->uriManager:Landroid/net/Uri;

    return-void
.end method

.method public static isFingerAppLockOpen(Landroid/content/Context;)Z
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v8, ""

    .line 85
    .local v8, "result":Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->uriManager:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_0

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 98
    :cond_0
    if-eqz v6, :cond_1

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_1
    :goto_0
    const-string v0, "on"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 95
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "FingerprintUtil"

    const-string v1, "error "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    if-eqz v6, :cond_1

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 98
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isFingerPhotoOpen(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string v1, "FingerprintUtil"

    const-string v3, "isFingerPhotoOpen WRONG mContext is Null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return v2

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_fingerprint_photo_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "state":I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isSupprotFingerPrintWakeup()Z
    .locals 4

    .prologue
    .line 64
    const-string v1, "persist.sys.fingerprint.wakeup"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "str":Ljava/lang/String;
    const-string v1, "FingerprintUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isUnlockSwitchOn(Landroid/content/Context;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 60
    :goto_0
    return v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_fingerprint_unlock_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "switchInt":I
    const-string v3, "jiepp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_FINGERPRINT_SWITCH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static setSupprotFingerPrintWakeup(ZLandroid/content/Context;)V
    .locals 3
    .param p0, "isOn"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "FingerprintUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupprotFingerPrintWakeup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v1, "persist.sys.fingerprint.wakeup"

    if-eqz p0, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia_fingerprint_wakeup"

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "no"

    goto :goto_1

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static setUnlockSwitch(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia_fingerprint_unlock_switch"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    if-nez p1, :cond_0

    .line 76
    invoke-static {p1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setSupprotFingerPrintWakeup(ZLandroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static updateFingerAppLockSwitch(ZLandroid/content/Context;)V
    .locals 5
    .param p0, "isOn"    # Z
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string v1, "off"

    .line 108
    .local v1, "on":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 109
    const-string v1, "on"

    .line 112
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "finger_applock_switch"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->uriManager:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateFingerPhotoSwitch(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const-string v0, "FingerprintUtil"

    const-string v1, "updateFingerPhotoSwitch WRONG mContext is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia_fingerprint_photo_switch"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
