.class Lcom/android/settings_ex/msim/NBRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "NBRingtonePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubscription:I


# virtual methods
.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 56
    const-string v0, ""

    .line 57
    .local v0, "uristring":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mSubscription:I

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "card_one_ring_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    return-object v1

    .line 59
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mSubscription:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "card_two_ring_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 43
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "ringtoneSring":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mSubscription:I

    if-nez v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "card_one_ring_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 43
    .end local v0    # "ringtoneSring":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 46
    .restart local v0    # "ringtoneSring":Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mSubscription:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "card_two_ring_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
