.class public Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;
.super Ljava/lang/Object;
.source "UniqueDirectionPool.java"


# static fields
.field public static final LEFT_DOWNWARD:I = 0x1

.field public static final LEFT_UPWARD:I = 0x2

.field public static final RIGHT_DOWNWARD:I = 0x3

.field public static final RIGHT_UPWARD:I = 0x4


# instance fields
.field private mDirection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    return-void
.end method

.method private CheckIfInvalidDirection()V
    .locals 4

    .prologue
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    .local v0, "invalid":Z
    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent to get direction but invalid, direction is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "invalid":Z
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0    # "invalid":Z
    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMappedDirection()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->CheckIfInvalidDirection()V

    const/4 v0, -0x1

    .local v0, "mappedDirection":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isLeft()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->CheckIfInvalidDirection()V

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpward()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->CheckIfInvalidDirection()V

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    return-void
.end method
