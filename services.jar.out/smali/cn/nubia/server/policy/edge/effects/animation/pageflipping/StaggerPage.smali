.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;
.super Ljava/lang/Object;
.source "StaggerPage.java"


# static fields
.field private static final TRIANGLE_STAGGER:I = 0x6

.field private static final TRIANGLE_STAGGER_SHADOW:I = 0x6


# instance fields
.field private mCbb:Ljava/nio/ByteBuffer;

.field private mFactor:F

.field private mIsleft:Z

.field private final mOffset:[F

.field private mRotation:I

.field private mShadowAlpha:F

.field private mStaggerAlpha:F

.field private mTextureIdStagger:I

.field private mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mVbb:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mStaggerAlpha:F

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mShadowAlpha:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    iput-boolean v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0xd8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private initLeft(FFFF[FF)V
    .locals 21
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    .prologue
    const/16 v19, 0x0

    .local v19, "n":I
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float p3, p3, v1

    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_0

    aget v1, p5, v19

    mul-float v2, p3, v1

    .local v2, "x0":F
    const/4 v3, 0x0

    .local v3, "y0":F
    aget v1, p5, v19

    mul-float v5, p3, v1

    .local v5, "x1":F
    move/from16 v6, p2

    .local v6, "y1":F
    mul-float v1, p1, p4

    aget v4, p5, v19

    mul-float v4, v4, p3

    add-float v8, v1, v4

    .local v8, "x2":F
    const/4 v9, 0x0

    .local v9, "y2":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    move/from16 v4, p6

    move/from16 v7, p6

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    const/4 v11, 0x0

    .local v11, "x0Ex":F
    const/4 v12, 0x0

    .local v12, "y0Ex":F
    const/4 v13, 0x0

    .local v13, "x1Ex":F
    const/high16 v14, 0x3f800000    # 1.0f

    .local v14, "y1Ex":F
    move/from16 v15, p4

    .local v15, "x2Ex":F
    const/16 v16, 0x0

    .local v16, "y2Ex":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    move/from16 v3, p2

    mul-float v1, p1, p4

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "n":I
    .local v20, "n":I
    aget v4, p5, v19

    mul-float v4, v4, p3

    add-float v2, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    move/from16 v4, p6

    move/from16 v7, p6

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    move/from16 v11, p4

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v20

    .end local v20    # "n":I
    .restart local v19    # "n":I
    goto/16 :goto_0

    .end local v2    # "x0":F
    .end local v3    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v8    # "x2":F
    .end local v9    # "y2":F
    .end local v11    # "x0Ex":F
    .end local v12    # "y0Ex":F
    .end local v13    # "x1Ex":F
    .end local v14    # "y1Ex":F
    .end local v15    # "x2Ex":F
    .end local v16    # "y2Ex":F
    :cond_0
    return-void
.end method

.method private initRight(FFFF[FF)V
    .locals 21
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    .prologue
    const/16 v19, 0x0

    .local v19, "n":I
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float p3, p3, v1

    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_0

    mul-float v1, p1, p4

    aget v4, p5, v19

    mul-float v4, v4, p3

    sub-float v2, v1, v4

    .local v2, "x0":F
    const/4 v3, 0x0

    .local v3, "y0":F
    mul-float v1, p1, p4

    aget v4, p5, v19

    mul-float v4, v4, p3

    sub-float v5, v1, v4

    .local v5, "x1":F
    move/from16 v6, p2

    .local v6, "y1":F
    aget v1, p5, v19

    mul-float v1, v1, p3

    sub-float v8, p1, v1

    .local v8, "x2":F
    const/4 v9, 0x0

    .local v9, "y2":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    move/from16 v4, p6

    move/from16 v7, p6

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    move/from16 v11, p4

    .local v11, "x0Ex":F
    const/4 v12, 0x0

    .local v12, "y0Ex":F
    move/from16 v13, p4

    .local v13, "x1Ex":F
    const/high16 v14, 0x3f800000    # 1.0f

    .local v14, "y1Ex":F
    const/high16 v15, 0x3f800000    # 1.0f

    .local v15, "x2Ex":F
    const/16 v16, 0x0

    .local v16, "y2Ex":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    move/from16 v3, p2

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "n":I
    .local v20, "n":I
    aget v1, p5, v19

    mul-float v1, v1, p3

    sub-float v2, p1, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    move/from16 v4, p6

    move/from16 v7, p6

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v20

    .end local v20    # "n":I
    .restart local v19    # "n":I
    goto/16 :goto_0

    .end local v2    # "x0":F
    .end local v3    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v8    # "x2":F
    .end local v9    # "y2":F
    .end local v11    # "x0Ex":F
    .end local v12    # "y0Ex":F
    .end local v13    # "x1Ex":F
    .end local v14    # "y1Ex":F
    .end local v15    # "x2Ex":F
    .end local v16    # "y2Ex":F
    :cond_0
    return-void
.end method

.method private initShaodwLeft(FFFF[FF)V
    .locals 22
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    .prologue
    const/high16 v21, 0x41a00000    # 20.0f

    .local v21, "shadowWidth":F
    const/16 v19, 0x0

    .local v19, "n":I
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float p3, p3, v1

    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_0

    aget v1, p5, v19

    mul-float v1, v1, p3

    sub-float v2, v1, v21

    .local v2, "x0":F
    const/4 v3, 0x0

    .local v3, "y0":F
    aget v1, p5, v19

    mul-float v1, v1, p3

    sub-float v5, v1, v21

    .local v5, "x1":F
    move/from16 v6, p2

    .local v6, "y1":F
    aget v1, p5, v19

    mul-float v8, p3, v1

    .local v8, "x2":F
    const/4 v9, 0x0

    .local v9, "y2":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/high16 v4, 0x40000000    # 2.0f

    sub-float v7, p6, v4

    move/from16 v4, p6

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    const/4 v11, 0x0

    .local v11, "x0Ex":F
    const v12, 0x3e4ccccd    # 0.2f

    .local v12, "y0Ex":F
    const/4 v13, 0x0

    .local v13, "x1Ex":F
    const v14, 0x3f4ccccd    # 0.8f

    .local v14, "y1Ex":F
    const v15, 0x3dcccccd    # 0.1f

    .local v15, "x2Ex":F
    const v16, 0x3e4ccccd    # 0.2f

    .local v16, "y2Ex":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "n":I
    .local v20, "n":I
    aget v1, p5, v19

    mul-float v2, p3, v1

    move/from16 v3, p2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    move/from16 v4, p6

    move/from16 v7, p6

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v20

    .end local v20    # "n":I
    .restart local v19    # "n":I
    goto/16 :goto_0

    .end local v2    # "x0":F
    .end local v3    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v8    # "x2":F
    .end local v9    # "y2":F
    .end local v11    # "x0Ex":F
    .end local v12    # "y0Ex":F
    .end local v13    # "x1Ex":F
    .end local v14    # "y1Ex":F
    .end local v15    # "x2Ex":F
    .end local v16    # "y2Ex":F
    :cond_0
    return-void
.end method

.method private initShaodwRight(FFFF[FF)V
    .locals 22
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    .prologue
    const/high16 v21, 0x41a00000    # 20.0f

    .local v21, "shadowWidth":F
    const/16 v19, 0x0

    .local v19, "n":I
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float p3, p3, v1

    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_0

    aget v1, p5, v19

    mul-float v1, v1, p3

    sub-float v2, p1, v1

    .local v2, "x0":F
    const/4 v3, 0x0

    .local v3, "y0":F
    aget v1, p5, v19

    mul-float v1, v1, p3

    sub-float v5, p1, v1

    .local v5, "x1":F
    move/from16 v6, p2

    .local v6, "y1":F
    add-float v8, v2, v21

    .local v8, "x2":F
    const/4 v9, 0x0

    .local v9, "y2":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/high16 v4, 0x40000000    # 2.0f

    sub-float v4, p6, v4

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v7, p6, v7

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v10, p6, v10

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    const v11, 0x3f666666    # 0.9f

    .local v11, "x0Ex":F
    const v12, 0x3e4ccccd    # 0.2f

    .local v12, "y0Ex":F
    const v13, 0x3f666666    # 0.9f

    .local v13, "x1Ex":F
    const v14, 0x3f4ccccd    # 0.8f

    .local v14, "y1Ex":F
    const/high16 v15, 0x3f800000    # 1.0f

    .local v15, "x2Ex":F
    const v16, 0x3e4ccccd    # 0.2f

    .local v16, "y2Ex":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "n":I
    .local v20, "n":I
    aget v1, p5, v19

    mul-float v1, v1, p3

    sub-float v1, p1, v1

    add-float v2, v1, v21

    move/from16 v3, p2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    move/from16 v4, p6

    move/from16 v7, p6

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v10, v1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v18

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v20

    .end local v20    # "n":I
    .restart local v19    # "n":I
    goto/16 :goto_0

    .end local v2    # "x0":F
    .end local v3    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v8    # "x2":F
    .end local v9    # "y2":F
    .end local v11    # "x0Ex":F
    .end local v12    # "y0Ex":F
    .end local v13    # "x1Ex":F
    .end local v14    # "y1Ex":F
    .end local v15    # "x2Ex":F
    .end local v16    # "y2Ex":F
    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V
    .locals 14
    .param p1, "shaderProgram"    # Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .prologue
    const/16 v2, 0x1406

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    .local v13, "n":I
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .local v5, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .local v11, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v0, v0

    if-ge v12, v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v13, v13, 0x1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v13, :cond_0

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v1

    invoke-static {v0, v4, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mStaggerAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v6, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v7, 0x2

    const/16 v10, 0x8

    move v8, v2

    move v9, v3

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x4

    mul-int/lit8 v1, v13, 0x3

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0
.end method

.method public onDrawFrameShadow(ILcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V
    .locals 15
    .param p1, "textureId"    # I
    .param p2, "programNormal"    # Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .prologue
    const/4 v14, 0x0

    .local v14, "n":I
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .local v12, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v1, v1

    if-ge v13, v1, :cond_3

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v13

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v14, v14, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v14, :cond_0

    move-object/from16 v0, p2

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move-object/from16 v0, p2

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p2

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mShadowAlpha:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object/from16 v0, p2

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p2

    iget v7, v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p2

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p2

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v0, p1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    mul-int/lit8 v3, v14, 0x3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0
.end method

.method public onProcess(FF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    .local v3, "offsetX":F
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_0

    const v4, 0x3d4ccccd    # 0.05f

    .local v4, "xExWidth":F
    :goto_0
    const/4 v0, 0x3

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    .local v5, "offSetXFactor":[F
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x2

    aget v6, v0, v1

    .local v6, "z":F
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initLeft(FFFF[FF)V

    :goto_1
    return-void

    .end local v4    # "xExWidth":F
    .end local v5    # "offSetXFactor":[F
    .end local v6    # "z":F
    :cond_0
    const v4, 0x3f733333    # 0.95f

    goto :goto_0

    .restart local v4    # "xExWidth":F
    .restart local v5    # "offSetXFactor":[F
    .restart local v6    # "z":F
    :cond_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initRight(FFFF[FF)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method public onProcessShadow(FF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_0

    const v4, 0x3d4ccccd    # 0.05f

    .local v4, "xExWidth":F
    :goto_0
    const/4 v0, 0x3

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    .local v5, "offSetXFactor":[F
    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float v3, v0, v1

    .local v3, "offsetX":F
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v0, v1

    .local v6, "z":F
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initShaodwLeft(FFFF[FF)V

    :goto_1
    return-void

    .end local v3    # "offsetX":F
    .end local v4    # "xExWidth":F
    .end local v5    # "offSetXFactor":[F
    .end local v6    # "z":F
    :cond_0
    const v4, 0x3f733333    # 0.95f

    goto :goto_0

    .restart local v3    # "offsetX":F
    .restart local v4    # "xExWidth":F
    .restart local v5    # "offSetXFactor":[F
    .restart local v6    # "z":F
    :cond_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initShaodwRight(FFFF[FF)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    return-void
.end method

.method public setIsLeft(Z)V
    .locals 0
    .param p1, "isLeft"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    return-void
.end method

.method public setOffset(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mShadowAlpha:F

    return-void
.end method

.method public setStaggerAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mStaggerAlpha:F

    return-void
.end method

.method public setTextureIdStagger(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    return-void
.end method
