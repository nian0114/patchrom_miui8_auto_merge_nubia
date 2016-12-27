.class public Lcom/android/settings_ex/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private mAudioProfileManager:Ljava/lang/Object;

.field private mSubscriptionID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mSubscriptionID:I

    .line 40
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mAudioProfileManager:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public getSubId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mSubscriptionID:I

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 54
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string v0, "android.settings.action.RINGTONE_PICKER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mAudioProfileManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "com.mediatek.audioprofile.AudioProfileManager"

    const-string v1, "getRingtoneUri"

    iget-object v2, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mAudioProfileManager:Ljava/lang/Object;

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/LocalReflectHelper;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 130
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const-string v0, "android.media.RingtoneManager"

    const-string v1, "getDefaultRingtoneUriBySubId"

    const/4 v2, 0x0

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/LocalReflectHelper;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 11
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mAudioProfileManager:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "com.mediatek.audioprofile.AudioProfileManager"

    const-string v2, "getActiveProfileKey"

    iget-object v3, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mAudioProfileManager:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v10, v10}, Lcom/android/settings_ex/LocalReflectHelper;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "profileKey":Ljava/lang/String;
    const-string v1, "com.mediatek.audioprofile.AudioProfileManager"

    const-string v2, "setRingtoneUri"

    iget-object v3, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mAudioProfileManager:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    const-class v5, Landroid/net/Uri;

    aput-object v5, v4, v9

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getSubId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/LocalReflectHelper;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v0    # "profileKey":Ljava/lang/String;
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v1, "android.media.RingtoneManager"

    const-string v2, "setActualRingtoneUriBySubId"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const-class v4, Landroid/net/Uri;

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v1, v2, v10, v3, v4}, Lcom/android/settings_ex/LocalReflectHelper;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/android/settings_ex/DefaultRingtonePreference;->mSubscriptionID:I

    .line 141
    return-void
.end method
