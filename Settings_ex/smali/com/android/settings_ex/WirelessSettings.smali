.class public Lcom/android/settings_ex/WirelessSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private final KEY_ACCELERATIONSPEED_SWITCH_ENABLE:Ljava/lang/String;

.field private final KEY_TURBOACCELERATION_PREFERENCE:Ljava/lang/String;

.field private androidBeam:Landroid/preference/PreferenceScreen;

.field private isUserChangeAnt:Z

.field private mAPChangeIntentFilter:Landroid/content/IntentFilter;

.field private final mAPChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mHandler:Landroid/os/Handler;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

.field private mNfcStateReceiver:Landroid/content/BroadcastReceiver;

.field private mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSE_SimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

.field private mSmsApplicationPre:Landroid/preference/Preference;

.field private mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mWifiChangeIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDualAntBtn:Landroid/widget/RadioButton;

.field private mWifiDualAntView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSingleAntBtn:Landroid/widget/RadioButton;

.field private mWifiSingleAntView:Landroid/view/View;

.field private mWifiStatePreference:Landroid/preference/Preference;

.field private restartTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 671
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/WirelessSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 159
    const-string v0, "turbo_acceleration"

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->KEY_TURBOACCELERATION_PREFERENCE:Ljava/lang/String;

    .line 160
    const-string v0, "NBRouteTurboState"

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->KEY_ACCELERATIONSPEED_SWITCH_ENABLE:Ljava/lang/String;

    .line 783
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$3;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSE_SimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 797
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$4;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    .line 959
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$5;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mHandler:Landroid/os/Handler;

    .line 1100
    iput v1, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    .line 1101
    iput-boolean v1, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    .line 1104
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$6;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1141
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$7;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAPChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/WirelessSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->isNX531JProject()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/WirelessSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings_ex/WirelessSettings;->wifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/WirelessSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings_ex/WirelessSettings;->apStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->setEntryAndValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/WirelessSettings;)Lcn/nubia/commonui/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/WirelessSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/WirelessSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/settings_ex/WirelessSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/WirelessSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->setWifiAntToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateWifiAntState()V

    return-void
.end method

.method private apStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1153
    packed-switch p1, :pswitch_data_0

    .line 1176
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1155
    :pswitch_1
    const-string v0, "GG"

    const-string v1, "apStateChanged WIFI_AP_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    if-eqz v0, :cond_0

    .line 1157
    const-string v0, "GG"

    const-string v1, "-- restarting AP!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    .line 1162
    :pswitch_2
    const-string v0, "GG"

    const-string v1, "apStateChanged WIFI_AP_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    if-eqz v0, :cond_0

    .line 1164
    iget v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    .line 1165
    const-string v0, "GG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartTimes-- =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    if-lez v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    .line 1169
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    goto :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private createSelectDialog()V
    .locals 7

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 938
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 939
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 941
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0401e3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 943
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f120430

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    .line 944
    const v4, 0x7f120432

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    .line 945
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    const v4, 0x7f12042f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntView:Landroid/view/View;

    .line 948
    const v4, 0x7f120431

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntView:Landroid/view/View;

    .line 949
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateWifiAntState()V

    .line 952
    const v4, 0x104000a

    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 953
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 954
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    .line 955
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 956
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 957
    return-void
.end method

