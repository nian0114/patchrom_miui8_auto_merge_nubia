.class public Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;
.super Ljava/lang/Object;
.source "SmartFaceServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SMARTFACE_PACKAGE:Ljava/lang/String; = "cn.nubia.smartface"

.field private static final SMARTFACE_SERVICE_CLASS:Ljava/lang/String; = "cn.nubia.smartface.SmartFaceService"

.field private static final TAG:Ljava/lang/String; = "SmartFaceServiceDelegate"


# instance fields
.field private mCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

.field private mHandler:Landroid/os/Handler;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mShowLattice:Z

.field private mShowWindow:Z

.field private mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowWindow:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowLattice:Z

    new-instance v0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;-><init>(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;)Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;
    .param p1, "x1"    # Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->resetStates()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)Lcn/nubia/server/policy/smartface/util/PowerCtrl;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    return-object v0
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.smartface"

    const-string v2, "cn.nubia.smartface.SmartFaceService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SmartFaceServiceDelegate"

    const-string v2, "*** SmartFace: can\'t bind to cn.nubia.smartface.SmartFaceService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "SmartFaceServiceDelegate"

    const-string v2, "*** SmartFace started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetStates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowLattice:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowWindow:Z

    return-void
.end method


# virtual methods
.method public bindServiceSuccess()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->resetStates()V

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->dismiss()V

    goto :goto_0
.end method

.method public isWindowShow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowLattice:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowWindow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEverSmartFaceNearFlag()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->setEverSmartFaceNearFlag()V

    goto :goto_0
.end method

.method public setSmartFaceCallback(Lnubia/os/ISmartFaceCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/ISmartFaceCallback;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->setSmartFaceCallback(Lnubia/os/ISmartFaceCallback;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowWindow:Z

    goto :goto_0
.end method

.method public showLattice()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->showLattice()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mShowLattice:Z

    goto :goto_0
.end method
