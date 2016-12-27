.class public Lcom/android/settings_ex/profile/PocketSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PocketSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mAvoidMistouchPref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

.field private mMaxringVibratePref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

.field private mPocketEnableObserver:Landroid/database/ContentObserver;

.field private mProfileHelper:Lztemt/profilehelper/ProfileHelper;

.field private mProfileManager:Lztemt/profile/ProfileManager;

.field private mProfilePocketImpl:Lztemt/profile/ProfilePocketImpl;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mValidListener:Z

    .line 107
    new-instance v0, Lcom/android/settings_ex/profile/PocketSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/PocketSettingsFragment$1;-><init>(Lcom/android/settings_ex/profile/PocketSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mPocketEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profile/PocketSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/PocketSettingsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->updatePocketSettings()V

    return-void
.end method

.method private initPocketSettingSwitch()V
    .locals 4

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 152
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-nez v2, :cond_0

    .line 154
    const-string v2, "PocketSettingsFragment"

    const-string v3, "mSwitch is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    sget-object v3, Lztemt/profilehelper/ProfileHelper$Scenario;->POCKET:Lztemt/profilehelper/ProfileHelper$Scenario;

    invoke-virtual {v2, v3}, Lztemt/profilehelper/ProfileHelper;->getProfileEnable(Lztemt/profilehelper/ProfileHelper$Scenario;)Z

    move-result v1

    .line 159
    .local v1, "isPocketProfileEnable":Z
    iget-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setClickable(Z)V

    .line 162
    .end local v1    # "isPocketProfileEnable":Z
    :cond_1
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "PocketSettingsFragment"

    const-string v1, "initUI() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "avoid_mistouch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mAvoidMistouchPref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    .line 123
    const-string v0, "maxring_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mMaxringVibratePref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->updateUI()V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mAvoidMistouchPref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mMaxringVibratePref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    return-void
.end method

.method private updatePocketSettings()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfilePocketImpl:Lztemt/profile/ProfilePocketImpl;

    invoke-virtual {v1}, Lztemt/profile/ProfilePocketImpl;->getEnable()Z

    move-result v0

    .line 140
    .local v0, "isPocketEnable":Z
    iget-object v1, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mAvoidMistouchPref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mMaxringVibratePref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->setEnabled(Z)V

    .line 142
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mAvoidMistouchPref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfilePocketImpl:Lztemt/profile/ProfilePocketImpl;

    invoke-virtual {v1}, Lztemt/profile/ProfilePocketImpl;->getAvoidMistouchEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mMaxringVibratePref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfilePocketImpl:Lztemt/profile/ProfilePocketImpl;

    invoke-virtual {v1}, Lztemt/profile/ProfilePocketImpl;->getMaxRingVibrateEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->setChecked(Z)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->updatePocketSettings()V

    .line 136
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->initPocketSettingSwitch()V

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POCKET:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v0

    check-cast v0, Lztemt/profile/ProfilePocketImpl;

    iput-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfilePocketImpl:Lztemt/profile/ProfilePocketImpl;

    .line 102
    new-instance v0, Lztemt/profilehelper/ProfileHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lztemt/profilehelper/ProfileHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->initUI()V

    .line 105
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 202
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 203
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mPocketEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    iget-boolean v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mValidListener:Z

    .line 184
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 211
    .local v3, "value":Z
    const-string v4, "avoid_mistouch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mAvoidMistouchPref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 214
    .local v0, "isAvoidMistouchChecked":Z
    iget-object v4, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfilePocketImpl:Lztemt/profile/ProfilePocketImpl;

    invoke-virtual {v4, v3}, Lztemt/profile/ProfilePocketImpl;->setAvoidMistouchEnable(Z)V

    .line 222
    .end local v0    # "isAvoidMistouchChecked":Z
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 216
    :cond_1
    const-string v4, "maxring_vibrate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mMaxringVibratePref:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->isChecked()Z

    move-result v1

    .line 219
    .local v1, "isMaxringVibrateChecked":Z
    iget-object v4, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfilePocketImpl:Lztemt/profile/ProfilePocketImpl;

    invoke-virtual {v4, v3}, Lztemt/profile/ProfilePocketImpl;->setMaxRingVibrateEnable(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/PocketSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_Pocket_Profile_isenable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mPocketEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    iget-boolean v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mValidListener:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 172
    iput-boolean v3, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mValidListener:Z

    .line 174
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 2
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 189
    if-eqz p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lztemt/profilehelper/ProfileHelper;->setProfilePocketEnable(Z)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/PocketSettingsFragment;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lztemt/profilehelper/ProfileHelper;->setProfilePocketEnable(Z)V

    goto :goto_0
.end method