.method private getWifiAntStateInt()I
    .locals 3

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_state_1x1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWifiDualAntState()I
    .locals 4

    .prologue
    .line 931
    const-string v1, "wifi.ant.2x2.set"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "state":Ljava/lang/String;
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State2x2 wifi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getWifiSingleAntState()I
    .locals 4

    .prologue
    .line 925
    const-string v1, "wifi.ant.1x1.set"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "state":Ljava/lang/String;
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State1x1 wifi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private isNX531JProject()Z
    .locals 2

    .prologue
    .line 1097
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX531J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isSim1HasSe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 846
    const-string v3, "isSimHasSe............."

    invoke-direct {p0, v3}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 848
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getSecureElementList()[I

    move-result-object v0

    .line 854
    .local v0, "elementList":[I
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 855
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elementList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ========== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 857
    aget v3, v0, v1

    const/16 v4, 0xf3

    if-ne v3, v4, :cond_1

    .line 858
    const/4 v2, 0x1

    .line 862
    .end local v0    # "elementList":[I
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 855
    .restart local v0    # "elementList":[I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isSim1Ready()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 830
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "prop":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prop ======= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 832
    if-eqz v0, :cond_1

    const-string v4, ""

    if-eq v0, v4, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "s":[Ljava/lang/String;
    const-string v4, "READY"

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 842
    .end local v1    # "s":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 838
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 842
    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method private removeBackupAndCloud(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p1, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 613
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 615
    .local v0, "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v2, "cn.nubia.databackup"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cn.nubia.flycow"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.baidu.xcloud"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 621
    .end local v0    # "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    return-void
.end method

.method private setEntryAndValues()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 866
    const-string v2, "WirelessSettings"

    const-string v3, "setEntryAndValues()................."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "se_entries":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "se_values":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->isSim1Ready()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->isSim1HasSe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 872
    const-string v2, "sim1 is ready and hasSe.............."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 873
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 874
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 876
    const-string v2, "0"

    const-string v3, "persist.sys.sim_se"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableCardEmulatorF3()V

    .line 878
    const-string v2, "persist.sys.switch_se"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v2, "persist.sys.sim_se"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const-string v2, "sim1 is not ready or has not se..........."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 884
    const-string v2, "1"

    const-string v3, "persist.sys.switch_se"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 885
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 886
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableCardEmulatorF4()V

    .line 887
    const-string v2, "persist.sys.switch_se"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v2, "persist.sys.sim_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 890
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v3, 0x7f0c0f79

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 896
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    new-array v3, v6, [Ljava/lang/String;

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 897
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    new-array v3, v6, [Ljava/lang/String;

    aget-object v4, v1, v5

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 898
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 892
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v3, 0x7f0c0f7c

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private setPropertyWifiState(Z)V
    .locals 4
    .param p1, "wifiState"    # Z

    .prologue
    .line 904
    const-string v1, "wifi.ant.set.ok"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    if-nez p1, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->setSystemPropertiyFor1x1state()V

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 911
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 912
    return-void

    .line 908
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->setSystemPropertiyFor2x2state()V

    goto :goto_0
.end method

.method private setSystemPropertiyFor1x1state()V
    .locals 2

    .prologue
    .line 915
    const-string v0, "wifi.ant.1x1.set"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v0, "wifi.ant.2x2.set"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method private setSystemPropertiyFor2x2state()V
    .locals 2

    .prologue
    .line 920
    const-string v0, "wifi.ant.1x1.set"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v0, "wifi.ant.2x2.set"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method private setWifiAntState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1085
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiAntStateInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1087
    invoke-direct {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->setPropertyWifiState(Z)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_state_1x1"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiAntStateInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    invoke-direct {p0, v3}, Lcom/android/settings_ex/WirelessSettings;->setPropertyWifiState(Z)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_state_1x1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setWifiAntToast()V
    .locals 3

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0ea4

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1009
    :cond_0
    return-void
.end method

.method private updateWifiAntState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1067
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiAntStateInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1069
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1077
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateWifiStateSummary()V

    .line 1078
    return-void

    .line 1070
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiAntStateInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1071
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1072
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1073
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiSingleAntState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiDualAntState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1075
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateWifiStateSummary()V
    .locals 3

    .prologue
    const v2, 0x7f0c0ea0

    .line 1057
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiAntStateInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiStatePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1064
    :goto_0
    return-void

    .line 1059
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiAntStateInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiStatePreference:Landroid/preference/Preference;

    const v1, 0x7f0c0ea1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiStatePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private wifiStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 1116
    packed-switch p1, :pswitch_data_0

    .line 1140
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1118
    :pswitch_1
    const-string v0, "GG"

    const-string v1, "wifiStateChanged WIFI_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    if-eqz v0, :cond_0

    .line 1120
    const-string v0, "GG"

    const-string v1, "wifi restarting!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 1125
    :pswitch_2
    const-string v0, "GG"

    const-string v1, "wifiStateChanged WIFI_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    if-eqz v0, :cond_0

    .line 1127
    iget v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    .line 1128
    const-string v0, "GG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartTimes-- =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget v0, p0, Lcom/android/settings_ex/WirelessSettings;->restartTimes:I

    if-lez v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 1132
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z

    .line 1133
    const-string v0, "GG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI ANT STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->getWifiAntStateInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 665
    const v0, 0x7f0c094e

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 315
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 654
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 655
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 657
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 660
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 661
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1018
    packed-switch p2, :pswitch_data_0

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->finish()V

    .line 1029
    :goto_0
    return-void

    .line 1020
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->setWifiAntState()V

    goto :goto_0

    .line 1023
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateWifiAntState()V

    goto :goto_0

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1033
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1036
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_3

    .line 1044
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1048
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiSingleAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1051
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiDualAntBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 321
    if-eqz p1, :cond_0

    .line 322
    const-string v21, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 324
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 326
    const-string v21, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 327
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 329
    const-string v21, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 330
    const-string v21, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 332
    const v21, 0x7f080087

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->addPreferencesFromResource(I)V

    .line 334
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 335
    .local v12, "myUserId":I
    if-eqz v12, :cond_15

    const/4 v8, 0x1

    .line 337
    .local v8, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 338
    .local v3, "activity":Landroid/app/Activity;
    const-string v21, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 339
    const-string v21, "wifi_1x1_available"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mWifiStatePreference:Landroid/preference/Preference;

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->isNX531JProject()Z

    move-result v21

    if-nez v21, :cond_1

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mWifiStatePreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 344
    :cond_1
    const-string v21, "category_wireless_transport"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 345
    .local v4, "categoryWirelessTransport":Landroid/preference/PreferenceCategory;
    const-string v21, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/nubia/CheckBoxPreference;

    .line 346
    .local v13, "nfc":Landroid/preference/nubia/CheckBoxPreference;
    const-string v21, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;

    .line 347
    const-string v21, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/nubia/CheckBoxPreference;

    .line 348
    .local v14, "nsd":Landroid/preference/nubia/CheckBoxPreference;
    const-string v21, "switch_se"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcn/nubia/commonui/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    .line 349
    new-instance v21, Lcom/android/settings_ex/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    .line 350
    const-string v21, "0"

    const-string v22, "persist.sys.switch_se"

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 351
    new-instance v21, Lcom/android/settings_ex/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v13, v1}, Lcom/android/settings_ex/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 356
    :goto_1
    const-string v21, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 357
    const-string v21, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPre:Landroid/preference/Preference;

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "airplane_mode_toggleable_radios"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 366
    .local v20, "toggleable":Ljava/lang/String;
    if-nez v8, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1120069

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_17

    const/4 v9, 0x1

    .line 368
    .local v9, "isWimaxEnabled":Z
    :goto_2
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string v22, "no_config_mobile_networks"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 370
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 371
    .local v18, "root":Landroid/preference/PreferenceScreen;
    const-string v21, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 372
    .local v17, "ps":Landroid/preference/Preference;
    if-eqz v17, :cond_3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    .end local v17    # "ps":Landroid/preference/Preference;
    .end local v18    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_3
    if-eqz v20, :cond_4

    const-string v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 383
    :cond_4
    const-string v21, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const-string v22, "toggle_airplane"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 386
    :cond_5
    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string v22, "no_config_vpn"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 387
    :cond_6
    const-string v21, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 391
    :cond_7
    if-eqz v20, :cond_8

    const-string v21, "bluetooth"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 396
    :cond_8
    if-eqz v20, :cond_9

    const-string v21, "nfc"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 397
    :cond_9
    const-string v21, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const-string v22, "toggle_airplane"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 398
    const-string v21, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const-string v22, "toggle_airplane"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 402
    :cond_a
    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    .line 411
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 417
    const-string v21, "1"

    const-string v22, "persist.sys.remove_beam"

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 428
    :cond_d
    :goto_4
    const-string v21, "0"

    const-string v22, "persist.sys.switch_se"

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->isSmsSupported()Z

    move-result v21

    if-nez v21, :cond_f

    .line 434
    const-string v21, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 442
    :cond_f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 443
    const-string v21, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 461
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const-string v22, "android.hardware.type.television"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 462
    const-string v21, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 466
    :cond_11
    const-string v21, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 467
    .local v11, "mGlobalProxy":Landroid/preference/Preference;
    const-string v21, "device_policy"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 470
    .local v10, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v21

    if-nez v21, :cond_1e

    const/16 v21, 0x1

    :goto_6
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 474
    const-string v21, "connectivity"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 476
    .local v5, "cm":Landroid/net/ConnectivityManager;
    if-nez v8, :cond_12

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v21

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string v22, "no_config_tethering"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 478
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1120072

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 492
    .local v7, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v7, :cond_13

    .line 493
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const-string v22, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 495
    const/4 v7, 0x0

    .line 501
    :cond_13
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v19

    .line 503
    .local v19, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removeBackupAndCloud(Ljava/util/Collection;)V

    .line 504
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v21

    const/16 v21, 0x0

    if-gtz v21, :cond_14

    const-string v21, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 505
    :cond_14
    return-void

    .line 335
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "categoryWirelessTransport":Landroid/preference/PreferenceCategory;
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "isCellBroadcastAppLinkEnabled":Z
    .end local v8    # "isSecondaryUser":Z
    .end local v9    # "isWimaxEnabled":Z
    .end local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v13    # "nfc":Landroid/preference/nubia/CheckBoxPreference;
    .end local v14    # "nsd":Landroid/preference/nubia/CheckBoxPreference;
    .end local v19    # "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    .end local v20    # "toggleable":Ljava/lang/String;
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 353
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v4    # "categoryWirelessTransport":Landroid/preference/PreferenceCategory;
    .restart local v8    # "isSecondaryUser":Z
    .restart local v13    # "nfc":Landroid/preference/nubia/CheckBoxPreference;
    .restart local v14    # "nsd":Landroid/preference/nubia/CheckBoxPreference;
    :cond_16
    new-instance v21, Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v3, v13, v1, v2}, Lcom/android/settings_ex/nfc/SE_NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;Landroid/preference/PreferenceScreen;Lcn/nubia/commonui/preference/ListPreference;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    goto/16 :goto_1

    .line 366
    .restart local v20    # "toggleable":Ljava/lang/String;
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 374
    .restart local v9    # "isWimaxEnabled":Z
    :cond_18
    if-eqz v20, :cond_19

    const-string v21, "wimax"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    if-eqz v9, :cond_3

    .line 376
    :cond_19
    const-string v21, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 377
    .restart local v17    # "ps":Landroid/preference/Preference;
    const-string v21, "toggle_airplane"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 423
    .end local v17    # "ps":Landroid/preference/Preference;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 445
    :cond_1b
    const-string v21, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 446
    .local v16, "pref":Landroid/preference/Preference;
    if-eqz v16, :cond_10

    .line 447
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 449
    invoke-virtual/range {v16 .. v16}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    goto/16 :goto_5

    .line 451
    :cond_1c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 453
    invoke-virtual/range {v16 .. v16}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    goto/16 :goto_5

    .line 456
    :cond_1d
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 471
    .end local v16    # "pref":Landroid/preference/Preference;
    .restart local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v11    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_1e
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 480
    .restart local v5    # "cm":Landroid/net/ConnectivityManager;
    :cond_1f
    const-string v21, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 481
    .local v15, "p":Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings_ex/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_20

    const/16 v21, 0x1

    :goto_9
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_20
    const/16 v21, 0x0

    goto :goto_9

    .line 498
    .end local v15    # "p":Landroid/preference/Preference;
    .restart local v7    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v6

    .line 499
    .local v6, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 292
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/WirelessSettings$1;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateWifiAntState()V

    .line 1014
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 633
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 634
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSE_SimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 637
    const-string v0, "persist.sys.wireless_se"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->pause()V

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->pause()V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->pause()V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/NsdEnabler;->pause()V

    .line 648
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAPChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 650
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick: preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 172
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ex/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    :goto_0
    return v2

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    if-ne p2, v3, :cond_2

    .line 184
    const-string v2, "mSwitch_se onclick............."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v3, 0x7f0c0f7a

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setDialogTitle(I)V

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->setEntryAndValues()V

    .line 203
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPre:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 188
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPre:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V

    goto :goto_0

    .line 199
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiStatePreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->createSelectDialog()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 526
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 527
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v2, "se_filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mSE_SimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 531
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 532
    .local v1, "nfc_filter":Landroid/content/IntentFilter;
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v5, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 534
    const-string v3, "persist.sys.wireless_se"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 537
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->resume()V

    .line 538
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v3, :cond_0

    .line 539
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/NfcEnabler;->resume()V

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->resume()V

    .line 544
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v3, :cond_2

    .line 545
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v3}, Lcom/android/settings_ex/NsdEnabler;->resume()V

    .line 547
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->updateSmsApplicationState()V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 550
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 551
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 553
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/settings_ex/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 558
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateWifiStateSummary()V

    .line 561
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiChangeIntentFilter:Landroid/content/IntentFilter;

    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiChangeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAPChangeIntentFilter:Landroid/content/IntentFilter;

    .line 564
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mAPChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings_ex/WirelessSettings;->mAPChangeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 565
    return-void

    .line 556
    :cond_3
    const-string v3, "wifi_calling_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 624
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 626
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 765
    const-string v0, "onSharedPreferenceChanged()................."

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 766
    const-string v0, "switch_se"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v1}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2"

    const-string v1, "persist.sys.switch_se"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableCardEmulatorF3()V

    .line 769
    const-string v0, "after enable 0xF3)"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 770
    const-string v0, "persist.sys.switch_se"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "persist.sys.sim_se"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v1, 0x7f0c0f78

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    const-string v0, "2"

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v1}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    const-string v1, "persist.sys.switch_se"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableCardEmulatorF4()V

    .line 775
    const-string v0, "after enable 0xF4)"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 776
    const-string v0, "persist.sys.switch_se"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "persist.sys.sim_se"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v1, 0x7f0c0f79

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 508
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "se_values":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v2, 0x7f0c0f7a

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setDialogTitle(I)V

    .line 514
    const-string v1, "1"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v2, 0x7f0c0f78

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 516
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string v1, "2"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "WirelessSettings"

    const-string v2, "oncreate 2 ................."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const v2, 0x7f0c0f79

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 520
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 570
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/AirplaneModeEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/AirplaneModeEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuickClickAgent;->removeDelayMsg()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuickClickAgent;->removeDelayMsg()V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSe_NfcEnabler:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuickClickAgent;->removeDelayMsg()V

    .line 585
    :cond_2
    return-void
.end method

.method public updateSmsApplicationState()V
    .locals 10

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 589
    .local v0, "appName":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPre:Landroid/preference/Preference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 593
    .local v2, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v5

    .line 595
    .local v5, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-direct {p0, v5}, Lcom/android/settings_ex/WirelessSettings;->removeBackupAndCloud(Ljava/util/Collection;)V

    .line 596
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 597
    .local v1, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v8, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 598
    move-object v2, v1

    goto :goto_1

    .line 601
    .end local v1    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    if-eqz v2, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0ce9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, "yimoshiName":Ljava/lang/String;
    iget-object v6, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    .line 604
    .local v6, "summaryName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 605
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0cea

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 607
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPre:Landroid/preference/Preference;

    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
