.class public Lcom/android/settings_ex/MsgRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "MsgRingtonePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private subId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->subId:I

    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public getMsgRingtone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->subId:I

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "card_one_message_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->subId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "card_two_message_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "message_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->subId:I

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 59
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    :try_start_0
    const-string v1, "android.settings.action.RINGTONE_PICKER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/MsgRingtonePreference;->getMsgRingtone()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "ringtoneSring":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/MsgRingtonePreference;->subId:I

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "card_one_message_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 84
    return-void

    .line 75
    .end local v0    # "ringtoneSring":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 78
    .restart local v0    # "ringtoneSring":Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/MsgRingtonePreference;->subId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "card_two_message_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/MsgRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "message_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/settings_ex/MsgRingtonePreference;->subId:I

    .line 108
    return-void
.end method
