.class public Lcom/android/settings_ex/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

.field public quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeCheckBoxPreference"    # Landroid/preference/nubia/CheckBoxPreference;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/settings_ex/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/AirplaneModeEnabler$1;-><init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/android/settings_ex/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/AirplaneModeEnabler$2;-><init>(Lcom/android/settings_ex/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/nubia/CheckBoxPreference;->setPersistent(Z)V

    .line 73
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 76
    new-instance v0, Lcom/android/settings_ex/QuickClickAgent;

    invoke-direct {v0}, Lcom/android/settings_ex/QuickClickAgent;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    new-instance v1, Lcom/android/settings_ex/AirplaneModeEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/AirplaneModeEnabler$3;-><init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuickClickAgent;->setClickedTodoListener(Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/AirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/AirplaneModeEnabler;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/AirplaneModeEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/AirplaneModeEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AirplaneModeEnabler;->airplaneSwitchChange(Z)V

    return-void
.end method

.method private airplaneSwitchChange(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 145
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0xb1

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_exlib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 133
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 121
    return-void

    .line 112
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 139
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 140
    .local v0, "isChecked":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuickClickAgent;->onSwitchChanged(Z)V

    .line 141
    const/4 v1, 0x1

    return v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_exlib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 159
    invoke-direct {p0, p2}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method
