.class public Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SchPwrOnOffSettings.java"


# instance fields
.field private mDisableListeners:Z

.field private mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

.field private mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

.field private mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

.field private mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

.field private mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

.field private mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

.field private mSchedulePowerOff:Landroid/preference/nubia/SwitchPreference;

.field private mSchedulePowerOn:Landroid/preference/nubia/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->hideOrShowPowerOnPref(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->hideOrShowPowerOffPref(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOnTimeSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOffTimeSummary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOnDays()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOffDays()V

    return-void
.end method

.method private calculateRepeatDaysType(I)I
    .locals 2
    .param p1, "days"    # I

    .prologue
    .line 233
    const/16 v1, 0x7f

    if-ne p1, v1, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 242
    .local v0, "result":I
    :goto_0
    return v0

    .line 235
    .end local v0    # "result":I
    :cond_0
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_1

    .line 236
    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 237
    .end local v0    # "result":I
    :cond_1
    const/16 v1, 0x60

    if-ne p1, v1, :cond_2

    .line 238
    const/4 v0, 0x2

    .restart local v0    # "result":I
    goto :goto_0

    .line 240
    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x3

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private hideOrShowPowerOffPref(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "power_off_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->removePreference(Ljava/lang/String;)V

    .line 198
    const-string v0, "power_off_repeat_days"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideOrShowPowerOnPref(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "power_on_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->removePreference(Ljava/lang/String;)V

    .line 188
    const-string v0, "power_on_repeat_days"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 3

    .prologue
    .line 65
    const-string v0, "shedule_power_on"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOn:Landroid/preference/nubia/SwitchPreference;

    .line 66
    const-string v0, "shedule_power_off"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOff:Landroid/preference/nubia/SwitchPreference;

    .line 67
    const-string v0, "power_on_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    .line 68
    const-string v0, "power_off_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    .line 69
    const-string v0, "power_on_repeat_days"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

    .line 70
    const-string v0, "power_off_repeat_days"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOn:Landroid/preference/nubia/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-boolean v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOff:Landroid/preference/nubia/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-boolean v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOn:Landroid/preference/nubia/SwitchPreference;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$1;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/nubia/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOff:Landroid/preference/nubia/SwitchPreference;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$2;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/nubia/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mDisableListeners:Z

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setTime(II)V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setCallback(Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;)V

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mDisableListeners:Z

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setTime(II)V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setCallback(Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$6;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    :cond_3
    return-void
.end method

.method private updateAlarms()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    .line 205
    return-void
.end method

.method private updatePowerOffDays()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v1}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->getCoded()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->calculateRepeatDaysType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setValueIndex(I)V

    .line 229
    :cond_0
    return-void
.end method

.method private updatePowerOffTimeSummary()V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v3, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v4, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings_ex/schpwronoff/Alarms;->formatTime(Landroid/content/Context;IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    return-void
.end method

.method private updatePowerOnDays()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v1}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->getCoded()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->calculateRepeatDaysType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setValueIndex(I)V

    .line 222
    :cond_0
    return-void
.end method

.method private updatePowerOnTimeSummary()V
    .locals 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnTime:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v3, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v4, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings_ex/schpwronoff/Alarms;->formatTime(Landroid/content/Context;IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->SCHEDULE_POWER_ON_OFF:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V

    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->initPreferences()V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOn:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->hideOrShowPowerOnPref(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mSchedulePowerOff:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->hideOrShowPowerOffPref(Z)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOnTimeSummary()V

    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOffTimeSummary()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOnDays()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOffDays()V

    .line 62
    return-void
.end method
