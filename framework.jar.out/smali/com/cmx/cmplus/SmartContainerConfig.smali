.class public Lcom/cmx/cmplus/SmartContainerConfig;
.super Ljava/lang/Object;
.source "SmartContainerConfig.java"


# static fields
.field public static CONFIG_PROPERTY:Ljava/lang/String;

.field private static FEATURE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static WITH_OUT_ALL:Z

.field public static WITH_OUT_APP_CLONE:Z

.field public static WITH_OUT_CROSS_BOX_SHARE:Z

.field public static WITH_OUT_VIRTUAL_BOX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, ""

    sput-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->FEATURE:Ljava/lang/String;

    const-string v0, "SmartContainerConfig"

    sput-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->TAG:Ljava/lang/String;

    const-string v0, "persist.sys.cmplus.disabled"

    sput-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->CONFIG_PROPERTY:Ljava/lang/String;

    invoke-static {}, Lcom/cmx/cmplus/SmartContainerConfig;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->CONFIG_PROPERTY:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->FEATURE:Ljava/lang/String;

    sget-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configured features : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cmx/cmplus/SmartContainerConfig;->FEATURE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_ALL:Z

    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "virtualbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "clone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/cmx/cmplus/SmartContainerConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "cross-box-share"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_CROSS_BOX_SHARE:Z

    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static turnOff()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_ALL:Z

    sput-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    sput-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_CROSS_BOX_SHARE:Z

    sput-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    return-void
.end method
