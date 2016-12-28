.class public Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;
.super Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
.source "ExitHallNearCtrl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dealWhenOpenAndStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceScreen()V

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->setSmartFaceDisplayFlagWallper(Z)V

    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->trrigerPhoneWindowFar()V

    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->hasGloveFeather()Z

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenSlideNodeForSmartFace(ZZ)V

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    return-void
.end method

.method public doOperationOnUI()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->dealWhenOpenAndStop()V

    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
