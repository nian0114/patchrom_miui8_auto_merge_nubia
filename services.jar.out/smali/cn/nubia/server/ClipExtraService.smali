.class public Lcn/nubia/server/ClipExtraService;
.super Lcn/nubia/server/NubiaSystemService;
.source "ClipExtraService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipExtraService"


# instance fields
.field private final mClipServiceExtraStub:Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;-><init>(Lcn/nubia/server/ClipExtraService;)V

    iput-object v0, p0, Lcn/nubia/server/ClipExtraService;->mClipServiceExtraStub:Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;

    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/ClipExtraService;->mClipServiceExtraStub:Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "nubia.clipserviceext"

    return-object v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
