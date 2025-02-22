.class public Lcn/nubia/server/policy/edge/effects/state/StateFactory;
.super Ljava/lang/Object;
.source "StateFactory.java"


# instance fields
.field private final mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

.field private final mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

.field private final mEnding:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

.field private final mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

.field private final mIdle:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

.field private final mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

.field private final mWatchdog:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;Lcn/nubia/server/policy/edge/effects/state/StateContext;)V
    .locals 12
    .param p1, "notifier"    # Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;
    .param p2, "animFinishCallback"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
    .param p3, "directionPool"    # Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;
    .param p4, "eventPool"    # Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;
    .param p5, "watchdog"    # Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;
    .param p6, "stateContext"    # Lcn/nubia/server/policy/edge/effects/state/StateContext;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mWatchdog:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/Idle;

    const/16 v10, 0x457

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/Idle;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mIdle:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/Ending;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/Ending;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mEnding:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v2

    .local v2, "preSingleSlide":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;

    const/16 v10, 0x1002

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v6

    .local v6, "startSingleSlide":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v3

    .local v3, "preSingleloop":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v7

    .local v7, "startSingleloop":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/SingleFail;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/SingleFail;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v4

    .local v4, "singleFail":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/StartGuide;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/StartGuide;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v5

    .local v5, "startGuide":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/FailGuide;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/FailGuide;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v1

    .local v1, "failGuide":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    new-instance v9, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcn/nubia/server/policy/edge/effects/state/StartSlideInner;-><init>(I)V

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v8

    .local v8, "startSlideInner":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x457

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mIdle:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x8ae

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mEnding:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x1005

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x1006

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4004

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4005

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x1001

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x1002

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4008

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4009

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x3005

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x3006

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4006

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4007

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x3001

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x400a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x1003

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x3003

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const v10, 0x10001

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const v10, 0x10002

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const v10, 0x40001

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const v10, 0x40002

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x2005

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x2006

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x2001

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x2002

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x2003

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4002

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x4003

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    const/16 v10, 0x5001

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initState(Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    .locals 1
    .param p1, "state"    # Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->setMachineNotifier(Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->setDirectionPool(Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->setEventPool(Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->setAnimSyncCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mWatchdog:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->setWatchDogLite(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->setStateContext(Lcn/nubia/server/policy/edge/effects/state/StateContext;)V

    return-object p1
.end method


# virtual methods
.method public getEndingStateNode()Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mEnding:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    return-object v0
.end method

.method public getIdleStateNode()Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mIdle:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    return-object v0
.end method

.method public getStateNode(I)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    .locals 4
    .param p1, "status"    # I

    .prologue
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .local v0, "state":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find state for status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getStateNode(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->mMap:Ljava/util/HashMap;

    iget v2, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .local v0, "state":Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find state for gesture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method
