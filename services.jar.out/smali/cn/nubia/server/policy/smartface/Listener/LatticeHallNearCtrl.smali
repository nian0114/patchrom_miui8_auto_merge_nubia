.class public Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;
.super Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
.source "LatticeHallNearCtrl.java"


# static fields
.field private static final KEEP_SCREEN_ON_TIME:J = 0x7d0L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private doCloseLeather()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->setNeedTurnOffScreen(Z)V

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->isOtherSmartViewShow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->showSmartFaceMain()V

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->setSmartFaceDisplayFlagWallper(Z)V

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->triggerPhoneWindowNear()V

    invoke-static {v1, v1}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenSlideNodeForSmartFace(ZZ)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    return-void
.end method

.method private showSmartFaceMain()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceLatticeScreen()V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->goToSleep(J)V

    return-void
.end method


# virtual methods
.method public doOperationOnUI()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;->doCloseLeather()V

    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method
