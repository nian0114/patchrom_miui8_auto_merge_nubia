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

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 744
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 745
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 746
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 747
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 748
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    .line 751
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 752
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 753
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

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 744
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 745
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 746
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 747
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 748
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    .line 774
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 775
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 776
    iput-wide p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 777
    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 778
    iput-boolean p6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 779
    iput-boolean p7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 780
    iput-boolean p8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 781
    iput-wide p9, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    .line 782
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

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 744
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 745
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 746
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 747
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 748
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    .line 756
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 757
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 758
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 759
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

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 744
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 745
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 746
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 747
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 748
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    .line 764
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 765
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 766
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 767
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 768
    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 769
    return-void
.end method
