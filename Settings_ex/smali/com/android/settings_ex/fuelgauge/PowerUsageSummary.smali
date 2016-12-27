.class public Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"


# instance fields
.field private batteryUserRow:Landroid/preference/Preference;

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryStatus:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

.field private mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

.field private mPowerSaveControl:Landroid/preference/Preference;

.field private mPowerSaveMode:Landroid/preference/Preference;

.field private mProfileManager:Lztemt/profile/ProfileManager;

.field private mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

.field private mShowAsPercentage:Landroid/preference/nubia/CheckBoxPreference;

.field private mSpeedUpPreference:Landroid/preference/Preference;

.field private mStatsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 599
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updateUI()V

    return-void
.end method

.method private addBatteryUserInfo()V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->batteryUserRow:Landroid/preference/Preference;

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->batteryUserRow:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->batteryUserRow:Landroid/preference/Preference;

    const v1, 0x7f0c0e7e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->batteryUserRow:Landroid/preference/Preference;

    const v1, 0x7f0c0e7f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->batteryUserRow:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    return-void
.end method

.method private gotoSpeedUpMode()V
    .locals 4

    .prologue
    .line 628
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 629
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.security2"

    const-string v3, "cn.nubia.security.powermanage.ui.GameModeActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSecurityAppExist()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "cn.nubia.security2"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PowerUsageSummary"

    const-string v4, "isSecurityAppExist"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePowerSaveSummary()V
    .locals 8

    .prologue
    .line 517
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveControl:Landroid/preference/Preference;

    if-eqz v6, :cond_7

    .line 518
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v7, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v6, v7}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v6

    check-cast v6, Lztemt/profile/ProfilePowersavingImpl;

    iput-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    .line 520
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v6}, Lztemt/profile/ProfilePowersavingImpl;->getCpuLimitEnable()Z

    move-result v0

    .line 521
    .local v0, "cpuLimit":Z
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v6}, Lztemt/profile/ProfilePowersavingImpl;->getScreenPowersaveTagEnable()Z

    move-result v3

    .line 522
    .local v3, "screenPowersave":Z
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v6}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v5

    .line 523
    .local v5, "shutdownAllNet":Z
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v6}, Lztemt/profile/ProfilePowersavingImpl;->getHapticFeedbackTagEnable()Z

    move-result v1

    .line 524
    .local v1, "hapticFeedback":Z
    const/4 v4, 0x0

    .line 525
    .local v4, "shouldActiveProfile":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 526
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    .line 527
    const/4 v4, 0x1

    .line 528
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0b52

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    :cond_0
    if-eqz v3, :cond_2

    .line 531
    if-eqz v4, :cond_1

    .line 532
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0b54

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const/4 v4, 0x1

    .line 537
    :cond_2
    if-eqz v5, :cond_4

    .line 538
    if-eqz v4, :cond_3

    .line 539
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    :cond_3
    const/4 v4, 0x1

    .line 542
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0b56

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    :cond_4
    if-eqz v1, :cond_6

    .line 545
    if-eqz v4, :cond_5

    .line 546
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    :cond_5
    const/4 v4, 0x1

    .line 549
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0b58

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :cond_6
    if-eqz v4, :cond_9

    .line 553
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v7, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v6, v7}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/fuelgauge/Utils;->isProfileServiceWork(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 554
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings_ex/fuelgauge/Utils;->broadcastActiveProfile(ZLandroid/content/Context;)V

    .line 558
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveControl:Landroid/preference/Preference;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 564
    .end local v0    # "cpuLimit":Z
    .end local v1    # "hapticFeedback":Z
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "screenPowersave":Z
    .end local v4    # "shouldActiveProfile":Z
    .end local v5    # "shutdownAllNet":Z
    :cond_7
    :goto_1
    return-void

    .line 556
    .restart local v0    # "cpuLimit":Z
    .restart local v1    # "hapticFeedback":Z
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "screenPowersave":Z
    .restart local v4    # "shouldActiveProfile":Z
    .restart local v5    # "shutdownAllNet":Z
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v7, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v6, v7}, Lztemt/profile/ProfileManager;->setActiveProfile(Lztemt/profile/Profile$Scenario;)V

    goto :goto_0

    .line 560
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v7, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v6, v7}, Lztemt/profile/ProfileManager;->setDeactiveProfile(Lztemt/profile/Profile$Scenario;)V

    .line 561
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveControl:Landroid/preference/Preference;

    const v7, 0x7f0c0c07

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->isLowBatteryModeActivated()Z

    move-result v0

    .line 158
    .local v0, "isOpen":Z
    if-eqz v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    const v2, 0x7f0c0e79

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 169
    .end local v0    # "isOpen":Z
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0    # "isOpen":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->isSmartModeActivated()Z

    move-result v0

    .line 162
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->isSmartModeEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    const v2, 0x7f0c0e76

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    const v2, 0x7f0c0c07

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 299
    const v0, 0x7f0c0951

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 133
    new-instance v0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-direct {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    .line 134
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 135
    const-string v0, "battery_history"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .line 136
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "power_show_as_percentage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mShowAsPercentage:Landroid/preference/nubia/CheckBoxPreference;

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "power_profile"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "power_control"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveControl:Landroid/preference/Preference;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mProfileManager:Lztemt/profile/ProfileManager;

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "speed_up_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mSpeedUpPreference:Landroid/preference/Preference;

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 294
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 295
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 215
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 319
    :goto_0
    return v0

    .line 306
    :pswitch_0
    iget v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 307
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 311
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 309
    :cond_0
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 314
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 316
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->unbind()V

    .line 206
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 231
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0b50

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 234
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->batteryUserRow:Landroid/preference/Preference;

    if-ne v1, p2, :cond_1

    .line 235
    const-string v1, "PowerUsageSummary"

    const-string v3, "show as batteryUserRow logic"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.security2"

    const-string v3, "cn.nubia.security.powermanage.ui.PowerConsumptionActivity"

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mShowAsPercentage:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 246
    const-string v1, "PowerUsageSummary"

    const-string v3, "show as percentage logic"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_show_as_percentage"

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mShowAsPercentage:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveControl:Landroid/preference/Preference;

    if-ne p2, v1, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 252
    .restart local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0e78

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 255
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mSpeedUpPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_4

    .line 256
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->gotoSpeedUpMode()V

    .line 258
    :cond_4
    instance-of v1, p2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    if-eqz v1, :cond_6

    .line 259
    const-string v1, "PowerUsageSummary"

    const-string v3, "show as BatteryHistoryPreference"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 262
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "stats"

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "broadcast"

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 267
    .restart local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06bb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 278
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_2
    return v1

    .line 240
    :catch_0
    move-exception v7

    .line 241
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "PowerUsageSummary"

    const-string v3, "ActivityNotFoundException"

    invoke-static {v1, v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 247
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 271
    :cond_6
    instance-of v1, p2, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    if-nez v1, :cond_7

    .line 272
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    move-object v10, p2

    .line 274
    check-cast v10, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 275
    .local v10, "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v10}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    move-result-object v8

    .line 276
    .local v8, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v8, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;Z)V

    .line 278
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x1

    .line 172
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onResume()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tmp_bat_history.bin"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mShowAsPercentage:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_show_as_percentage"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mLowPowerModeProxy:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->bindService(Landroid/content/Context;Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;)Z

    .line 198
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onStart()V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 154
    return-void
.end method

.method protected refreshStats()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 438
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 439
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSecurityAppExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mShowAsPercentage:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 441
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 442
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addBatteryUserInfo()V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mShowAsPercentage:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setOrder(I)V

    .line 445
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveControl:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 446
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveMode:Landroid/preference/Preference;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updatePowerSaveSummary()V

    .line 448
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "cn.nubia.security2"

    const-string v3, "cn.nubia.security.powermanage.ui.GameModeActivity"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/Utils;->isActivityExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mSpeedUpPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 450
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mSpeedUpPreference:Landroid/preference/Preference;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerSaveControl:Landroid/preference/Preference;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 453
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06a1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "batterySummary":Ljava/lang/String;
    new-instance v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .line 460
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 461
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 462
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)V

    .line 513
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 514
    return-void
.end method
