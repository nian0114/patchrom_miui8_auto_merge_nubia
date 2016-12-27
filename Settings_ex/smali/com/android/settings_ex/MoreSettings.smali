.class public Lcom/android/settings_ex/MoreSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MoreSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/MoreSettings$NoHomeDialogFragment;
    }
.end annotation


# static fields
.field private static sShowNoHomeNotice:Z


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mLocationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/MoreSettings;->sShowNoHomeNotice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/MoreSettings;->mBatteryPresent:Z

    .line 47
    new-instance v0, Lcom/android/settings_ex/MoreSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MoreSettings$1;-><init>(Lcom/android/settings_ex/MoreSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/MoreSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MoreSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MoreSettings;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/settings_ex/MoreSettings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/MoreSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MoreSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings_ex/MoreSettings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MoreSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MoreSettings;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->upDateBatteryPref()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MoreSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MoreSettings;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->updateLocationSettingPref()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/MoreSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MoreSettings;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->updateUI()V

    return-void
.end method

.method private upDateBatteryPref()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/settings_ex/MoreSettings;->mBatteryPresent:Z

    if-nez v0, :cond_0

    .line 120
    :cond_0
    return-void
.end method

.method private upDatePrivacyPref()V
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, "privacy_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/MoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 250
    .local v0, "privacySettings":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 251
    const-string v1, "com.android.settings.ZMasterClear"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 252
    const v1, 0x7f0c046b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 255
    .end local v0    # "privacySettings":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private updateLocationSettingPref()V
    .locals 5

    .prologue
    .line 89
    const-string v2, "location_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/MoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 90
    .local v0, "locationSettingsPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "mode":I
    if-eqz v0, :cond_0

    .line 93
    if-eqz v1, :cond_1

    .line 94
    const v2, 0x7f0c0a58

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const v2, 0x7f0c0a59

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updatePrintSettingsPref(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.print"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, "hasPrintingSupport":Z
    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/MoreSettings;->removePreference(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method private updateProfileState()V
    .locals 7

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v2

    .line 102
    .local v2, "mProfileManager":Lztemt/profile/ProfileManager;
    sget-object v6, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v2, v6}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v3

    check-cast v3, Lztemt/profile/ProfilePowersavingImpl;

    .line 104
    .local v3, "mProfilePowersavingImpl":Lztemt/profile/ProfilePowersavingImpl;
    invoke-virtual {v3}, Lztemt/profile/ProfilePowersavingImpl;->getCpuLimitEnable()Z

    move-result v0

    .line 105
    .local v0, "cpuLimit":Z
    invoke-virtual {v3}, Lztemt/profile/ProfilePowersavingImpl;->getScreenPowersaveTagEnable()Z

    move-result v4

    .line 106
    .local v4, "screenPowersave":Z
    invoke-virtual {v3}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v5

    .line 107
    .local v5, "shutdownAllNet":Z
    invoke-virtual {v3}, Lztemt/profile/ProfilePowersavingImpl;->getHapticFeedbackTagEnable()Z

    move-result v1

    .line 109
    .local v1, "hapticFeedback":Z
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/fuelgauge/Utils;->isProfileServiceWork(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/fuelgauge/Utils;->startProfileService(Landroid/content/Context;)V

    .line 113
    :cond_1
    return-void
.end method

.method private updateUI()V
    .locals 6

    .prologue
    .line 160
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/MoreSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 161
    .local v1, "um":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v3, "show"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    .local v0, "showDev":Z
    if-eqz v0, :cond_0

    const-string v2, "no_debugging_features"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    const-string v2, "development_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/MoreSettings;->removePreference(Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void
.end method

.method private updateUserSettingsPref(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/MoreSettings;->removePreference(Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/MoreSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 71
    const-string v1, "home_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/MoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 73
    .local v0, "homeSettingsPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    const-string v1, "user_settings"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/MoreSettings;->updateUserSettingsPref(Ljava/lang/String;)V

    .line 76
    const-string v1, "print_settings"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/MoreSettings;->updatePrintSettingsPref(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->upDateBatteryPref()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->upDatePrivacyPref()V

    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->updateUI()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->updateProfileState()V

    .line 81
    new-instance v1, Lcom/android/settings_ex/MoreSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/MoreSettings$2;-><init>(Lcom/android/settings_ex/MoreSettings;)V

    iput-object v1, p0, Lcom/android/settings_ex/MoreSettings;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MoreSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MoreSettings;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 157
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/MoreSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    new-instance v1, Lcom/android/settings_ex/MoreSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/MoreSettings$3;-><init>(Lcom/android/settings_ex/MoreSettings;)V

    iput-object v1, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/MoreSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ex/MoreSettings;->updateLocationSettingPref()V

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/MoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/MoreSettings;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method
