.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private mBgAlpha:F

.field private mBgDim:F

.field private mFactor:F

.field private mFgAlpha:F

.field private mFgDim:F

.field private final mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private final mOffset:[F

.field private mTextureIdBg:I

.field private mTextureIdFg:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V
    .locals 3
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "factor"    # F
    .param p3, "textureIdFg"    # I
    .param p4, "textureIdBg"    # I
    .param p5, "fgAlpha"    # F
    .param p6, "bgAlpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    iput p4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    iput p5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    iput p6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;)V
    .locals 5
    .param p1, "page"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v4

    aput v1, v0, v4

    return-void
.end method


# virtual methods
.method public getBgAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    return v0
.end method

.method public getBgDim()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    return v0
.end method

.method public getFactor()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    return v0
.end method

.method public getFgAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    return v0
.end method

.method public getFgDim()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    return v0
.end method

.method public getLineFlip()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    return-object v0
.end method

.method public getOffset()[F
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [F

    .local v0, "offset":[F
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v4

    aput v1, v0, v4

    return-object v0
.end method

.method public getTextureIdBg()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    return v0
.end method

.method public getTextureIdFg()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    return v0
.end method

.method public set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V
    .locals 1
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "factor"    # F
    .param p3, "textureIdFg"    # I
    .param p4, "textureIdBg"    # I
    .param p5, "fgAlpha"    # F
    .param p6, "bgAlpha"    # F

    .prologue
    iput p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    iput p4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    iput p5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    iput p6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    return-void
.end method

.method public setBgAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    return-void
.end method

.method public setDim(FF)V
    .locals 0
    .param p1, "fgDim"    # F
    .param p2, "bgDim"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    return-void
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    return-void
.end method

.method public setFgAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    return-void
.end method

.method public setLineFlip(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V
    .locals 1
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    return-void
.end method

.method public setOffset(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    return-void
.end method

.method public setTextureIdBg(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    return-void
.end method

.method public setTextureIdFg(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    return-void
.end method
