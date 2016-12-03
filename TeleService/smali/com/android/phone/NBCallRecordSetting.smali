.class public Lcom/android/phone/NBCallRecordSetting;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBCallRecordSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

.field private mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

.field private mCategory:Lcom/android/phone/NBRadioGroupPreference;

.field private mChooseContactsPreference:Landroid/preference/Preference;

.field private mExternalStorageStateReceiver:Landroid/content/BroadcastReceiver;

.field private mFormatSummary:[Ljava/lang/String;

.field private mQueryContactCountTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBCallRecordSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCallRecordSetting$1;-><init>(Lcom/android/phone/NBCallRecordSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mExternalStorageStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBCallRecordSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallRecordSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->initCallRecordSavePath()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBCallRecordSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallRecordSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->hideChooseContactsPreference()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NBCallRecordSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallRecordSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->showChooseContactsPreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NBCallRecordSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCallRecordSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mChooseContactsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NBCallRecordSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallRecordSetting;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallRecordSetting;->setContactCountSummary(I)V

    return-void
.end method

.method private checkRadioPreference()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_record_target"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "value":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    const-string v2, "button_auto_call_record_everyone"

    invoke-virtual {v1, v2}, Lcom/android/phone/NBRadioGroupPreference;->check(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->hideChooseContactsPreference()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    const-string v2, "button_auto_call_record_stranger"

    invoke-virtual {v1, v2}, Lcom/android/phone/NBRadioGroupPreference;->check(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->hideChooseContactsPreference()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    const-string v2, "button_auto_call_record_chosen_contact"

    invoke-virtual {v1, v2}, Lcom/android/phone/NBRadioGroupPreference;->check(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->showChooseContactsPreference()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleCallRecordFormatSetting(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    .local v1, "defaultValue":I
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_record_format"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "currentValue":I
    const/4 v3, 0x0

    .local v3, "value":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-eq v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_record_format"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "CS_CallRecord"

    if-nez v3, :cond_2

    const-string v4, "SaveFormat_AMR"

    :goto_2
    invoke-static {p0, v5, v4}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/NBCallRecordSetting;->mFormatSummary:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v4, "SaveFormat_WAV"

    goto :goto_2
.end method

.method private handleCallRecordSavePath(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .local v1, "defaultValue":I
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "NUBIA_CALL_RECORD_SAVE_PATH_SETTING"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "currentValue":I
    const/4 v3, 0x0

    .local v3, "value":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-eq v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "NUBIA_CALL_RECORD_SAVE_PATH_SETTING"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "CS_CallRecord"

    if-nez v3, :cond_2

    const-string v4, "SavePath_IN"

    :goto_1
    invoke-static {p0, v5, v4}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v4, "SavePath_OUT"

    goto :goto_1
.end method

.method private hideChooseContactsPreference()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mChooseContactsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/phone/NBRadioGroupPreference;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private initCallRecordFormat()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "defaultValue":I
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_record_format"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "value":I
    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mFormatSummary:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initCallRecordPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "button_auto_call_record_choose_contacts"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mChooseContactsPreference:Landroid/preference/Preference;

    const-string v0, "auto_call_record_category"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBRadioGroupPreference;

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    new-instance v3, Lcom/android/phone/NBCallRecordSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NBCallRecordSetting$2;-><init>(Lcom/android/phone/NBCallRecordSetting;)V

    invoke-virtual {v0, v3}, Lcom/android/phone/NBRadioGroupPreference;->setOnCheckedChangedListener(Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;)V

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->checkRadioPreference()V

    const-string v0, "button_record_notification_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "is_call_record_notification"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    const-string v0, "button_auto_call_record_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "NUBIA_AUTO_CALL_RECORD"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v0, "button_record_notification_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_call_record_notification"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/nubia/phone/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    const-string v0, "button_call_record_save_path_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v0, "button_call_record_format"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->initCallRecordFormat()V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private initCallRecordSavePath()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .local v1, "defaultValue":I
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NUBIA_CALL_RECORD_SAVE_PATH_SETTING"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "currentValue":I
    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->existSDCard()Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CHANGED_SDCARD_SAVE_PATH_FLAG"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/NBCallRecordSetting;->handleCallRecordSavePath(Landroid/preference/Preference;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/NBCallRecordSetting;->handleCallRecordSavePath(Landroid/preference/Preference;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private queryContactCount()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/phone/NBCallRecordSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCallRecordSetting$3;-><init>(Lcom/android/phone/NBCallRecordSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private registerStorageStateReceiver()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mExternalStorageStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NBCallRecordSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setContactCountSummary(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mChooseContactsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mChooseContactsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showChooseContactsPreference()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mChooseContactsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/phone/NBRadioGroupPreference;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->queryContactCount()V

    return-void
.end method

.method private showOrHiddenCategory()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    .local v0, "checked":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting;->mCategory:Lcom/android/phone/NBRadioGroupPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private unRegisterStorageStateReceiver()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mExternalStorageStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallRecordSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallRecordSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mFormatSummary:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->initCallRecordPreference()V

    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->isSupportExternalSDCard()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->registerStorageStateReceiver()V

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    new-instance v1, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->unRegisterStorageStateReceiver()V

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

    iget-object v1, p0, Lcom/android/phone/NBCallRecordSetting;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

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
    .locals 2

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mQueryContactCountTask:Landroid/os/AsyncTask;

    :cond_0
    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordSavePreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBCallRecordSetting;->handleCallRecordSavePath(Landroid/preference/Preference;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordFormatPreference:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBCallRecordSetting;->handleCallRecordFormatSetting(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "NUBIA_AUTO_CALL_RECORD"

    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->showOrHiddenCategory()V

    const-string v2, "CS_CallRecord"

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mAutoCallRecordPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AutoRecord_ON"

    :goto_0
    invoke-static {p0, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_1
    const-string v0, "AutoRecord_OFF"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_call_record_notification"

    iget-object v4, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "CS_CallRecord"

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting;->mCallRecordNotificationPreference:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Notification_ON"

    :goto_2
    invoke-static {p0, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "Notification_OFF"

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->initCallRecordSavePath()V

    invoke-direct {p0}, Lcom/android/phone/NBCallRecordSetting;->queryContactCount()V

    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
