.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppNetworkConfig"
.end annotation


# instance fields
.field public allowDisconnectIn2GAndScreenOff:Z

.field public delayedControlMillis:J

.field public enableMobile:Z

.field public enableMobileInScreenOff:Z

.field public enableWifi:Z

.field public enableWifiInScreenOff:Z

.field public restore_network_interval:J

.field public returnNoNetworkWhenDisabled:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 4
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    return-void
.end method

.method public constructor <init>(ZZJZZZZJ)V
    .locals 5
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "delay"    # J
    .param p5, "mobileInScreenOff"    # Z
    .param p6, "wifiInScreenOff"    # Z
    .param p7, "returnNoNetwork"    # Z
    .param p8, "allow"    # Z
    .param p9, "interval"    # J

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    iput-wide p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    iput-boolean p6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    iput-boolean p7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    iput-boolean p8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    iput-wide p9, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 4
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "returnNoNetwork"    # Z

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 4
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "mobileInScreenOff"    # Z
    .param p4, "wifiInScreenOff"    # Z
    .param p5, "returnNoNetwork"    # Z

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    return-void
.end method
