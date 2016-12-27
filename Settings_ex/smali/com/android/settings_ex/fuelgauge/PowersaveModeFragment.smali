.class public Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PowersaveModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;
    }
.end annotation


# instance fields
.field private mLowBatteryMode:Landroid/preference/nubia/CheckBoxPreference;

.field mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

.field private mPowersaveMode:Landroid/preference/nubia/CheckBoxPreference;

.field private final mReceiver:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;-><init>(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mReceiver:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->isLowBatteryModeActivated()Z

    move-result v0

    .line 98
    .local v0, "isOpen":Z
    const-string v1, "jiepp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLowBatteryModeActivated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowBatteryMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mPowersaveMode:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->isSmartModeActivated()Z

    move-result v0

    .line 103
    const-string v1, "jiepp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartModeActivated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mPowersaveMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-direct {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    .line 34
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->addPreferencesFromResource(I)V

    .line 35
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->isSmartModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "power_save_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mPowersaveMode:Landroid/preference/nubia/CheckBoxPreference;

    .line 40
    :goto_0
    const-string v0, "low_battery_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowBatteryMode:Landroid/preference/nubia/CheckBoxPreference;

    .line 41
    return-void

    .line 38
    :cond_0
    const-string v0, "power_save_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mReceiver:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;->setListening(Z)V

    .line 54
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowBatteryMode:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowBatteryMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->setLowBatteryModeActivated(Z)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mPowersaveMode:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mPowersaveMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->setSmartModeActivated(Z)V

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->updateUI()V

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mReceiver:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;->setListening(Z)V

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->bindService(Landroid/content/Context;Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;)Z

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->unbind()V

    .line 125
    return-void
.end method
