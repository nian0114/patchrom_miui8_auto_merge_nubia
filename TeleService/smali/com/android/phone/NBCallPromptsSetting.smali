.class public Lcom/android/phone/NBCallPromptsSetting;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBCallPromptsSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallPromptsSetting;->addPreferencesFromResource(I)V

    const-string v1, "button_message_prompts_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallPromptsSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_response_vibration_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallPromptsSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_hang_up_vibration_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallPromptsSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_call_link_tone_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallPromptsSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_minute_tone_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallPromptsSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_call_end_tone_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallPromptsSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    new-instance v1, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSetting;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-static {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;Lcom/android/phone/SubscriptionInfoHelper;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onPause()V

    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "message_prompts"

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "RESPONSE_VIBRATION_SETTING"

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "CS_CallPrompts"

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VibrationAnswer_ON"

    :goto_2
    invoke-static {p0, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "VibrationAnswer_OFF"

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "HANG_UP_VIBRATION_SETTING"

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "CS_CallPrompts"

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "VibrationHangup_ON"

    :goto_3
    invoke-static {p0, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "VibrationHangup_OFF"

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v3, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CALL_LINK_TONE_SETTING"

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v1

    :cond_8
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "CS_CallPrompts"

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "CallLinkTone_ON"

    :goto_4
    invoke-static {p0, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v0, "CallLinkTone_OFF"

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v3, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "MINUTE_TONE_SETTING"

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v1

    :cond_b
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "CS_CallPrompts"

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "CallMinuteTone_ON"

    :goto_5
    invoke-static {p0, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "CallMinuteTone_OFF"

    goto :goto_5

    :cond_d
    iget-object v3, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v3, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CALL_END_TONE_SETTING"

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "CS_CallPrompts"

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "CallEndTone_ON"

    :goto_6
    invoke-static {p0, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "CallEndTone_OFF"

    goto :goto_6

    :cond_10
    move v1, v2

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onResume()V

    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "message_prompts"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, "messagePrompts":I
    if-eqz v3, :cond_0

    if-ne v3, v7, :cond_8

    :cond_0
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    .end local v3    # "messagePrompts":I
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "RESPONSE_VIBRATION_SETTING"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, "responseVibration":I
    iget-object v9, p0, Lcom/android/phone/NBCallPromptsSetting;->mResponseVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v5, :cond_9

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    .end local v5    # "responseVibration":I
    :cond_2
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "HANG_UP_VIBRATION_SETTING"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "hangupVibration":I
    iget-object v9, p0, Lcom/android/phone/NBCallPromptsSetting;->mHangupVibration:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v2, :cond_a

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    .end local v2    # "hangupVibration":I
    :cond_3
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "CALL_LINK_TONE_SETTING"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "callLinkTone":I
    iget-object v9, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallLinkTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v1, :cond_b

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    .end local v1    # "callLinkTone":I
    :cond_4
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "MINUTE_TONE_SETTING"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, "minuteTone":I
    iget-object v9, p0, Lcom/android/phone/NBCallPromptsSetting;->mMinuteTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v4, :cond_c

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    .end local v4    # "minuteTone":I
    :cond_5
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "CALL_END_TONE_SETTING"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "callEndTone":I
    if-eqz v0, :cond_6

    if-ne v0, v7, :cond_d

    :cond_6
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    .end local v0    # "callEndTone":I
    :cond_7
    :goto_5
    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onResume(Landroid/content/Context;)V

    return-void

    .restart local v3    # "messagePrompts":I
    :cond_8
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mMessagePrompts:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .end local v3    # "messagePrompts":I
    .restart local v5    # "responseVibration":I
    :cond_9
    move v6, v8

    goto :goto_1

    .end local v5    # "responseVibration":I
    .restart local v2    # "hangupVibration":I
    :cond_a
    move v6, v8

    goto :goto_2

    .end local v2    # "hangupVibration":I
    .restart local v1    # "callLinkTone":I
    :cond_b
    move v6, v8

    goto :goto_3

    .end local v1    # "callLinkTone":I
    .restart local v4    # "minuteTone":I
    :cond_c
    move v6, v8

    goto :goto_4

    .end local v4    # "minuteTone":I
    .restart local v0    # "callEndTone":I
    :cond_d
    iget-object v6, p0, Lcom/android/phone/NBCallPromptsSetting;->mCallEndTone:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5
.end method
