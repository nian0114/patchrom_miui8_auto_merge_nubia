.class public Lcn/nubia/server/policy/edge/effects/state/StateVerifier;
.super Ljava/lang/Object;
.source "StateVerifier.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
.implements Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;
.implements Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
.implements Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mAppWindowShowd:Z

.field private mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

.field private final mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

.field private mFirstFrameDraw:Z

.field private mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

.field private mLauncherShowPending:Z

.field private mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

.field private mLauncherWindowShowd:Z

.field private final mLetGoState:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

.field private mNeedWaitAnimation:Z

.field private mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

.field private final mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

.field private final mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

.field private final mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

.field private mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;
    .param p3, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLetGoState:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/state/StateLock;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    invoke-direct {v0, p3}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;-><init>(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;-><init>()V

    new-instance v4, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-direct {v4}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;-><init>()V

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;-><init>(Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;Lcn/nubia/server/policy/edge/effects/state/StateContext;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->getIdleStateNode()Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    return-void
.end method

.method private transferToIdleState(Z)V
    .locals 3
    .param p1, "forceStop"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->forceReset()V

    :goto_0
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    const/16 v0, 0x457

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToSpecialState(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->releaseLock()V

    goto :goto_0
.end method

.method private transferToSpecialState(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->leave()V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->getStateNode(I)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V

    return-void
.end method

.method private transferToStateInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->leave()V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->getStateNode(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V

    return-void
.end method

.method private willBlockByLock(I)Z
    .locals 3
    .param p1, "action"    # I

    .prologue
    const/16 v2, 0x457

    const/4 v0, 0x1

    const v1, 0x99001

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->hasLock()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->getName()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->setLock()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->toggleOff()V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->getName()I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v1, "State"

    const-string v2, "anime finished, we toggle off and release lock"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->releaseLock()V

    goto :goto_0

    :cond_2
    const-string v1, "anime not finished, we only toggle off"

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "I received 2 idle action without any gesture action between them"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->hasLock()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->toggleOn()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLetGoState:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;->canApplyStateChange(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    return-void
.end method

.method public canChangeToEnding(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8ae

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->getName()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isStartSingleSlide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " give me null package name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canChangeToEnding no observation, last state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToSpecialState(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToSpecialState(I)V

    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canChangeToEnding observer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-virtual {v0, p1, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->beginObserve(Ljava/lang/String;Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;)V

    goto :goto_0
.end method

.method public canShowLauncherOnFirstDraw()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->beginObserve(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateContext;->getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->canShow()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    goto :goto_0
.end method

.method public deliverEventToState(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->handleEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public getLastGesture()Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    return-object v0
.end method

.method public initControllers(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)V
    .locals 0
    .param p1, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p2, "textureCaches"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p3, "resLoader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;
    .param p4, "launcherWindowObserver"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    return-void
.end method

.method public isAppWindowCreated()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    return v0
.end method

.method public isLauncherWindowCreated()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    :cond_0
    return-void
.end method

.method public onAnimationFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onAnimationFinish"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinish in StateMachine time = "

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

    const-string v2, "onAnimationFinish in StateMachine time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToIdleState(Z)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->stopObserve()V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->stopObserve()V

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    return-void
.end method

.method public onCaughtException()V
    .locals 2

    .prologue
    const-string v0, "State"

    const-string v1, "onCaughtException in StateMachine"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToIdleState(Z)V

    return-void
.end method

.method public onDrawFirstFrame()V
    .locals 4

    .prologue
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFirstFrame in StateMachine time = "

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

    const-string v2, "onDrawFirstFrame in StateMachine time = "

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

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->beginObserve(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateContext;->getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->canShow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    :cond_0
    return-void
.end method

.method public onLauncherFirstFrameDraw()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    const-string v0, "FitAnim"

    const-string v1, "StateVerifier onLauncherFirstFrameDraw"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceFirstShown(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    goto :goto_0
.end method

.method public onWaiUntilTimeOut()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "obseved window never showed until time out"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWaitLauncherUntilTimeOut()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "obseved launcher window never showed until time out"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transferToState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    const/4 v0, 0x1

    iget v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->willBlockByLock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToStateInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    goto :goto_0

    :cond_1
    const-string v1, "State"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we can\'t transfer to state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", so we reset the machine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToIdleState(Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method
