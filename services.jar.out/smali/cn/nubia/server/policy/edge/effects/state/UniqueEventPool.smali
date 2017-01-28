.class public Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;
.super Ljava/lang/Object;
.source "UniqueEventPool.java"


# instance fields
.field private mActivePointerId:I

.field private mCurrentY:F

.field private mFirstY:F

.field private mFirstYSetted:Z

.field private mPointerIdSetted:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    return-void
.end method

.method private getY(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MotionEvent with invalidate pointer id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    return v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    return-void
.end method

.method public getCurrentDeltaY()F
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_0

    const-string v0, "State"

    const-string v1, "getCurrentDeltaY but FirstY not setted"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCurrentY()F
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_0

    const-string v0, "State"

    const-string v1, "getCurrentDeltaY but FirstY not setted"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    return v0
.end method

.method public initPointerId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init UniqueEventPool with pointer id = -1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    return-void
.end method

.method public updateEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "update Event with pointer id not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    :cond_1
    return-void
.end method

.method public updateY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "update Event with pointer id not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    :cond_1
    return-void
.end method
