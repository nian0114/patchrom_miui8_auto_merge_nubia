.class public Lcom/android/settings_ex/ScreenTimeOutSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ScreenTimeOutSettings.java"


# instance fields
.field private mScreenTimeOutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeOutPref:Lcom/android/settings_ex/ScreenTimeoutPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings_ex/ScreenTimeOutSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ScreenTimeOutSettings$1;-><init>(Lcom/android/settings_ex/ScreenTimeOutSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ScreenTimeOutSettings;->mScreenTimeOutObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ScreenTimeOutSettings;)Lcom/android/settings_ex/ScreenTimeoutPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ScreenTimeOutSettings;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeOutSettings;->mScreenTimeOutPref:Lcom/android/settings_ex/ScreenTimeoutPreference;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ScreenTimeOutSettings;->addPreferencesFromResource(I)V

    .line 37
    const-string v0, "screen_timeout_v5"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ScreenTimeOutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ScreenTimeoutPreference;

    iput-object v0, p0, Lcom/android/settings_ex/ScreenTimeOutSettings;->mScreenTimeOutPref:Lcom/android/settings_ex/ScreenTimeoutPreference;

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 60
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenTimeOutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ScreenTimeOutSettings;->mScreenTimeOutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenTimeOutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/ScreenTimeOutSettings;->mScreenTimeOutPref:Lcom/android/settings_ex/ScreenTimeoutPreference;

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/ScreenTimeOutSettings;->mScreenTimeOutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    :cond_0
    return-void
.end method
