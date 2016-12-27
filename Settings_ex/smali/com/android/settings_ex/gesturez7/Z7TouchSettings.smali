.class public Lcom/android/settings_ex/gesturez7/Z7TouchSettings;
.super Landroid/preference/PreferenceFragment;
.source "Z7TouchSettings.java"


# instance fields
.field ThreeCaptureScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

.field ThreeChangeAppPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

.field file:Ljava/io/File;

.field mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private mValidListener:Z

.field palmScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

.field wakeScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->mValidListener:Z

    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->setTotal(Z)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->updateZ7TouchSettingsSummary()V

    .line 78
    return-void
.end method

.method private setTotal(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->wakeScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->palmScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeCaptureScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeChangeAppPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 94
    return-void
.end method

.method private updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;
    .param p2, "type"    # I

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1, p2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const v0, 0x7f0c0a58

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setSummary(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const v0, 0x7f0c0a59

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateZ7TouchSettingsSummary()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->wakeScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->palmScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeCaptureScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeChangeAppPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 111
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tp/easy_wakeup_gesture"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->file:Ljava/io/File;

    .line 44
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "wake_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->wakeScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->wakeScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 47
    const-string v0, "palm_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->palmScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->palmScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 49
    const-string v0, "three_capture_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeCaptureScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeCaptureScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 51
    const-string v0, "three_finger_app"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeChangeAppPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->ThreeChangeAppPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 53
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "wake_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->removePreference(Ljava/lang/String;)V

    .line 56
    const-string v0, "palm_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->removePreference(Ljava/lang/String;)V

    .line 57
    const-string v0, "hanchuang"

    const-string v1, "not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->updateZ7TouchSettingsSummary()V

    .line 62
    return-void

    .line 59
    :cond_0
    const-string v0, "hanchuang"

    const-string v1, "haha, exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 131
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->initUI()V

    .line 73
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 67
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 116
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7TouchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :cond_0
    return-void
.end method
