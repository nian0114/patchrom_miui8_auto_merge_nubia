.class public Lcom/android/settings_ex/deviceinfo/ImeiInformation;
.super Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.source "ImeiInformation.java"


# instance fields
.field private isMultiSIM:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    return-void
.end method

.method private initPreferenceScreen(I)V
    .locals 2
    .param p1, "slotCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 69
    if-le p1, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 70
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 71
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    .line 72
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setPreferenceValue(I)V

    .line 73
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setNewKey(I)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    .end local v0    # "slotId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    .restart local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 176
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_0
    return-void
.end method

.method private setNewKey(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 135
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 136
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 138
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "key":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v3, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->updateTitle(Landroid/preference/Preference;I)V

    .line 136
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPreferenceValue(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/16 v6, 0xe

    .line 78
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 79
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v2}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    .line 80
    .local v2, "mConfigResUtil":Lcom/android/internal/telephony/ConfigResourceUtil;
    const/4 v1, 0x0

    .line 82
    .local v1, "imeiStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 84
    .local v0, "enable14DigitImei":Z
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "config_enable_display_14digit_imei"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    :goto_0
    if-eqz v3, :cond_2

    .line 91
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 98
    const-string v4, "meid_number"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v4, "min_number"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const-string v4, "min_number"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const v5, 0x7f0c03b5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 105
    :cond_1
    const-string v4, "prl_version"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "imei_sv"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 108
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 110
    const-string v4, "icc_id"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "imei"

    invoke-direct {p0, v4, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    :goto_1
    return-void

    .line 115
    :cond_3
    const-string v4, "imei"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 116
    const-string v4, "icc_id"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_4
    const-string v4, "imei"

    invoke-direct {p0, v4, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v4, "imei_sv"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v4, "prl_version"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 124
    const-string v4, "meid_number"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 125
    const-string v4, "min_number"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 126
    const-string v4, "icc_id"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    .local v0, "preference":Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 165
    :cond_0
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    return-void
.end method

.method private updateTitle(Landroid/preference/Preference;I)V
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 148
    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0a81

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x29

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    const v3, 0x7f0e0065

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 56
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 57
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 59
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->initPreferenceScreen(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 190
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->finish()V

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
