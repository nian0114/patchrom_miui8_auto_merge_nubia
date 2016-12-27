.class public Lcom/android/settings_ex/LauncherSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LauncherSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 7
    sget v0, Lcom/android/settings_ex/LauncherSettings;->LAUNCHER_SETTINGS:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LauncherSettings;->addPreferencesFromResource(I)V

    .line 13
    return-void
.end method
