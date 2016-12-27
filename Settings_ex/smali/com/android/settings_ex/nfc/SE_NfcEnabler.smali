.class public Lcom/android/settings_ex/nfc/SE_NfcEnabler;
.super Ljava/lang/Object;
.source "SE_NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private mBeamDisallowed:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private final mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

.field public quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;Landroid/preference/PreferenceScreen;Lcn/nubia/commonui/preference/ListPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/nubia/CheckBoxPreference;
    .param p3, "androidBeam"    # Landroid/preference/PreferenceScreen;
    .param p4, "switch_se"    # Lcn/nubia/commonui/preference/ListPreference;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings_ex/nfc/SE_NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/SE_NfcEnabler$1;-><init>(Lcom/android/settings_ex/nfc/SE_NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 67
    iput-object p3, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 68
    iput-object p4, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    .line 69
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mBeamDisallowed:Z

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mBeamDisallowed:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 84
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 85
    new-instance v0, Lcom/android/settings_ex/QuickClickAgent;

    invoke-direct {v0}, Lcom/android/settings_ex/QuickClickAgent;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    new-instance v1, Lcom/android/settings_ex/nfc/SE_NfcEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/nfc/SE_NfcEnabler$2;-><init>(Lcom/android/settings_ex/nfc/SE_NfcEnabler;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuickClickAgent;->setClickedTodoListener(Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nfc/SE_NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/SE_NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/SE_NfcEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/SE_NfcEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->nfcPreferenceChange(Z)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c0260

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v1, 0x7f0c0f7c

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iget-boolean v3, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mBeamDisallowed:Z

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c025e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 154
    :goto_1
    const-string v0, "1"

    const-string v1, "persist.sys.switch_se"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v1, 0x7f0c0f78

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c025f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 156
    :cond_3
    const-string v0, "2"

    const-string v1, "persist.sys.switch_se"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v1, 0x7f0c0f79

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 168
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private nfcPreferenceChange(Z)V
    .locals 1
    .param p1, "desiredState"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 118
    .local v0, "desiredState":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/QuickClickAgent;->onSwitchChanged(Z)V

    .line 120
    const/4 v1, 0x0

    return v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "dww"

    const-string v1, "resume() ................."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->handleNfcStateChanged(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
