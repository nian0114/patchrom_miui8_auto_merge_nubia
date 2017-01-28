.class public final Lcn/nubia/server/ServiceInfoCache;
.super Ljava/lang/Object;
.source "ServiceInfoCache.java"


# static fields
.field static mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/ServiceInfoCache;->mInfos:Ljava/util/ArrayList;

    const-string v0, "cn.nubia.server.SystemAccessService"

    invoke-static {v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;)V

    const-string v0, "cn.nubia.server.ClipExtraService"

    invoke-static {v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;)V

    const-string v0, "cn.nubia.server.breathinglight.BreathingLightService"

    invoke-static {v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;)V

    const-string v0, "cn.nubia.server.TeleStaticService"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    const-string v0, "com.android.server.wm.SmartKeyActionService"

    sget-boolean v1, Lnubia/smartkey/Utils;->sHasSmartKey:Z

    sget-object v2, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1, v2}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V

    const-string v0, "cn.nubia.server.appmgmt.ApplicationManagerService"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    const-string v0, "cn.nubia.server.TIHapticsService"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addService(Ljava/lang/String;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Z)V

    return-void
.end method

.method private static addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "seq"    # Lcn/nubia/server/Sequence;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V

    return-void
.end method

.method private static addService(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "hasFeature"    # Z

    .prologue
    sget-object v0, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    invoke-static {p0, p1, v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V

    return-void
.end method

.method private static addService(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "hasFeature"    # Z
    .param p2, "seq"    # Lcn/nubia/server/Sequence;

    .prologue
    new-instance v0, Lcn/nubia/server/ServiceInfo;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/ServiceInfo;-><init>(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V

    .local v0, "info":Lcn/nubia/server/ServiceInfo;
    sget-object v1, Lcn/nubia/server/ServiceInfoCache;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
