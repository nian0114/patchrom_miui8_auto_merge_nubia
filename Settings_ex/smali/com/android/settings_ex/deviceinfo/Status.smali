.class public Lcom/android/settings_ex/deviceinfo/Status;
.super Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;-><init>()V

    .line 132
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$1;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$2;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 365
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 366
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 367
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 369
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 357
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 358
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 274
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 326
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 327
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 298
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 312
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 313
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    return-void

    .line 312
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0x2c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getWindow()Landroid/view/Window;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/PhoneWindow;

    const v7, 0x7f0e0065

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 167
    new-instance v6, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 169
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 170
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 172
    const v6, 0x7f080023

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 173
    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 174
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 175
    const-string v6, "bt_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 176
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 177
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 178
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 181
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 182
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c03c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 185
    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hasBluetooth()Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hasWimax()Z

    move-result v6

    if-nez v6, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 197
    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 198
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v1, v2

    .line 199
    .local v3, "intent":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "intent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateConnectivity()V

    .line 204
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 205
    .local v5, "serial":Ljava/lang/String;
    if-eqz v5, :cond_6

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 206
    const-string v6, "serial_number"

    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_3

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    :cond_3
    const-string v6, "sim_status"

    invoke-direct {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 216
    const-string v6, "imei_info"

    invoke-direct {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/deviceinfo/Status$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/deviceinfo/Status$3;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 240
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {v0, v8}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 243
    :cond_5
    return-void

    .line 208
    .end local v0    # "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_6
    const-string v6, "serial_number"

    invoke-direct {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 374
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 379
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 376
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->finish()V

    .line 377
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onPause()V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onResume()V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWimaxStatus()V

    .line 340
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWifiStatus()V

    .line 341
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setBtStatus()V

    .line 342
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setIpAddressStatus()V

    .line 343
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 347
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 349
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 350
    const-wide/16 v2, 0x1

    .line 353
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    return-void
.end method
