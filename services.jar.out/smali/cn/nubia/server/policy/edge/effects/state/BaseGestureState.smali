.class public abstract Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.super Ljava/lang/Object;
.source "BaseGestureState.java"


# instance fields
.field protected mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

.field protected mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

.field protected mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

.field private mLastState:I

.field protected mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

.field protected mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

.field private final mStatusName:I

.field protected mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "stateName"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mStatusName:I

    return-void
.end method


# virtual methods
.method public abstract canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
.end method

.method public abstract enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
.end method

.method public getLastState()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mLastState:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mStatusName:I

    return v0
.end method

.method public abstract handleEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract leave()V
.end method

.method public setAnimSyncCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    return-void
.end method

.method public setDirectionPool(Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;)V
    .locals 0
    .param p1, "directionPool"    # Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    return-void
.end method

.method public setEventPool(Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;)V
    .locals 0
    .param p1, "eventPool"    # Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    return-void
.end method

.method public setLastState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mLastState:I

    return-void
.end method

.method public setMachineNotifier(Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    return-void
.end method

.method public setStateContext(Lcn/nubia/server/policy/edge/effects/state/StateContext;)V
    .locals 0
    .param p1, "stateContext"    # Lcn/nubia/server/policy/edge/effects/state/StateContext;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    return-void
.end method

.method public setWatchDogLite(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;)V
    .locals 0
    .param p1, "watchDogLite"    # Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    return-void
.end method
