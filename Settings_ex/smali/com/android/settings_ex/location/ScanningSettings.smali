.class public Lcom/android/settings_ex/location/ScanningSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ScanningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 54
    :cond_0
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/ScanningSettings;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/location/ScanningSettings;->initPreferences()V

    .line 57
    return-object v0
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 61
    const-string v2, "wifi_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    .line 63
    .local v1, "wifiScanAlwaysAvailable":Landroid/preference/nubia/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_scan_always_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 65
    const-string v2, "bluetooth_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    .line 67
    .local v0, "bleScanAlwaysAvailable":Landroid/preference/nubia/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "ble_scan_always_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 70
    invoke-virtual {v1, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    return-void

    .end local v0    # "bleScanAlwaysAvailable":Landroid/preference/nubia/CheckBoxPreference;
    :cond_0
    move v2, v4

    .line 63
    goto :goto_0

    .restart local v0    # "bleScanAlwaysAvailable":Landroid/preference/nubia/CheckBoxPreference;
    :cond_1
    move v3, v4

    .line 67
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x83

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "key":Ljava/lang/String;
    const-string v1, "wifi_always_scanning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_scan_always_enabled"

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    :cond_0
    const-string v1, "bluetooth_always_scanning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "ble_scan_always_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    :cond_2
    return v2

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    move v1, v3

    .line 98
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "key":Ljava/lang/String;
    const-string v3, "wifi_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/nubia/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    :goto_0
    return v2

    .line 82
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v3, "bluetooth_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ble_scan_always_enabled"

    check-cast p2, Landroid/preference/nubia/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 87
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/location/ScanningSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 47
    return-void
.end method
