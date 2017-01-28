.class public Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;
    }
.end annotation


# static fields
.field private static final ATTR_2G_SCREEN:Ljava/lang/String; = "g_in_screen_off"

.field private static final ATTR_APP_PKG:Ljava/lang/String; = "app"

.field private static final ATTR_DEFAULT_DEALY:Ljava/lang/String; = "delay_mills"

.field private static final ATTR_DELAY_CONTROL_MILLS:Ljava/lang/String; = "delay_control_mills"

.field private static final ATTR_MOBIEL_SCREEN:Ljava/lang/String; = "mobile_screen_off"

.field private static final ATTR_MOBILE_BG:Ljava/lang/String; = "mobile_background"

.field private static final ATTR_RESTORE_TIME_INTERVAL:Ljava/lang/String; = "restore_time_interval"

.field private static final ATTR_RETURN_NO_NETWORK:Ljava/lang/String; = "return_no_network"

.field private static final ATTR_SCREEN_OFF_DEALY:Ljava/lang/String; = "screen_off_delay_mills"

.field private static final ATTR_WIFI_BG:Ljava/lang/String; = "wifi_background"

.field private static final ATTR_WIFI_SCREEN:Ljava/lang/String; = "wifi_screen_off"

.field private static final NETWORK_MANAGE_FILE:Ljava/lang/String; = "security_network_manager.xml"

.field private static final NUBIA_NETWORK_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/network_manage_table"

.field private static final NUBIA_NETWORK_DELEY_URI:Ljava/lang/String; = "content://cn.nubia.security.power/network_delay_table"

.field private static final NUBIA_TRAFFIC_MOBILE_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.firewall/mobile"

.field private static final NUBIA_TRAFFIC_WIFI_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.firewall/wlan"

.field private static final TABLE_NETWORK_2G_SC_COLUMN:Ljava/lang/String; = "restrict_2g_screen"

.field private static final TABLE_NETWORK_DEFAULT_DELAY_COLUMN:Ljava/lang/String; = "default_delay"

.field private static final TABLE_NETWORK_DELAY_COLUMN:Ljava/lang/String; = "delay"

.field private static final TABLE_NETWORK_MOBILE_BG_COLUMN:Ljava/lang/String; = "restrict_mobile_background"

.field private static final TABLE_NETWORK_MOBILE_SC_COLUMN:Ljava/lang/String; = "restrict_mobile_screen"

.field private static final TABLE_NETWORK_PACKAGE_COLUMN:Ljava/lang/String; = "network_control_pkg"

.field private static final TABLE_NETWORK_RESTORE_TIME_INTERVAL_COLUMN:Ljava/lang/String; = "restore_interval"

.field private static final TABLE_NETWORK_SC_DELAY_COLUMN:Ljava/lang/String; = "screen_off_delay"

.field private static final TABLE_NETWORK_WIFI_BG_COLUMN:Ljava/lang/String; = "restrict_wifi_background"

.field private static final TABLE_NETWORK_WIFI_SC_COLUMN:Ljava/lang/String; = "restrict_wifi_screen"

.field private static final TABLE_TRAFFIC_UID_COLUMN:Ljava/lang/String; = "uid"

.field private static final TAG:Ljava/lang/String; = "ApplicationNetworkController"

.field private static final TAG_APP_SETTINGS:Ljava/lang/String; = "app_settings"

.field private static final TAG_DELAY_CONTROL_MILLS:Ljava/lang/String; = "delay_mills"

.field private static final TRAFFIC_NET_TYPE_MOBILE_VALUE:I = 0x2

.field private static final TRAFFIC_NET_TYPE_WIFI_VALUE:I = 0x1


# instance fields
.field private mAppBackgroundConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCurrentConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAppGlobalConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;

.field private mCharging:Z

.field private mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultDelayedControlMillis:J

.field private mDisconnectTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mIs2GNetwork:Z

.field private mNMS:Landroid/os/INetworkManagementService;

.field private mNetworkFile:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageProcessCounts:Ljava/util/HashMap;
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

.field private mPackageProcessUids:Ljava/util/HashMap;
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

.field private mPackageStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;

.field private mPendingControlRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryNetworkRunnable:Ljava/lang/Runnable;

.field private mQueryTrafficRunnable:Ljava/lang/Runnable;

