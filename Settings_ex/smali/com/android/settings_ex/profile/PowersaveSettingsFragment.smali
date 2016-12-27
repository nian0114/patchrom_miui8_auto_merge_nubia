.class public Lcom/android/settings_ex/profile/PowersaveSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PowersaveSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/PowersaveSettingsFragment$2;,
        Lcom/android/settings_ex/profile/PowersaveSettingsFragment$ProfilePowersaveReceiver;
    }
.end annotation


# static fields
.field private static MAX_BATTERY_LIMIT:I

.field private static MIN_BATTERY_LIMIT:I

.field private static SEEK_BAR_RANGE:I


# instance fields
.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mPowersaveFilter:Landroid/content/IntentFilter;

.field private mPowersaveReceiver:Landroid/content/BroadcastReceiver;

.field private mProfileHelper:Lztemt/profilehelper/ProfileHelper;

.field private mProfileManager:Lztemt/profile/ProfileManager;

.field private mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

.field private mRestrictPref:Landroid/preference/nubia/CheckBoxPreference;

.field private mScreenSavePref:Landroid/preference/nubia/CheckBoxPreference;

.field private mTurnOffConnectPref:Landroid/preference/nubia/CheckBoxPreference;

.field private mTurnOffHapticPref:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x1e

    sput v0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->MAX_BATTERY_LIMIT:I

    .line 78
    const/4 v0, 0x5

    sput v0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->MIN_BATTERY_LIMIT:I

    .line 79
    const/16 v0, 0x2710

    sput v0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->SEEK_BAR_RANGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 181
    new-instance v0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;-><init>(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 304
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/PowersaveSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->updateUIifNeed(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/PowersaveSettingsFragment;
    .param p1, "x1"    # Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->updatePowersaveState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "restrict_cpu"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mRestrictPref:Landroid/preference/nubia/CheckBoxPreference;

    .line 149
    const-string v0, "screen_save"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mScreenSavePref:Landroid/preference/nubia/CheckBoxPreference;

    .line 150
    const-string v0, "turnoff_all_connection"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffConnectPref:Landroid/preference/nubia/CheckBoxPreference;

    .line 151
    const-string v0, "turnoff_haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffHapticPref:Landroid/preference/nubia/CheckBoxPreference;

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mRestrictPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mScreenSavePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffConnectPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffHapticPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->updateUIifNeed(Z)V

    .line 158
    return-void
.end method

.method private updatePowersaveState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V
    .locals 4
    .param p1, "type"    # Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v0, "PowersaveSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePowersaveState type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$2;->$SwitchMap$ztemt$profile$ProfilePowersavingSettings$PowersavingArgsType:[I

    invoke-virtual {p1}, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mScreenSavePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mScreenSavePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffConnectPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffConnectPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 355
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffHapticPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffHapticPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateUIifNeed(Z)V
    .locals 6
    .param p1, "need"    # Z

    .prologue
    .line 161
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v4}, Lztemt/profile/ProfilePowersavingImpl;->getCpuLimitEnable()Z

    move-result v0

    .line 162
    .local v0, "cpuLimit":Z
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v4}, Lztemt/profile/ProfilePowersavingImpl;->getScreenPowersaveTagEnable()Z

    move-result v2

    .line 163
    .local v2, "screenPowersave":Z
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v4}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v3

    .line 164
    .local v3, "shutdownAllNet":Z
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v4}, Lztemt/profile/ProfilePowersavingImpl;->getHapticFeedbackTagEnable()Z

    move-result v1

    .line 165
    .local v1, "hapticFeedback":Z
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v5, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v4, v5}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v5, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v4, v5}, Lztemt/profile/ProfileManager;->setActiveProfile(Lztemt/profile/Profile$Scenario;)V

    .line 173
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 174
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mRestrictPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mScreenSavePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 176
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffConnectPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 177
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffHapticPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 179
    :cond_2
    return-void

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v5, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v4, v5}, Lztemt/profile/ProfileManager;->setDeactiveProfile(Lztemt/profile/Profile$Scenario;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v2, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v1

    check-cast v1, Lztemt/profile/ProfilePowersavingImpl;

    iput-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    .line 121
    new-instance v1, Lztemt/profilehelper/ProfileHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lztemt/profilehelper/ProfileHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    .line 122
    new-instance v1, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$ProfilePowersaveReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$ProfilePowersaveReceiver;-><init>(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;)V

    iput-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mPowersaveReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mPowersaveFilter:Landroid/content/IntentFilter;

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mPowersaveFilter:Landroid/content/IntentFilter;

    const-string v2, "ztemt.Profile.ACTION_PROFILE_POWERSAVING_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mPowersaveFilter:Landroid/content/IntentFilter;

    const-string v2, "ztemt.profile.ACTION_MODIFIED_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mPowersaveReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mPowersaveFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->initUI()V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "IsOrientationChange":Z
    const-string v1, "orientation_change"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    const-string v1, "battery_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 141
    .end local v0    # "IsOrientationChange":Z
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mPowersaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mRestrictPref:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lztemt/profile/ProfilePowersavingImpl;->setCpuLimitEnable(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->setActiveProfile(Lztemt/profile/Profile$Scenario;)V

    .line 218
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->saveOriginalCpuLimitState()V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->setDefaultCpuLimitState()V

    .line 285
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->restoreToOriginalCpuLimitState()V

    goto :goto_0

    .line 225
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mScreenSavePref:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->setActiveProfile(Lztemt/profile/Profile$Scenario;)V

    .line 230
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lztemt/profile/ProfilePowersavingImpl;->setScreenPowersaveTagEnable(Z)V

    .line 231
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->saveOriginalScreenPowersaveState()V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->setDefaultScreenPowersaveState()V

    goto :goto_0

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->restoreToOriginalScreenPowersaveState()V

    goto :goto_0

    .line 238
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffConnectPref:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->setActiveProfile(Lztemt/profile/Profile$Scenario;)V

    .line 242
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lztemt/profile/ProfilePowersavingImpl;->setShutdownAllConnectionEnable(Z)V

    .line 244
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->saveOriginalConnectionState()V

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->setDefaultAllConnectionState()V

    goto :goto_0

    .line 264
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->restoreToOriginalAllConnectionState()V

    goto :goto_0

    .line 266
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mTurnOffHapticPref:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->setActiveProfile(Lztemt/profile/Profile$Scenario;)V

    .line 271
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lztemt/profile/ProfilePowersavingImpl;->setHapticFeedbackTagEnable(Z)V

    .line 273
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->saveOriginalHapticState()V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->setDefaultHapticState()V

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setHapticFeedbackModified(Z)V

    goto/16 :goto_0

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->restoreToOriginalHapticFeedbackState()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_Profile_powersaving_low_power_saving_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->updateUIifNeed(Z)V

    .line 204
    return-void
.end method
