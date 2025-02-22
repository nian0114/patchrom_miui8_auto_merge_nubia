.class public Lcom/android/settings_ex/fuelgauge/BatterySaverModeVoiceActivity;
.super Lcom/android/settings_ex/utils/VoiceSettingsActivity;
.source "BatterySaverModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 37
    const-string v1, "android.settings.extra.battery_saver_mode_enabled"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 39
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "android.settings.extra.battery_saver_mode_enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/BatterySaverModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    .line 49
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 43
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    const-string v1, "BatterySaverModeVoiceActivity"

    const-string v2, "Unable to set power mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/BatterySaverModeVoiceActivity;->notifyFailure(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    const-string v1, "BatterySaverModeVoiceActivity"

    const-string v2, "Missing battery saver mode extra"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