.field private mResumedPackageUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResumedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffDelayedControlMillis:J

.field private mScreenOn:Z

.field private mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;

.field private mUidCurrentConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    iput-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-wide/32 v4, 0xea60

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppCurrentConfigs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mUidCurrentConfigs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/HashMap;

    iput-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    invoke-direct {v1, p0, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryNetworkRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;

    const-string v1, "security_network_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNetworkFile:Ljava/io/File;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNetworkFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->initData()V

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Landroid/os/Handler;)V

    .local v0, "trafficObserver":Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;

    invoke-direct {v2, p0, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .end local v0    # "trafficObserver":Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;
    :cond_1
    move v1, v2

    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setPendingControlRunnable(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z

    return v0
.end method

.method static synthetic access$1302(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z

    return v0
.end method

.method static synthetic access$1402(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z

    return p1
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadTrafficSettingsFromDb()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadSettingsFromNubiaDb()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    return v0
.end method

.method private cancelPendingControlRunnable(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;

    .local v0, "r":Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureNetworkManagementService()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadTrafficSettingsFromDb()V

    const-string v1, "security_network_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    .local v0, "data":Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    if-eqz v0, :cond_0

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$400(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    .end local v0    # "data":Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadSettingsFromNubiaDb()V

    goto :goto_0
.end method

.method private loadDefaultSettings()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.youku.phone"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.Qunar"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.achievo.vipshop"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.tmall.wireless"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.qiyi.video"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.letv.android.client"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.sohu.sohuvideo"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "bubei.tingshu"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v7, "com.moji.mjweather"

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.dianping.v1"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.thestore.main"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.jingdong.app.mall"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.tencent.game.rhythmmaster"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v7, "cn.nubia.weather"

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v7, "cn.nubia.email"

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadNetworkDelays()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/network_delay_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-nez v6, :cond_2

    if-eqz v6, :cond_0

    if-eqz v11, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v10    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationNetworkController"

    const-string v2, "fail read from database"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_2
    :try_start_4
    const-string v2, "default_delay"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .local v7, "deDelayIndex":I
    const-string v2, "screen_off_delay"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, "screenDelayIndex":I
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_0

    if-eqz v11, :cond_3

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_2
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .end local v7    # "deDelayIndex":I
    .end local v9    # "screenDelayIndex":I
    :catch_3
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v2, :cond_5

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_4
    :goto_2
    :try_start_9
    throw v1

    :catch_4
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v11

    goto :goto_1
.end method

.method private loadNetworkSettings()Z
    .locals 29

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "content://cn.nubia.security.power/network_manage_table"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .local v14, "c":Landroid/database/Cursor;
    const/16 v27, 0x0

    if-nez v14, :cond_2

    const/4 v3, 0x0

    if-eqz v14, :cond_0

    if-eqz v27, :cond_1

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v14    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v3

    .restart local v14    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v26

    .local v26, "x2":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v14    # "c":Landroid/database/Cursor;
    .end local v26    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v17

    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationNetworkController"

    const-string v10, "fail read from database"

    invoke-static {v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_2
    :try_start_4
    const-string v3, "network_control_pkg"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .local v22, "pkgIndex":I
    const-string v3, "restrict_mobile_background"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, "mobileIndex":I
    const-string v3, "restrict_wifi_background"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .local v24, "wifiIndex":I
    const-string v3, "restrict_mobile_screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .local v19, "mobileScIndex":I
    const-string v3, "restrict_wifi_screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .local v25, "wifiScIndex":I
    const-string v3, "restrict_2g_screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .local v20, "n2gIndex":I
    const-string v3, "delay"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .local v16, "delayIndex":I
    const-string v3, "restore_interval"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .local v23, "timeIntervalIndex":I
    const/4 v3, -0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .local v15, "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .local v21, "pkg":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v4, 0x0

    .local v4, "mobile":Z
    :goto_2
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x0

    .local v5, "wifi":Z
    :goto_3
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v8, 0x0

    .local v8, "mobileSc":Z
    :goto_4
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v9, 0x0

    .local v9, "wifiSc":Z
    :goto_5
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_8

    const/4 v11, 0x0

    .local v11, "n2g":Z
    :goto_6
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .local v6, "delay":J
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .local v12, "interval":J
    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v13}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZJZZZZJ)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .end local v4    # "mobile":Z
    .end local v5    # "wifi":Z
    .end local v6    # "delay":J
    .end local v8    # "mobileSc":Z
    .end local v9    # "wifiSc":Z
    .end local v11    # "n2g":Z
    .end local v12    # "interval":J
    .end local v15    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v16    # "delayIndex":I
    .end local v18    # "mobileIndex":I
    .end local v19    # "mobileScIndex":I
    .end local v20    # "n2gIndex":I
    .end local v21    # "pkg":Ljava/lang/String;
    .end local v22    # "pkgIndex":I
    .end local v23    # "timeIntervalIndex":I
    .end local v24    # "wifiIndex":I
    .end local v25    # "wifiScIndex":I
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v10

    move-object/from16 v28, v10

    move-object v10, v3

    move-object/from16 v3, v28

    :goto_7
    if-eqz v14, :cond_3

    if-eqz v10, :cond_c

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_8
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .restart local v15    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v16    # "delayIndex":I
    .restart local v18    # "mobileIndex":I
    .restart local v19    # "mobileScIndex":I
    .restart local v20    # "n2gIndex":I
    .restart local v21    # "pkg":Ljava/lang/String;
    .restart local v22    # "pkgIndex":I
    .restart local v23    # "timeIntervalIndex":I
    .restart local v24    # "wifiIndex":I
    .restart local v25    # "wifiScIndex":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .restart local v4    # "mobile":Z
    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .restart local v5    # "wifi":Z
    :cond_6
    const/4 v8, 0x1

    goto :goto_4

    .restart local v8    # "mobileSc":Z
    :cond_7
    const/4 v9, 0x1

    goto :goto_5

    .restart local v9    # "wifiSc":Z
    :cond_8
    const/4 v11, 0x1

    goto :goto_6

    .end local v4    # "mobile":Z
    .end local v5    # "wifi":Z
    .end local v8    # "mobileSc":Z
    .end local v9    # "wifiSc":Z
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v14, :cond_a

    if-eqz v27, :cond_b

    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_a
    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v26

    .restart local v26    # "x2":Ljava/lang/Throwable;
    :try_start_a
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v26    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .end local v15    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v16    # "delayIndex":I
    .end local v18    # "mobileIndex":I
    .end local v19    # "mobileScIndex":I
    .end local v20    # "n2gIndex":I
    .end local v22    # "pkgIndex":I
    .end local v23    # "timeIntervalIndex":I
    .end local v24    # "wifiIndex":I
    .end local v25    # "wifiScIndex":I
    :catch_4
    move-exception v26

    .restart local v26    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v26    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_8

    :catchall_1
    move-exception v3

    move-object/from16 v10, v27

    goto :goto_7
.end method

.method private loadSettingsFromNubiaDb()V
    .locals 8

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadNetworkDelays()V

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadNetworkSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;JJLjava/util/HashMap;)V

    invoke-virtual {v7, v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadDefaultSettings()V

    goto :goto_0
.end method

.method private loadTrafficSettingsFromDb()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "content://cn.nubia.security.firewall/mobile"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .local v7, "c1":Landroid/database/Cursor;
    const/4 v15, 0x0

    :try_start_1
    const-string v2, "content://cn.nubia.security.firewall/wlan"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .local v8, "c2":Landroid/database/Cursor;
    const/4 v3, 0x0

    if-nez v7, :cond_5

    if-nez v8, :cond_5

    if-eqz v8, :cond_0

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    if-eqz v15, :cond_4

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v7    # "c1":Landroid/database/Cursor;
    .end local v8    # "c2":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .restart local v7    # "c1":Landroid/database/Cursor;
    .restart local v8    # "c2":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .local v14, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v8    # "c2":Landroid/database/Cursor;
    .end local v14    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_2
    if-eqz v7, :cond_2

    if-eqz v3, :cond_e

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .end local v7    # "c1":Landroid/database/Cursor;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ApplicationNetworkController"

    const-string v3, "unable load data from traffic database"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "c1":Landroid/database/Cursor;
    .restart local v8    # "c2":Landroid/database/Cursor;
    :cond_3
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .end local v8    # "c2":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-object v3, v15

    goto :goto_2

    .restart local v8    # "c2":Landroid/database/Cursor;
    :catch_3
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    :cond_5
    :try_start_a
    const-string v2, "uid"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .local v12, "uidIndex":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .local v9, "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    const/4 v2, -0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .local v11, "mUid":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v11    # "mUid":I
    .end local v12    # "uidIndex":I
    :catch_4
    move-exception v2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_5
    if-eqz v8, :cond_6

    if-eqz v3, :cond_c

    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_6
    :goto_6
    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .restart local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v12    # "uidIndex":I
    :cond_7
    :try_start_e
    const-string v2, "uid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/4 v2, -0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, "wUid":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    goto :goto_7

    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v12    # "uidIndex":I
    .end local v13    # "wUid":I
    :catchall_3
    move-exception v2

    goto :goto_5

    .restart local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v12    # "uidIndex":I
    .restart local v13    # "wUid":I
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .end local v13    # "wUid":I
    :cond_9
    move-object/from16 v0, p0

    iput-object v9, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v8, :cond_a

    if-eqz v3, :cond_b

    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_a
    :goto_8
    if-eqz v7, :cond_1

    if-eqz v15, :cond_d

    :try_start_10
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_1

    :catch_5
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    :try_start_11
    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_1

    .end local v14    # "x2":Ljava/lang/Throwable;
    :catch_6
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    :try_start_12
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v12    # "uidIndex":I
    :catch_7
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_6

    .restart local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v12    # "uidIndex":I
    :cond_d
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v8    # "c2":Landroid/database/Cursor;
    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v12    # "uidIndex":I
    :catch_8
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_3
.end method

.method private realSetUidRule(ILjava/lang/String;ZZ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableMobile"    # Z
    .param p4, "enableWifi"    # Z

    .prologue
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppCurrentConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .local v1, "current":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    if-ne v4, p3, :cond_1

    iget-boolean v4, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    if-ne v4, p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v3, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    .local v3, "newCurrent":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppCurrentConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mUidCurrentConfigs:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mUidCurrentConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v4, :cond_2

    const-string v4, "ApplicationNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "real set mobile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wifi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, p3}, Landroid/os/INetworkManagementService;->setMobileDataUidRule(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, p4}, Landroid/os/INetworkManagementService;->setWifiDataUidRule(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .local v0, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v4, :cond_4

    goto :goto_2
.end method

.method private setPendingControlRunnable(ILjava/lang/String;Z)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "executeImmediately"    # Z

    .prologue
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;)V

    .local v0, "canibr":Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .local v1, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    .local v2, "delayedControlMillis":J
    :goto_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v2    # "delayedControlMillis":J
    :cond_2
    iget-wide v2, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    goto :goto_1
.end method

.method private setUidRule(ILjava/lang/String;ZZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableMobile"    # Z
    .param p4, "enableWifi"    # Z

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x0

    if-ge p1, v6, :cond_1

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v2, :cond_0

    const-string v2, "ApplicationNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Do not change uid rule for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const-string v2, "ApplicationNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop to change Uid rule. Multiple packages share the same uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    aget-object v2, v1, v5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ApplicationNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop to change Uid rule. Current package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is different from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v2, "ApplicationNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no such package for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v1    # "packages":[Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .local v0, "globalConfig":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v0, :cond_6

    iget-boolean v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    and-int/2addr p3, v2

    iget-boolean v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    and-int/2addr p4, v2

    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->realSetUidRule(ILjava/lang/String;ZZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v2, "==========traffic uids============="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mobile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    iget-boolean v2, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    iget-boolean v2, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "==========delay======================"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default delay time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen off delay time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "==========managed network apps============="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get app network entry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isNetworkBlocked(II)Z
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mUidCurrentConfigs:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mUidCurrentConfigs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .local v0, "current":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-nez p1, :cond_0

    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    monitor-exit v2

    goto :goto_0

    .end local v0    # "current":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "current":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public noteActivityStackRemoved(I)V
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pausing activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;

    invoke-direct {v0, p0, p2, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V

    .local v0, "npar":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Ljava/lang/String;)V

    .local v0, "nrpr":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "ApplicationNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumed app die, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;

    invoke-direct {v1, p0, p2, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;

    invoke-direct {v0, p0, p2, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V

    .local v0, "nrar":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "nspr":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "ApplicationNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopping activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryNetworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryNetworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
