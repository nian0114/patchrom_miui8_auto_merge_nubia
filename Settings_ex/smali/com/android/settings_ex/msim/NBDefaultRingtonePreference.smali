.class public Lcom/android/settings_ex/msim/NBDefaultRingtonePreference;
.super Lcom/android/settings_ex/msim/NBRingtonePreference;
.source "NBDefaultRingtonePreference.java"


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string v0, "android.settings.action.RINGTONE_PICKER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings_ex/msim/NBRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 41
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    return-void
.end method
