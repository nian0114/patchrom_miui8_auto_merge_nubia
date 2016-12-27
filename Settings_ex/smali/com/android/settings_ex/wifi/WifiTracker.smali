.class public Lcom/android/settings_ex/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;,
        Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;,
        Lcom/android/settings_ex/wifi/WifiTracker$Multimap;,
        Lcom/android/settings_ex/wifi/WifiTracker$Scanner;,
        Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;,
        Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;
    }
.end annotation


# static fields
.field public static sVerboseLogging:I


# instance fields
.field private mAccessPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckNetworkAdd:Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

.field private final mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

.field private mSavedNetworksExist:Z

.field private mScanId:Ljava/lang/Integer;

.field private mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

.field private mSeenBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/wifi/WifiTracker;->sVerboseLogging:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z

    .prologue
    .line 111
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/settings_ex/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "currentLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 521
    new-instance v0, Lcom/android/settings_ex/wifi/WifiTracker$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiTracker$1;-><init>(Lcom/android/settings_ex/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 726
    new-instance v0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;-><init>(Lcom/android/settings_ex/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mCheckNetworkAdd:Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;

    .line 728
    new-instance v0, Lnubia/net/wifi/WifiRssiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnubia/net/wifi/WifiRssiInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    .line 119
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 123
    if-nez p8, :cond_1

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    .line 127
    :cond_1
    new-instance v0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;-><init>(Lcom/android/settings_ex/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    .line 128
    new-instance v0, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    if-eqz p3, :cond_2

    .end local p3    # "workerLooper":Landroid/os/Looper;
    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;-><init>(Lcom/android/settings_ex/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    .line 130
    iput-object p7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mIncludeSaved:Z

    .line 132
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mIncludeScans:Z

    .line 133
    iput-boolean p6, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mIncludePasspoints:Z

    .line 134
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/settings_ex/wifi/WifiTracker;->sVerboseLogging:I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NUBIA_RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    return-void

    .restart local p3    # "workerLooper":Landroid/os/Looper;
    :cond_2
    move-object p3, p8

    .line 128
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/WifiTracker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/wifi/WifiTracker;Lnubia/net/wifi/WifiRssiInfo;)Lnubia/net/wifi/WifiRssiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;
    .param p1, "x1"    # Lnubia/net/wifi/WifiRssiInfo;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTracker;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiTracker;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method private fetchScanResults()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 273
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 274
    .local v4, "newResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 275
    .local v3, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    .end local v3    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    .line 281
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 282
    .local v6, "threshold":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 283
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 286
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 288
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 295
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "threshold":Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    return-object v7
.end method

.method private getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settings_ex/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 436
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 437
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 439
    .local v2, "ret":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 443
    .end local v2    # "ret":Lcom/android/settings_ex/wifi/AccessPoint;
    :goto_1
    return-object v2

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_1
    new-instance v2, Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    goto :goto_1
.end method

.method private getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settings_ex/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 447
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 448
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 449
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 451
    .local v2, "ret":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 455
    .end local v2    # "ret":Lcom/android/settings_ex/wifi/AccessPoint;
    :goto_1
    return-object v2

    .line 448
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_1
    new-instance v2, Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1
.end method

.method public static getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeSaved"    # Z
    .param p2, "includeScans"    # Z
    .param p3, "includePasspoints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 515
    new-instance v0, Lcom/android/settings_ex/wifi/WifiTracker;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 517
    .local v0, "tracker":Lcom/android/settings_ex/wifi/WifiTracker;
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->forceUpdate()V

    .line 518
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 302
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 308
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handleResume()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 269
    return-void
.end method

.method private declared-synchronized updateAccessPoints()V
    .locals 22

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v6

    .line 314
    .local v6, "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v4, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 318
    .local v3, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->clearConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 313
    .end local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v4    # "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    .end local v6    # "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 323
    .restart local v4    # "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    .restart local v6    # "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/settings_ex/wifi/WifiTracker$Multimap;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/settings_ex/wifi/WifiTracker$Multimap;-><init>(Lcom/android/settings_ex/wifi/WifiTracker$1;)V

    .line 324
    .local v5, "apMap":Lcom/android/settings_ex/wifi/WifiTracker$Multimap;, "Lcom/android/settings_ex/wifi/WifiTracker$Multimap<Ljava/lang/String;Lcom/android/settings_ex/wifi/AccessPoint;>;"
    const/4 v9, 0x0

    .line 325
    .local v9, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 329
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 330
    .local v8, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v8, :cond_9

    .line 331
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_7

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiTracker;->mSavedNetworksExist:Z

    .line 332
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 333
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 336
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/settings_ex/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v3

    .line 337
    .restart local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 338
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-nez v19, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v3, v9, v0, v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;Lnubia/net/wifi/WifiRssiInfo;)Z

    .line 342
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mIncludeSaved:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 343
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mIncludePasspoints:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 344
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_6
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-nez v19, :cond_2

    .line 347
    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v3}, Lcom/android/settings_ex/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 331
    .end local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 352
    .restart local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 357
    .end local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiTracker;->fetchScanResults()Ljava/util/Collection;

    move-result-object v17

    .line 358
    .local v17, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    if-eqz v17, :cond_11

    .line 359
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/ScanResult;

    .line 361
    .local v16, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "[IBSS]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 366
    const/4 v10, 0x0

    .line 369
    .local v10, "found":Z
    new-instance v18, Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 370
    .local v18, "tmpAccessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 371
    .restart local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v19

    iget v0, v3, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    const/16 v20, -0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 375
    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 376
    const/4 v10, 0x1

    goto :goto_4

    .line 378
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 379
    const/4 v10, 0x1

    .line 383
    .end local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_d
    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v3

    .line 385
    .restart local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v3, v9, v0, v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;Lnubia/net/wifi/WifiRssiInfo;)Z

    .line 389
    :cond_e
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 391
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_f

    .line 392
    invoke-virtual {v3, v7}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 396
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 401
    invoke-virtual {v3, v9}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 404
    :cond_10
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v3}, Lcom/android/settings_ex/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 411
    .end local v3    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v10    # "found":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "result":Landroid/net/wifi/ScanResult;
    .end local v18    # "tmpAccessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_11
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_12
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 416
    .local v14, "prevAccessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v19

    if-eqz v19, :cond_12

    .line 417
    invoke-virtual {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "prevSsid":Ljava/lang/String;
    const/4 v10, 0x0

    .line 419
    .restart local v10    # "found":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 420
    .local v13, "newAccessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v13}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v19

    if-eqz v19, :cond_13

    invoke-virtual {v13}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 421
    const/4 v10, 0x1

    .line 425
    .end local v13    # "newAccessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_14
    if-nez v10, :cond_12

    goto :goto_5

    .line 430
    .end local v10    # "found":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "prevAccessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v15    # "prevSsid":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 7
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 461
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_1
    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_5

    .line 467
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 472
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 473
    if-eqz p1, :cond_2

    .line 474
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 476
    :cond_2
    const/4 v0, 0x0

    .line 477
    .local v0, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_3

    .line 478
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 481
    :cond_3
    const/4 v2, 0x0

    .line 482
    .local v2, "reorder":Z
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 483
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;Lnubia/net/wifi/WifiRssiInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 484
    const/4 v2, 0x1

    .line 482
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 469
    .end local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i":I
    .end local v2    # "reorder":Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 460
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 488
    .restart local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "i":I
    .restart local v2    # "reorder":Z
    :cond_6
    if-eqz v2, :cond_0

    .line 489
    :try_start_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :try_start_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 491
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 492
    :try_start_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 491
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private declared-synchronized updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 497
    monitor-enter p0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;->resume()V

    .line 510
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 504
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public doSavedNetworksExist()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mSavedNetworksExist:Z

    return v0
.end method

.method public forceScan()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;->forceScan()V

    .line 168
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTracker;->updateAccessPoints()V

    .line 159
    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v1

    .line 234
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pauseScanning()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;->pause()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    .line 178
    :cond_0
    return-void
.end method

.method public resumeScanning()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settings_ex/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;->resume()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method public startCheckAddNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mCheckNetworkAdd:Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->startCheck(Landroid/net/wifi/WifiConfiguration;)V

    .line 733
    return-void
.end method

.method public declared-synchronized startTracking()V
    .locals 4

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiTracker;->resumeScanning()V

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 205
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 207
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mRegistered:Z

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    monitor-exit p0

    return-void

    .line 201
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopCheckAddNetwork()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mCheckNetworkAdd:Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->clear()V

    .line 737
    return-void
.end method

.method public declared-synchronized stopTracking()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiTracker;->mRegistered:Z

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiTracker;->pauseScanning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
