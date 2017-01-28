.class public Lcn/nubia/server/policy/edge/effects/GestureActionFilter;
.super Ljava/lang/Object;
.source "GestureActionFilter.java"


# instance fields
.field private mLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    return-void
.end method


# virtual methods
.method public resetFilter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    return-void
.end method

.method public willFilterThisOut(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v2, 0x6000

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    goto :goto_0
.end method
