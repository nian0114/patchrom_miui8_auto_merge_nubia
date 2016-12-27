.class public Lcom/android/settings_ex/LedLightSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LedLightSettings.java"


# instance fields
.field private mAutomaticBrightnessSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mChargSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mNoDisturbSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mTouchSwitch:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getBrightnessMode(Landroid/content/ContentResolver;)I
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 76
    const-string v0, "LedLightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "led_light_brightness_mode"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "led_light_brightness_mode"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setBrightnessMode(ILandroid/content/ContentResolver;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 85
    const-string v0, "led_light_brightness_mode"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LedLightSettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "led_touch_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LedLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LedLightSettings;->mTouchSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 46
    const-string v0, "led_charge"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LedLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LedLightSettings;->mChargSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 47
    const-string v0, "led_no_disturb_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LedLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LedLightSettings;->mNoDisturbSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 48
    const-string v0, "led_automatic_brightness_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LedLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LedLightSettings;->mAutomaticBrightnessSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 50
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/LedLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mTouchSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 93
    const-string v4, "led_light_touch_enable"

    iget-object v5, p0, Lcom/android/settings_ex/LedLightSettings;->mTouchSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mChargSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 96
    const-string v4, "led_light_charge_enable"

    iget-object v5, p0, Lcom/android/settings_ex/LedLightSettings;->mChargSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 98
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mNoDisturbSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 99
    const-string v4, "led_no_disturb_enable"

    iget-object v5, p0, Lcom/android/settings_ex/LedLightSettings;->mNoDisturbSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_3

    .line 100
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mAutomaticBrightnessSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mAutomaticBrightnessSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v2

    .line 103
    .local v0, "mode":I
    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/LedLightSettings;->setBrightnessMode(ILandroid/content/ContentResolver;)V

    goto :goto_1

    .end local v0    # "mode":I
    :cond_7
    move v0, v3

    .line 101
    goto :goto_4
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/LedLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/LedLightSettings;->mTouchSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 58
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mTouchSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const-string v1, "led_light_touch_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/LedLightSettings;->mNoDisturbSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 62
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mNoDisturbSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const-string v1, "led_no_disturb_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/LedLightSettings;->mChargSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 66
    iget-object v4, p0, Lcom/android/settings_ex/LedLightSettings;->mChargSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const-string v1, "led_light_charge_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/LedLightSettings;->mAutomaticBrightnessSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/LedLightSettings;->mAutomaticBrightnessSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/LedLightSettings;->getBrightnessMode(Landroid/content/ContentResolver;)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 73
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 58
    goto :goto_0

    :cond_5
    move v1, v3

    .line 62
    goto :goto_1

    :cond_6
    move v1, v3

    .line 66
    goto :goto_2

    :cond_7
    move v2, v3

    .line 70
    goto :goto_3
.end method
