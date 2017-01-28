.class public Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;
.super Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.source "StartSlideInner.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mEntered:Z

.field private mWindowCreated:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "stateName"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;-><init>(I)V

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mEntered:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mWindowCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    return-void
.end method

.method private prepare()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    const/16 v2, 0x3e8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->addFitWindow()V

    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mAnimSyncCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingInnerAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canShowLauncherOnFirstDraw()V

    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canChangeToEnding(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateContext;->getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->canShow()V

    goto :goto_0
.end method


# virtual methods
.method public canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .param p2, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p3, "loader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .prologue
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSlideInner enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSlideInner enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mEntered:Z

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->prepare()V

    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    return-void
.end method

.method public leave()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mEntered:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mWindowCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mEntered:Z

    if-nez v0, :cond_0

    const-string v0, "State"

    const-string v1, "onSurfaceCreated called but StartSlideInner state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mWindowCreated:Z

    if-eqz v0, :cond_1

    const-string v0, "State"

    const-string v1, "onSurfaceCreated called here more than once in StartSlideInner"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onSurfaceCreated called here more than once in StartSlideInner"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated in StartSlideInner time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated in StartSlideInner time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->mWindowCreated:Z

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;->startAnimation()V

    goto :goto_0
.end method
