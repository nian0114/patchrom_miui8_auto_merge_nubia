.class public Lcom/android/settings_ex/BrightnessV5Settings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BrightnessV5Settings.java"


# instance fields
.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessV5:Lcom/android/settings_ex/BrightnessPreference2;

.field private mZteAutomaticBrightnessObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 22
    new-instance v0, Lcom/android/settings_ex/BrightnessV5Settings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/BrightnessV5Settings$1;-><init>(Lcom/android/settings_ex/BrightnessV5Settings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 29
    new-instance v0, Lcom/android/settings_ex/BrightnessV5Settings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/BrightnessV5Settings$2;-><init>(Lcom/android/settings_ex/BrightnessV5Settings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 37
    new-instance v0, Lcom/android/settings_ex/BrightnessV5Settings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/BrightnessV5Settings$3;-><init>(Lcom/android/settings_ex/BrightnessV5Settings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mZteAutomaticBrightnessObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/BrightnessV5Settings;)Lcom/android/settings_ex/BrightnessPreference2;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BrightnessV5Settings;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessV5:Lcom/android/settings_ex/BrightnessPreference2;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BrightnessV5Settings;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "brightness_v5"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BrightnessV5Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/BrightnessPreference2;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessV5:Lcom/android/settings_ex/BrightnessPreference2;

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessV5Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessV5Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessV5Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mZteAutomaticBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessV5Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessV5:Lcom/android/settings_ex/BrightnessPreference2;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessV5:Lcom/android/settings_ex/BrightnessPreference2;

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mZteAutomaticBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ex/BrightnessPreference2;->registerZteAutoContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessV5Settings;->mBrightnessV5:Lcom/android/settings_ex/BrightnessPreference2;

    invoke-virtual {v1}, Lcom/android/settings_ex/BrightnessPreference2;->onResume()V

    .line 69
    :cond_0
    return-void
.end method
