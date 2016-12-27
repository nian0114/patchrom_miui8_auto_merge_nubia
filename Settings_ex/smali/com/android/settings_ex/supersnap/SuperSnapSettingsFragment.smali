.class public Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SuperSnapSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static FEATURE_NAME:Ljava/lang/String;

.field private static FINGERPRINT_SUPER_SNAP_KEY:Ljava/lang/String;

.field private static RECORD_QUALITY_KEY:Ljava/lang/String;

.field private static SUPER_SNAP_RECORD_QUALITY:Ljava/lang/String;

.field private static SUPER_SNAP_SETTINGS_ACTIVITY_NAME:Ljava/lang/String;


# instance fields
.field private fingerSupersnapPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mRecordingQualityPref:Lcn/nubia/commonui/preference/ListPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "fingerprint_super_snap"

    sput-object v0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FINGERPRINT_SUPER_SNAP_KEY:Ljava/lang/String;

    .line 25
    const-string v0, "cn.nubia.fingerprintsupersnap"

    sput-object v0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FEATURE_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "record_quality"

    sput-object v0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->RECORD_QUALITY_KEY:Ljava/lang/String;

    .line 27
    const-string v0, "super_snap_record_quality"

    sput-object v0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->SUPER_SNAP_RECORD_QUALITY:Ljava/lang/String;

    .line 28
    const-string v0, "SuperSnapSettingsActivity"

    sput-object v0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->SUPER_SNAP_SETTINGS_ACTIVITY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateSuperSnapMode(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-object v2, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FINGERPRINT_SUPER_SNAP_KEY:Ljava/lang/String;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    const-string v0, "asas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FINGERPRINT_SUPER_SNAP_KEY:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    .line 35
    sget-object v1, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FINGERPRINT_SUPER_SNAP_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->fingerSupersnapPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 36
    sget-object v1, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->RECORD_QUALITY_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mRecordingQualityPref:Lcn/nubia/commonui/preference/ListPreference;

    .line 37
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mRecordingQualityPref:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->pm:Landroid/content/pm/PackageManager;

    .line 39
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->pm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->pm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FEATURE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->SUPER_SNAP_RECORD_QUALITY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "recordQuality":I
    const-string v1, "asas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordQuality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mRecordingQualityPref:Lcn/nubia/commonui/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 49
    return-void

    .line 44
    .end local v0    # "recordQuality":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->fingerSupersnapPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mRecordingQualityPref:Lcn/nubia/commonui/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->SUPER_SNAP_RECORD_QUALITY:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    const-string v0, "asas"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->SUPER_SNAP_RECORD_QUALITY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->fingerSupersnapPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->fingerSupersnapPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 76
    .local v0, "isChecked":Z
    invoke-direct {p0, v0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->updateSuperSnapMode(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SettingsFingerprintSupersnap"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v3, v1}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v0    # "isChecked":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 77
    .restart local v0    # "isChecked":Z
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->SUPER_SNAP_SETTINGS_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SettingsSupersnapFromLauncher"

    const-string v3, "From Launcher"

    invoke-static {v1, v2, v3}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->pm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->pm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FEATURE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->fingerSupersnapPreference:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->FINGERPRINT_SUPER_SNAP_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 67
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 68
    return-void

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SettingsSupersnapFromLauncher"

    const-string v3, "From Settings"

    invoke-static {v1, v2, v3}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
