.class public Lcom/android/settings_ex/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mWaitForWifiStateChange:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/nubia/CheckBoxPreference;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 49
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings_ex/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 85
    invoke-virtual {p2}, Landroid/preference/nubia/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setPersistent(Z)V

    .line 88
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiApEnabler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiApEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method private enableWifiSwitch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 111
    .local v0, "isAirplaneMode":Z
    :cond_0
    if-nez v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleWifiApStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 240
    if-ne p2, v1, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const v1, 0x7f0c0270

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 245
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 247
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const v1, 0x7f0c026f

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 253
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 163
    const/4 v11, 0x0

    .line 164
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 166
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 167
    check-cast v8, Ljava/lang/String;

    .line 168
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 169
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 168
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 172
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 173
    check-cast v8, Ljava/lang/String;

    .line 174
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 175
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 174
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 172
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 179
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 180
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 181
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 185
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 182
    :cond_7
    if-eqz v10, :cond_6

    .line 183
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const v13, 0x7f0c026f

    invoke-virtual {v12, v13}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 102
    return-void
.end method

.method public setQuickClickAgent(Lcom/android/settings_ex/QuickClickAgent;)V
    .locals 0
    .param p1, "q"    # Lcom/android/settings_ex/QuickClickAgent;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    .line 264
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 120
    const/4 v0, 0x0

    .line 125
    .local v0, "wifiSavedState":I
    if-nez p1, :cond_0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 137
    :goto_0
    if-ne v0, v3, :cond_0

    .line 138
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/settings_exlib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :goto_1
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const v2, 0x7f0c026f

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10403ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method
