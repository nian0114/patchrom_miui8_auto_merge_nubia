.class public Lcom/android/settings_ex/gesturez7/Z7MotionSettings;
.super Landroid/preference/PreferenceFragment;
.source "Z7MotionSettings.java"


# instance fields
.field isSupportLinearAccSensor:Z

.field mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private mValidListener:Z

.field motionClearPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

.field motionTurnPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

.field private pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mValidListener:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->isSupportLinearAccSensor:Z

    .line 85
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$1;-><init>(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7MotionSettings;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->showSingleDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7MotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->setTotal(Z)V

    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->setTotal(Z)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->updateMotionSettingsSummary()V

    .line 106
    return-void
.end method

.method private isSupportLinearAccSensor()Z
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 59
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setTotal(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->isSupportLinearAccSensor:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionTurnPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionClearPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 113
    return-void
.end method

.method private showSingleDialog(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 166
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c102e

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c102f

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$5;-><init>(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;-><init>(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;I)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 192
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 194
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 195
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 197
    :cond_0
    return-void
.end method

.method private updateMotionSettingsSummary()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionTurnPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionClearPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 83
    return-void
.end method

.method private updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;
    .param p2, "type"    # I

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const v0, 0x7f0c0a58

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setSummary(I)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const v0, 0x7f0c0a59

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->addPreferencesFromResource(I)V

    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->isSupportLinearAccSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->isSupportLinearAccSensor:Z

    .line 43
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 45
    const-string v0, "motion_turn"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionTurnPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionTurnPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 48
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->isSupportLinearAccSensor:Z

    if-nez v0, :cond_0

    .line 49
    const-string v0, "motion_turn"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->removePreference(Ljava/lang/String;)V

    .line 52
    :cond_0
    const-string v0, "motion_clear"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionClearPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->motionClearPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->updateMotionSettingsSummary()V

    .line 55
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->initUI()V

    .line 129
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 101
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 118
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    :cond_0
    return-void
.end method
