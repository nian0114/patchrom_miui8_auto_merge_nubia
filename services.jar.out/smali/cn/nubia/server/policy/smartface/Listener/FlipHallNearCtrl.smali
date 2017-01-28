.class public Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;
.super Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
.source "FlipHallNearCtrl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public doOperationOnUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, v2}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->setNeedTurnOffScreen(Z)V

    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;->triggerPhoneWindowNear()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;->hasGloveFeather()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;->goToSleep(J)V

    invoke-static {v2}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    return v0
.end method
