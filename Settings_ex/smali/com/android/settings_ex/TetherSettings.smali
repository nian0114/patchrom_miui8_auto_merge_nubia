.class public Lcom/android/settings_ex/TetherSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/nubia/CheckBoxPreference;

.field private mInAnimRes:I

.field private mMassStorageActive:Z

.field private mOutAnimRes:I

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

.field private mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

.field private quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 280
    new-instance v0, Lcom/android/settings_ex/TetherSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$3;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TetherSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->apPreferenceChange(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TetherSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->usbPerferenceChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private apPreferenceChange(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 585
    if-eqz p1, :cond_0

    .line 586
    invoke-direct {p0, v1}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 593
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 768
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 769
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 774
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 768
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 767
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 774
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getAnimRes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 827
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 830
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/TetherSettings;->mInAnimRes:I

    .line 831
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/TetherSettings;->mOutAnimRes:I

    .line 832
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 834
    return-void

    .line 827
    :array_0
    .array-data 4
        0x7f01007b
        0x7f01007c
    .end array-data
.end method

.method private getPanStatus()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 133
    const-string v3, "TetherSettings"

    const-string v4, "getPanStatus , getActivity = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bt_pan_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "value":I
    const-string v3, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPanStatus with value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getWifiApConfig()V
    .locals 3

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 841
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings_ex/TetherSettings$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/TetherSettings$4;-><init>(Lcom/android/settings_ex/TetherSettings;Landroid/app/Activity;)V

    .line 870
    .local v1, "updateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 871
    return-void
.end method

.method private initWifiTethering()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 259
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 261
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->getWifiApConfig()V

    .line 278
    return-void
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "provisionApp":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 609
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const/high16 v5, 0x10000

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 597
    :try_start_0
    invoke-static {p0}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 601
    :cond_0
    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TetherSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setBtName(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 809
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 813
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setBtThetherChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 697
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 700
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v2, 0x7f0c0489

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 705
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v2, 0x7f0c0483

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private setWifiP2pName(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 816
    const-string v2, "wifip2p"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 818
    .local v1, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 821
    .local v0, "channel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-virtual {v1, v0, p1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 825
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 617
    iput p1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 618
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    invoke-virtual {p0, v0, v4}, Lcom/android/settings_ex/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 626
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 669
    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 694
    :goto_0
    return-void

    .line 671
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 675
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 676
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 677
    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    .line 678
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 679
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    const v3, 0x7f0c00d0

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 680
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 682
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 683
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 684
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    const v3, 0x7f0c048b

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 688
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 520
    const/4 v6, 0x0

    .line 521
    .local v6, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 522
    .local v15, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 523
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 522
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 521
    .end local v14    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 527
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 528
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_4

    .line 575
    :cond_3
    :goto_2
    return-void

    .line 530
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 531
    .local v9, "btState":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c00d1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 534
    :cond_5
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c00d0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 538
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 539
    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 541
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings;->setBtThetherChecked(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 543
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 544
    .local v8, "bluetoothTethered":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_7

    .line 545
    const v17, 0x7f0c048d

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 548
    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 549
    .end local v16    # "summary":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_8

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c048c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 552
    :cond_8
    if-eqz v6, :cond_9

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c0490

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 555
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c048b

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 558
    .end local v8    # "bluetoothTethered":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 561
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_b

    .line 562
    if-eqz v7, :cond_3

    .line 564
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-nez v17, :cond_3

    .line 565
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings;->setBtThetherChecked(Z)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c048f

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 570
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings;->setBtThetherChecked(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c048f

    invoke-virtual/range {v17 .. v18}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 437
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 440
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 455
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 457
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 458
    .local v9, "usbAvailable":Z
    :goto_0
    const/4 v10, 0x0

    .line 459
    .local v10, "usbError":I
    move-object/from16 v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 460
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 461
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 462
    if-nez v10, :cond_0

    .line 463
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 460
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 457
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "usbAvailable":Z
    .end local v10    # "usbError":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 459
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "usbAvailable":Z
    .restart local v10    # "usbError":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 468
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 469
    .local v12, "usbTethered":Z
    move-object/from16 v0, p2

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 470
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 471
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 470
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 469
    .end local v7    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_3

    .line 474
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 475
    .local v11, "usbErrored":Z
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 476
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 477
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 476
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 475
    .end local v7    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_5

    .line 481
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_c

    .line 482
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v13, :cond_b

    .line 483
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 516
    :cond_a
    :goto_7
    return-void

    .line 487
    :cond_b
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v14, 0x7f0c0485

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 488
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 489
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 490
    :cond_c
    if-eqz v9, :cond_f

    .line 491
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v13, :cond_d

    .line 492
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings_ex/QuickClickAgent;->isNeedInterrupt(Z)Z

    move-result v13

    if-nez v13, :cond_a

    .line 496
    :cond_d
    if-nez v10, :cond_e

    .line 497
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v14, 0x7f0c0484

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 501
    :goto_8
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 502
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 499
    :cond_e
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v14, 0x7f0c0489

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 503
    :cond_f
    if-eqz v11, :cond_10

    .line 504
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v14, 0x7f0c0489

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 505
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 506
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 507
    :cond_10
    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_11

    .line 508
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v14, 0x7f0c0486

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 509
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 510
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 512
    :cond_11
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const v14, 0x7f0c0487

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 513
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 514
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7
.end method

.method private usbPerferenceChanged(Z)V
    .locals 2
    .param p1, "newState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 708
    if-eqz p1, :cond_0

    .line 709
    invoke-direct {p0, v1}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 716
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 714
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 802
    const v0, 0x7f0c0955

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 629
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 630
    if-nez p1, :cond_2

    .line 631
    if-ne p2, v2, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-static {v1, v2}, Lcom/android/settings_ex/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 633
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 645
    :goto_1
    iput v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 639
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 642
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 647
    :cond_2
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    .line 648
    const-string v1, "wifiapconfig"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 650
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 652
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 653
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 657
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 659
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 660
    const-string v1, "persist.sys.devicename"

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/TetherSettings;->setBtName(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/TetherSettings;->setWifiP2pName(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    .end local v0    # "index":I
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_2

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 778
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 780
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 787
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 788
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 792
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 793
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0307

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string v7, "TETHER_TYPE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 159
    :cond_0
    const v7, 0x7f08006e

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->addPreferencesFromResource(I)V

    .line 161
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 163
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v10, "no_config_tethering"

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_3

    .line 165
    :cond_1
    iput-boolean v8, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    .line 166
    new-instance v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 241
    :cond_2
    :goto_0
    return-void

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->getAnimRes()V

    .line 172
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 173
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v7, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 178
    :cond_4
    const-string v7, "enable_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/nubia/CheckBoxPreference;

    .line 180
    const-string v7, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 181
    .local v5, "wifiApSettings":Landroid/preference/Preference;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    .line 182
    const-string v7, "enable_bluetooth_tethering"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    .line 184
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 187
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 188
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 189
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 191
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_9

    move v4, v8

    .line 192
    .local v4, "usbAvailable":Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_a

    move v6, v8

    .line 193
    .local v6, "wifiAvailable":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_b

    move v2, v8

    .line 195
    .local v2, "bluetoothAvailable":Z
    :goto_3
    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_6
    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_c

    .line 200
    new-instance v7, Lcom/android/settings_ex/wifi/WifiApEnabler;

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {v7, v0, v8}, Lcom/android/settings_ex/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;)V

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->initWifiTethering()V

    .line 207
    :goto_4
    if-nez v2, :cond_d

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 216
    new-instance v7, Lcom/android/settings_ex/QuickClickAgent;

    invoke-direct {v7}, Lcom/android/settings_ex/QuickClickAgent;-><init>()V

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    .line 217
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v7, :cond_7

    .line 218
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    new-instance v8, Lcom/android/settings_ex/TetherSettings$1;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/TetherSettings$1;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/QuickClickAgent;->setClickedTodoListener(Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;)V

    .line 227
    :cond_7
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v7, :cond_8

    .line 228
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setQuickClickAgent(Lcom/android/settings_ex/QuickClickAgent;)V

    .line 230
    :cond_8
    new-instance v7, Lcom/android/settings_ex/QuickClickAgent;

    invoke-direct {v7}, Lcom/android/settings_ex/QuickClickAgent;-><init>()V

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    .line 231
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v7, :cond_2

    .line 232
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    new-instance v8, Lcom/android/settings_ex/TetherSettings$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/TetherSettings$2;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/QuickClickAgent;->setClickedTodoListener(Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;)V

    goto/16 :goto_0

    .end local v2    # "bluetoothAvailable":Z
    .end local v4    # "usbAvailable":Z
    .end local v6    # "wifiAvailable":Z
    :cond_9
    move v4, v9

    .line 191
    goto/16 :goto_1

    .restart local v4    # "usbAvailable":Z
    :cond_a
    move v6, v9

    .line 192
    goto :goto_2

    .restart local v6    # "wifiAvailable":Z
    :cond_b
    move v2, v9

    .line 193
    goto :goto_3

    .line 203
    .restart local v2    # "bluetoothAvailable":Z
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 210
    :cond_d
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->getPanStatus()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 294
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 296
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 297
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 300
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 428
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 429
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 430
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 431
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 432
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 434
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 578
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 579
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 580
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/QuickClickAgent;->onSwitchChanged(Z)V

    .line 581
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x2

    .line 720
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 723
    .local v3, "cm":Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v8, :cond_1

    .line 724
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 726
    .local v6, "newState":Z
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v8, v6}, Lcom/android/settings_ex/QuickClickAgent;->onSwitchChanged(Z)V

    .line 763
    .end local v6    # "newState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    .line 728
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p2, v8, :cond_7

    .line 729
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 731
    .local v2, "bluetoothTetherState":Z
    if-eqz v2, :cond_2

    .line 732
    invoke-direct {p0, v9}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 735
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 737
    :cond_3
    const/4 v4, 0x0

    .line 739
    .local v4, "errored":Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    .line 740
    .local v7, "tethered":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings_ex/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 743
    const/4 v4, 0x1

    .line 746
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 747
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 748
    :cond_5
    if-eqz v4, :cond_6

    .line 749
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    const v9, 0x7f0c0490

    invoke-virtual {v8, v9}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 751
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/nubia/CheckBoxPreference;

    const v9, 0x7f0c048f

    invoke-virtual {v8, v9}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 754
    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "bluetoothTetherState":Z
    .end local v4    # "errored":Z
    .end local v7    # "tethered":[Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v8, :cond_0

    .line 756
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/android/settings_ex/wifi/WifiApDialogActivity;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "wifiapconfig"

    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 759
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 760
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/android/settings_ex/TetherSettings;->mInAnimRes:I

    iget v10, p0, Lcom/android/settings_ex/TetherSettings;->mOutAnimRes:I

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 357
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 359
    iget-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 361
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 362
    if-eqz v1, :cond_0

    .line 363
    const v4, 0x7f0c05ed

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 402
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 370
    .local v0, "activity":Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    .line 371
    new-instance v4, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 373
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 375
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 383
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 396
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 397
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 398
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->resume()V

    .line 401
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 408
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->pause()V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuickClickAgent;->removeDelayMsg()V

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->quickClickAgentUSB:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuickClickAgent;->removeDelayMsg()V

    goto :goto_0
.end method
