.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
.super Ljava/lang/Object;
.source "Triangle.java"


# instance fields
.field public mIsValid:Z

.field private final mTextureCoor:[F

.field private final mVertex:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    return v0
.end method

.method public getTextureCoor()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    return-object v0
.end method

.method public getVertex()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    return-object v0
.end method

.method public setIsValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    return-void
.end method

.method public setTextureCoor(FFFFFFI)V
    .locals 7
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "rotation"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch p7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p1, v0, v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p2, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p3, v0, v5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p4, v0, v6

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x4

    aput p5, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p2

    aput v1, v0, v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p1, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p4

    aput v1, v0, v5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p3, v0, v6

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x4

    sub-float v2, v3, p6

    aput v2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x5

    aput p5, v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p1

    aput v1, v0, v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p2

    aput v1, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p3

    aput v1, v0, v5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p4

    aput v1, v0, v6

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x4

    sub-float v2, v3, p5

    aput v2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x5

    sub-float v2, v3, p6

    aput v2, v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p2, v0, v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p1

    aput v1, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p4, v0, v5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v1, v3, p3

    aput v1, v0, v6

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x4

    aput p6, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    const/4 v1, 0x5

    sub-float v2, v3, p5

    aput v2, v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setVertex(FFFFFFFFF)V
    .locals 2
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "z0"    # F
    .param p4, "x1"    # F
    .param p5, "y1"    # F
    .param p6, "z1"    # F
    .param p7, "x2"    # F
    .param p8, "y2"    # F
    .param p9, "z2"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x4

    aput p5, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x6

    aput p7, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x7

    aput p8, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/16 v1, 0x8

    aput p9, v0, v1

    return-void
.end method
