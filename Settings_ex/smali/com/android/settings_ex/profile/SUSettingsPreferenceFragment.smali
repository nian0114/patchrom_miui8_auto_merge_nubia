.class public Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SUSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$SingleUiModeReceiver;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mSingleUiModeIntentFilter:Landroid/content/IntentFilter;

.field private mSingleUiModeReceiver:Landroid/content/BroadcastReceiver;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mValidListener:Z

    .line 54
    new-instance v0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;-><init>(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->updateSwitchSummary(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private enableSingleUiMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getSingleUiMode()Z

    move-result v0

    .line 127
    .local v0, "oldEnable":Z
    if-eq v0, p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "single_ui_on_off"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "nubia_edge_hold_hold"

    invoke-static {v2, v4, v3}, Lcom/android/settings_ex/edge/EdgeUtils;->getIntdbValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "state":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "nubia_edge_hold_hold"

    invoke-static {v2, v4, v3}, Lcom/android/settings_ex/edge/EdgeUtils;->updateValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    .end local v1    # "state":I
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 128
    goto :goto_0
.end method

.method private getSingleUiMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_on_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isWfdNeedSingleToast()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_wfd_single_ui_policy"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateSwitchSummary(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const v1, 0x7f0c0cb7

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const v1, 0x7f0c0cb8

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 99
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    instance-of v2, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v2, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getSingleUiMode()Z

    move-result v1

    .line 101
    .local v1, "ischecked":Z
    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 102
    invoke-direct {p0, v1}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->updateSwitchSummary(Z)V

    .line 104
    .end local v1    # "ischecked":Z
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 71
    new-instance v1, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$SingleUiModeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$SingleUiModeReceiver;-><init>(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;)V

    iput-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleUiModeReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleUiModeIntentFilter:Landroid/content/IntentFilter;

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleUiModeIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "single_ui_mode_switch"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "single_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getSingleUiMode()Z

    move-result v0

    .line 77
    .local v0, "isSingleMode":Z
    iget-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 78
    invoke-direct {p0, v0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->updateSwitchSummary(Z)V

    .line 79
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleUiModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v3, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 109
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 110
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->isWfdNeedSingleToast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0ea5

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 113
    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->enableSingleUiMode(Z)V

    .line 122
    .end local v0    # "isChecked":Z
    :goto_0
    return v1

    .line 117
    .restart local v0    # "isChecked":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->enableSingleUiMode(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 120
    invoke-direct {p0, v0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->updateSwitchSummary(Z)V

    .end local v0    # "isChecked":Z
    :cond_1
    move v1, v2

    .line 122
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleUiModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleUiModeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method
