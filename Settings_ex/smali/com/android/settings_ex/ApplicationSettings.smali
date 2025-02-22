.class public Lcom/android/settings_ex/ApplicationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ApplicationSettings.java"


# instance fields
.field private mInstallLocation:Lcn/nubia/commonui/preference/ListPreference;

.field private mToggleAdvancedSettings:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "selectedLocation":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    const-string v1, "device"

    .line 140
    :goto_0
    return-object v1

    .line 134
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 135
    const-string v1, "sdcard"

    goto :goto_0

    .line 136
    :cond_1
    if-nez v0, :cond_2

    .line 137
    const-string v1, "auto"

    goto :goto_0

    .line 140
    :cond_2
    const-string v1, "auto"

    goto :goto_0
.end method

.method private isAdvancedSettingsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setAdvancedSettingsEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 122
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ADVANCED_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    return-void

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "value":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    return v0
.end method

.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/ApplicationSettings;->mInstallLocation:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    return-void

    .line 89
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApplicationSettings;->addPreferencesFromResource(I)V

    .line 57
    const-string v1, "toggle_advanced_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/nubia/CheckBoxPreference;

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    const-string v1, "app_install_location"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/ApplicationSettings;->mInstallLocation:Lcn/nubia/commonui/preference/ListPreference;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, "userSetInstLocation":Z
    :cond_0
    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApplicationSettings;->mInstallLocation:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ApplicationSettings;->mInstallLocation:Lcn/nubia/commonui/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/ApplicationSettings;->mInstallLocation:Lcn/nubia/commonui/preference/ListPreference;

    new-instance v2, Lcom/android/settings_ex/ApplicationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ApplicationSettings$1;-><init>(Lcom/android/settings_ex/ApplicationSettings;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 107
    .local v0, "value":Z
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApplicationSettings;->setAdvancedSettingsEnabled(Z)V

    .line 110
    .end local v0    # "value":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method
