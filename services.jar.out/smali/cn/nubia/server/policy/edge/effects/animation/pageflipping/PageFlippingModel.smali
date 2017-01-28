.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;
.super Ljava/lang/Object;
.source "PageFlippingModel.java"


# static fields
.field private static final DRAW_BG:I = 0x4

.field private static final DRAW_BG_FULL:I = 0x80

.field private static final DRAW_FG:I = 0x1

.field private static final DRAW_FG_BACK:I = 0x2

.field private static final DRAW_FG_FULL:I = 0x40

.field private static final DRAW_ROLL:I = 0x8

.field private static final DRAW_SHADOW_PAGE:I = 0x10

.field private static final DRAW_SHADOW_ROLL:I = 0x20

.field public static final END_ANGLE:F

.field public static final FLIP_DIAMETER_MAX:I = 0x12c

.field public static final FLIP_RADIUS_MAX:I = 0x96

.field public static final FLIP_RADIUS_MIN:I = 0x32

.field private static final LAYER_BG_HEIGHT:F = 0.0f

.field private static final LAYER_FG_HEIGHT:F = 0.0f

.field private static final ROLL_BLOCK_NUM:I = 0x10

.field private static final SHADOW_WIDTH:I = 0x50

.field private static final START_ANGLE:F

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field public static final TRIANGLE_MAX:I = 0x26

.field private static final TRIANGLE_MAX_BG:I = 0x3

.field private static final TRIANGLE_MAX_FG:I = 0x3

.field private static final TRIANGLE_MAX_FG_BACK:I = 0x3

.field private static final TRIANGLE_MAX_ROLL:I = 0x26


# instance fields
.field private mBasePoint:Landroid/graphics/PointF;

.field private mBasePointEx:Landroid/graphics/PointF;

.field private mBetweenEnd:F

.field private mBgDim:F

.field private mDrawFlag:I

.field private mHeight:I

.field private mIsNeedDraw:Z

.field private mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineShadowPageNum:I

.field private mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

.field private mPageRect:Landroid/graphics/Rect;

.field private mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

.field private mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

.field private mRadius:F

.field private mRollNum:I

.field private mRollTexCoor:[F

.field private mRollVertex:[F

.field private mShadowPageNum:I

.field private mShadowPageTexCoor:[F

.field private mShadowPageVertex:[F

.field private mShadowRollNum:I

.field private mShadowRollTexCoor:[F

.field private mShadowRollVertex:[F

.field private mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleNumBg:I

.field private mTriangleNumFg:I

.field private mTriangleNumFgBack:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    const-wide v0, 0x4052c00000000000L    # 75.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->init()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->initAllTriangle()V

    return-void
.end method

.method private calculateBg(I)V
    .locals 23
    .param p1, "rotation"    # I

    .prologue
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v22

    .local v22, "offset":[F
    const/4 v5, 0x0

    .local v5, "z":F
    const/4 v2, 0x2

    aget v2, v22, v2

    add-float/2addr v5, v2

    const/4 v2, 0x1

    const/16 v8, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDraw(I)Z

    move-result v8

    if-ne v2, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFullScreen([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;FI)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .local v20, "index":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/4 v8, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v8, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getRegionIndex(I[I)I

    move-result v21

    .local v21, "num":I
    add-int/lit8 v21, v21, -0x2

    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    aget v8, v22, v8

    add-float v3, v2, v8

    .local v3, "x0":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aget v8, v22, v8

    add-float v4, v2, v8

    .local v4, "y0":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    aget v8, v22, v8

    add-float v6, v2, v8

    .local v6, "x1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aget v8, v22, v8

    add-float v7, v2, v8

    .local v7, "y1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    aget v8, v22, v8

    add-float v9, v2, v8

    .local v9, "x2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aget v8, v22, v8

    add-float v10, v2, v8

    .local v10, "y2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v19

    move v8, v5

    move v11, v5

    invoke-virtual/range {v2 .. v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v4, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v6, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v7, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v9, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v10, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v11, v2, v19

    move v12, v3

    move v13, v4

    move v14, v6

    move v15, v7

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, p1

    invoke-virtual/range {v11 .. v18}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v19

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v6    # "x1":F
    .end local v7    # "y1":F
    .end local v9    # "x2":F
    .end local v10    # "y2":F
    :cond_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    goto/16 :goto_0
.end method

.method private calculateFg(I)V
    .locals 23
    .param p1, "rotation"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v22

    .local v22, "offset":[F
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    const/4 v5, 0x0

    .local v5, "z":F
    const/4 v2, 0x2

    aget v2, v22, v2

    add-float/2addr v5, v2

    const/4 v2, 0x1

    const/16 v8, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDraw(I)Z

    move-result v8

    if-ne v2, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFullScreen([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;FI)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .local v20, "index":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v8, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getRegionIndex(I[I)I

    move-result v21

    .local v21, "num":I
    add-int/lit8 v21, v21, -0x2

    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    aget v8, v22, v8

    add-float v3, v2, v8

    .local v3, "x0":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aget v8, v22, v8

    add-float v4, v2, v8

    .local v4, "y0":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    aget v8, v22, v8

    add-float v6, v2, v8

    .local v6, "x1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aget v8, v22, v8

    add-float v7, v2, v8

    .local v7, "y1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    aget v8, v22, v8

    add-float v9, v2, v8

    .local v9, "x2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aget v8, v22, v8

    add-float v10, v2, v8

    .local v10, "y2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v19

    move v8, v5

    move v11, v5

    invoke-virtual/range {v2 .. v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v4, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v6, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x1

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v7, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v9, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v8, v19, 0x2

    aget v8, v20, v8

    aget-object v2, v2, v8

    iget v10, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v11, v2, v19

    move v12, v3

    move v13, v4

    move v14, v6

    move v15, v7

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, p1

    invoke-virtual/range {v11 .. v18}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v19

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v6    # "x1":F
    .end local v7    # "y1":F
    .end local v9    # "x2":F
    .end local v10    # "y2":F
    :cond_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    goto/16 :goto_0
.end method

.method private calculateFgBack(I)V
    .locals 39
    .param p1, "rotation"    # I

    .prologue
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v29, v0

    .local v29, "index":[I
    new-instance v30, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct/range {v30 .. v30}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .local v30, "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v34, Landroid/graphics/PointF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/PointF;-><init>()V

    .local v34, "pointSym":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    const-wide v18, 0x4056800000000000L    # 90.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v4, v0

    sget v14, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    sub-float v22, v4, v14

    .local v22, "angle":F
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sub-float/2addr v4, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sget v17, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v14, v14, v17

    sub-float v27, v4, v14

    .local v27, "height":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v32

    .local v32, "offset":[F
    const/4 v4, 0x2

    aget v4, v32, v4

    add-float v27, v27, v4

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v35, v0

    .local v35, "sina":F
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v23, v0

    .local v23, "cosa":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/4 v14, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v14, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getRegionIndex(I[I)I

    move-result v31

    .local v31, "num":I
    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v36, v0

    .local v36, "x":[F
    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v37, v0

    .local v37, "y":[F
    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v38, v0

    .local v38, "z":[F
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v14, v29, v28

    aget-object v4, v4, v14

    iget v5, v4, Landroid/graphics/PointF;->x:F

    .local v5, "x0":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v14, v29, v28

    aget-object v4, v4, v14

    iget v6, v4, Landroid/graphics/PointF;->y:F

    .local v6, "y0":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->distance(FF)F

    move-result v25

    .local v25, "distanceEnd":F
    mul-float v26, v25, v23

    .local v26, "distanceEndEx":F
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBetweenEnd:F

    add-float v4, v4, v25

    add-float v24, v4, v26

    .local v24, "distance":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v24, v24, v4

    sub-float v24, v24, v25

    const/4 v4, 0x0

    cmpg-float v4, v24, v4

    if-gez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move-object/from16 v33, v0

    .local v33, "point":Landroid/graphics/PointF;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, v30

    move/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v4, v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v6, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    move-object/from16 v0, v34

    iget v4, v0, Landroid/graphics/PointF;->x:F

    aput v4, v36, v28

    move-object/from16 v0, v34

    iget v4, v0, Landroid/graphics/PointF;->y:F

    aput v4, v37, v28

    mul-float v4, v25, v35

    sub-float v4, v27, v4

    aput v4, v38, v28

    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .end local v33    # "point":Landroid/graphics/PointF;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    move-object/from16 v33, v0

    .restart local v33    # "point":Landroid/graphics/PointF;
    goto :goto_1

    .end local v5    # "x0":F
    .end local v6    # "y0":F
    .end local v24    # "distance":F
    .end local v25    # "distanceEnd":F
    .end local v26    # "distanceEndEx":F
    .end local v33    # "point":Landroid/graphics/PointF;
    :cond_1
    add-int/lit8 v31, v31, -0x2

    const/4 v4, 0x0

    aget v4, v36, v4

    const/4 v14, 0x0

    aget v14, v32, v14

    add-float v5, v4, v14

    .restart local v5    # "x0":F
    const/4 v4, 0x0

    aget v4, v37, v4

    const/4 v14, 0x1

    aget v14, v32, v14

    add-float v6, v4, v14

    .restart local v6    # "y0":F
    const/4 v4, 0x0

    aget v7, v38, v4

    .local v7, "z0":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    const/4 v14, 0x0

    aget v14, v29, v14

    aget-object v4, v4, v14

    iget v15, v4, Landroid/graphics/PointF;->x:F

    .local v15, "x0Ex":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    const/4 v14, 0x0

    aget v14, v29, v14

    aget-object v4, v4, v14

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    .local v16, "y0Ex":F
    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v28, 0x1

    aget v4, v36, v4

    const/4 v14, 0x0

    aget v14, v32, v14

    add-float v8, v4, v14

    .local v8, "x1":F
    add-int/lit8 v4, v28, 0x1

    aget v4, v37, v4

    const/4 v14, 0x1

    aget v14, v32, v14

    add-float v9, v4, v14

    .local v9, "y1":F
    add-int/lit8 v4, v28, 0x1

    aget v10, v38, v4

    .local v10, "z1":F
    add-int/lit8 v4, v28, 0x2

    aget v4, v36, v4

    const/4 v14, 0x0

    aget v14, v32, v14

    add-float v11, v4, v14

    .local v11, "x2":F
    add-int/lit8 v4, v28, 0x2

    aget v4, v37, v4

    const/4 v14, 0x1

    aget v14, v32, v14

    add-float v12, v4, v14

    .local v12, "y2":F
    add-int/lit8 v4, v28, 0x2

    aget v13, v38, v4

    .local v13, "z2":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v4, v4, v28

    invoke-virtual/range {v4 .. v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v14, v28, 0x1

    aget v14, v29, v14

    aget-object v4, v4, v14

    iget v8, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v14, v28, 0x1

    aget v14, v29, v14

    aget-object v4, v4, v14

    iget v9, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v14, v28, 0x2

    aget v14, v29, v14

    aget-object v4, v4, v14

    iget v11, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v14, v28, 0x2

    aget v14, v29, v14

    aget-object v4, v4, v14

    iget v12, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v14, v4, v28

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, p1

    invoke-virtual/range {v14 .. v21}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v4, v4, v28

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .end local v8    # "x1":F
    .end local v9    # "y1":F
    .end local v10    # "z1":F
    .end local v11    # "x2":F
    .end local v12    # "y2":F
    .end local v13    # "z2":F
    :cond_2
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFgBack:I

    add-int/lit8 v4, v31, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v4, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->preCalculateShadowPage1(I[F[F[F)V

    return-void
.end method

.method private calculateFullScreen([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;FI)V
    .locals 27
    .param p1, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p2, "z"    # F
    .param p3, "rotation"    # I

    .prologue
    const/16 v19, 0x0

    .local v19, "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v20

    .local v20, "offset":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v21, v0

    .local v21, "x0":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v2

    move/from16 v24, v0

    .local v24, "y0":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v22, v0

    .local v22, "x1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v2

    move/from16 v25, v0

    .local v25, "y1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v2

    move/from16 v23, v0

    .local v23, "x2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v2

    move/from16 v26, v0

    .local v26, "y2":F
    const/4 v2, 0x2

    aget v2, v20, v2

    add-float p2, p2, v2

    aget-object v2, p1, v19

    const/4 v9, 0x0

    aget v9, v20, v9

    add-float v3, v21, v9

    const/4 v9, 0x1

    aget v9, v20, v9

    add-float v4, v24, v9

    const/4 v9, 0x0

    aget v9, v20, v9

    add-float v6, v22, v9

    const/4 v9, 0x1

    aget v9, v20, v9

    add-float v7, v25, v9

    const/4 v9, 0x0

    aget v9, v20, v9

    add-float v9, v9, v23

    const/4 v10, 0x1

    aget v10, v20, v10

    add-float v10, v10, v26

    move/from16 v5, p2

    move/from16 v8, p2

    move/from16 v11, p2

    invoke-virtual/range {v2 .. v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v3

    .local v3, "x0Ex":F
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v4

    .local v4, "y0Ex":F
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v5

    .local v5, "x1Ex":F
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v6

    .local v6, "y1Ex":F
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v7

    .local v7, "x2Ex":F
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v8

    .local v8, "y2Ex":F
    aget-object v2, p1, v19

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    aget-object v2, p1, v19

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v2

    move/from16 v24, v0

    aget-object v9, p1, v19

    const/4 v2, 0x0

    aget v2, v20, v2

    add-float v10, v21, v2

    const/4 v2, 0x1

    aget v2, v20, v2

    add-float v11, v24, v2

    const/4 v2, 0x0

    aget v2, v20, v2

    add-float v13, v23, v2

    const/4 v2, 0x1

    aget v2, v20, v2

    add-float v14, v26, v2

    const/4 v2, 0x0

    aget v2, v20, v2

    add-float v16, v22, v2

    const/4 v2, 0x1

    aget v2, v20, v2

    add-float v17, v25, v2

    move/from16 v12, p2

    move/from16 v15, p2

    move/from16 v18, p2

    invoke-virtual/range {v9 .. v18}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v4

    aget-object v9, p1, v19

    move v10, v3

    move v11, v4

    move v12, v7

    move v13, v8

    move v14, v5

    move v15, v6

    move/from16 v16, p3

    invoke-virtual/range {v9 .. v16}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    aget-object v2, p1, v19

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    return-void
.end method

.method private calculateRoll(ZZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 30
    .param p1, "haveHead"    # Z
    .param p2, "haveEnd"    # Z
    .param p3, "pointHead"    # Landroid/graphics/PointF;
    .param p4, "pointEnd"    # Landroid/graphics/PointF;
    .param p5, "rotation"    # I

    .prologue
    const/4 v12, 0x0

    .local v12, "n":I
    const/4 v10, 0x0

    .local v10, "m":I
    const/16 v25, 0x8

    move/from16 v0, v25

    new-array v5, v0, [F

    .local v5, "distance":[F
    new-instance v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .local v9, "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .local v8, "lineTexCoor":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    const/4 v7, 0x0

    .local v7, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v16

    .local v16, "offsetEx":[F
    sget v25, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    sget v26, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v0

    mul-float v18, v25, v26

    .local v18, "offsetTotal":F
    const/high16 v25, 0x41800000    # 16.0f

    div-float v17, v18, v25

    .local v17, "offsetStep":F
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v5, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->findRollSegment([FFZZ)I

    move-result v14

    .local v14, "num":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v14, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->divideRollSegment([FIF)[F

    move-result-object v21

    .local v21, "segment":[F
    if-nez p1, :cond_1

    const/16 v25, 0x0

    aget v15, v21, v25

    .local v15, "offset":F
    const/16 v25, 0x0

    sget v26, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sget v27, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    move/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v15, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v4

    .local v4, "angle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v25, v0

    float-to-double v0, v4

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    mul-float v19, v25, v26

    .local v19, "rollLength":F
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v0

    float-to-double v0, v4

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    sub-float v24, v25, v26

    .local v24, "z":F
    const/16 v25, 0x2

    aget v25, v16, v25

    add-float v24, v24, v25

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    .local v22, "x":F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    .local v23, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v8, v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .local v13, "n":I
    aput v22, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    aput v23, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .restart local v13    # "n":I
    aput v22, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    aput v23, v25, v13

    sub-float v15, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v9, v15, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .local v11, "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    aput v24, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    aput v24, v25, v11

    .end local v4    # "angle":F
    .end local v15    # "offset":F
    .end local v19    # "rollLength":F
    .end local v22    # "x":F
    .end local v23    # "y":F
    :goto_0
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    move/from16 v20, v0

    .local v20, "rollNum":I
    :goto_1
    const/4 v6, 0x1

    .local v6, "i":I
    move v11, v10

    .end local v10    # "m":I
    .restart local v11    # "m":I
    move v13, v12

    .end local v12    # "n":I
    .restart local v13    # "n":I
    :goto_2
    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    aget v15, v21, v6

    .restart local v15    # "offset":F
    const/16 v25, 0x0

    sget v26, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sget v27, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    move/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v15, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v4

    .restart local v4    # "angle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v25, v0

    float-to-double v0, v4

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    mul-float v19, v25, v26

    .restart local v19    # "rollLength":F
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v0

    float-to-double v0, v4

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    sub-float v24, v25, v26

    const/16 v25, 0x2

    aget v25, v16, v25

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v8, v15, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v8, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    iget-object v0, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v26

    aput v26, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .restart local v13    # "n":I
    iget-object v0, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v26

    aput v26, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    iget-object v0, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v26

    aput v26, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .restart local v13    # "n":I
    iget-object v0, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v26

    aput v26, v25, v12

    sub-float v15, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v9, v15, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    aput v24, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    aput v24, v25, v10

    if-nez p2, :cond_0

    add-int/lit8 v25, v20, -0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_0

    new-instance v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .end local v7    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    invoke-direct {v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .restart local v7    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    invoke-virtual {v7, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .end local v4    # "angle":F
    .end local v6    # "i":I
    .end local v11    # "m":I
    .end local v13    # "n":I
    .end local v15    # "offset":F
    .end local v19    # "rollLength":F
    .end local v20    # "rollNum":I
    .end local v24    # "z":F
    .restart local v10    # "m":I
    .restart local v12    # "n":I
    :cond_1
    const/16 v24, 0x0

    .restart local v24    # "z":F
    const/16 v25, 0x2

    aget v25, v16, v25

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .restart local v13    # "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v26

    aput v26, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v26

    aput v26, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .restart local v13    # "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v26

    aput v26, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v26

    aput v26, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    aput v24, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    aput v24, v25, v11

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    move/from16 v25, v0

    add-int/lit8 v20, v25, 0x1

    .restart local v20    # "rollNum":I
    goto/16 :goto_1

    .end local v10    # "m":I
    .end local v12    # "n":I
    .restart local v6    # "i":I
    .restart local v11    # "m":I
    .restart local v13    # "n":I
    :cond_3
    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    move/from16 v25, v0

    aget v15, v21, v25

    .restart local v15    # "offset":F
    const/16 v25, 0x0

    sget v26, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sget v27, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    move/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v15, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v4

    .restart local v4    # "angle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v25, v0

    float-to-double v0, v4

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    mul-float v19, v25, v26

    .restart local v19    # "rollLength":F
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v0

    float-to-double v0, v4

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    sub-float v24, v25, v26

    const/16 v25, 0x2

    aget v25, v16, v25

    add-float v24, v24, v25

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    .restart local v22    # "x":F
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v8, v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    aput v22, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .restart local v13    # "n":I
    aput v23, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "n":I
    .restart local v12    # "n":I
    aput v22, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "n":I
    .restart local v13    # "n":I
    aput v23, v25, v12

    sub-float v15, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v9, v15, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    aput v24, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "m":I
    .restart local v10    # "m":I
    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    add-float v26, v26, v27

    aput v26, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    move-object/from16 v25, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "m":I
    .restart local v11    # "m":I
    aput v24, v25, v10

    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    iget-object v0, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v7, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->preCalculateShadowPage2(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FF)V

    .end local v4    # "angle":F
    .end local v15    # "offset":F
    .end local v19    # "rollLength":F
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_4
    move v10, v11

    .end local v11    # "m":I
    .restart local v10    # "m":I
    move v12, v13

    .end local v13    # "n":I
    .restart local v12    # "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    mul-int/lit8 v20, v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v20

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->processTexCoor(II[F)V

    return-void
.end method

.method private calculateShadowPage()V
    .locals 14

    .prologue
    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v11, v11, 0x10

    iput v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-gtz v11, :cond_0

    const/4 v11, 0x0

    iput v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    :goto_0
    return-void

    :cond_0
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .local v8, "point":Landroid/graphics/PointF;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-ge v0, v11, :cond_2

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v9

    .local v9, "width":F
    const/high16 v11, 0x43700000    # 240.0f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_1

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v9, v11

    :goto_2
    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v11, v11, v0

    iget-object v12, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v12, v12, v0

    iget-object v13, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    invoke-virtual {v11, v12, v9, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/high16 v9, 0x42a00000    # 80.0f

    goto :goto_2

    .end local v9    # "width":F
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    add-int/lit8 v11, v11, -0x1

    if-ge v0, v11, :cond_3

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v11, v11, v0

    iget-object v12, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    add-int/lit8 v13, v0, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v11, v11, v0

    iget-object v11, v11, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v12, 0x1

    iget v13, v8, Landroid/graphics/PointF;->x:F

    aput v13, v11, v12

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v11, v11, v0

    iget-object v11, v11, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v12, 0x1

    iget v13, v8, Landroid/graphics/PointF;->y:F

    aput v13, v11, v12

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    add-int/lit8 v12, v0, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v12, 0x0

    iget v13, v8, Landroid/graphics/PointF;->x:F

    aput v13, v11, v12

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    add-int/lit8 v12, v0, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v12, 0x0

    iget v13, v8, Landroid/graphics/PointF;->y:F

    aput v13, v11, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .local v3, "m":I
    const/4 v5, 0x0

    .local v5, "n":I
    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v7

    .local v7, "offset":[F
    const/4 v11, 0x0

    iget v12, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sub-float v10, v11, v12

    .local v10, "z":F
    const/4 v11, 0x2

    aget v11, v7, v11

    add-float/2addr v10, v11

    const/4 v0, 0x0

    :goto_4
    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-ge v0, v11, :cond_4

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "n":I
    .local v6, "n":I
    const/4 v12, 0x0

    aput v12, v11, v5

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    const/4 v12, 0x0

    aput v12, v11, v6

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "n":I
    .restart local v6    # "n":I
    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v5

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    const/4 v12, 0x0

    aput v12, v11, v6

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "n":I
    .restart local v6    # "n":I
    const v12, 0x3dcccccd    # 0.1f

    aput v12, v11, v5

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    const v12, 0x3dcccccd    # 0.1f

    aput v12, v11, v6

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "n":I
    .restart local v6    # "n":I
    const v12, 0x3f666666    # 0.9f

    aput v12, v11, v5

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    const v12, 0x3dcccccd    # 0.1f

    aput v12, v11, v6

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v1, v11, v0

    .local v1, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v2, v11, v0

    .local v2, "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .local v4, "m":I
    iget-object v12, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x0

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v3

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "m":I
    .restart local v3    # "m":I
    iget-object v12, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x1

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .restart local v4    # "m":I
    aput v10, v11, v3

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "m":I
    .restart local v3    # "m":I
    iget-object v12, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x0

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .restart local v4    # "m":I
    iget-object v12, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x1

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v3

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "m":I
    .restart local v3    # "m":I
    aput v10, v11, v4

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .restart local v4    # "m":I
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x0

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v3

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "m":I
    .restart local v3    # "m":I
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x1

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .restart local v4    # "m":I
    aput v10, v11, v3

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "m":I
    .restart local v3    # "m":I
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x0

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .restart local v4    # "m":I
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x1

    aget v13, v7, v13

    add-float/2addr v12, v13

    aput v12, v11, v3

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "m":I
    .restart local v3    # "m":I
    aput v10, v11, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .end local v1    # "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v2    # "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    :cond_4
    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    iput v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    goto/16 :goto_0
.end method

.method private calculateShadowRoll()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const v13, 0x3dcccccd    # 0.1f

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v6

    .local v6, "width":F
    const/high16 v8, 0x43700000    # 240.0f

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v6, v8

    :goto_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .local v0, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    invoke-virtual {v8, v0, v6, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    const/4 v1, 0x0

    .local v1, "m":I
    const/4 v3, 0x0

    .local v3, "n":I
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v5

    .local v5, "offset":[F
    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sub-float v7, v10, v8

    .local v7, "z":F
    const/4 v8, 0x2

    aget v8, v5, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .local v4, "n":I
    aput v10, v8, v3

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "n":I
    .restart local v3    # "n":I
    aput v10, v8, v4

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .restart local v4    # "n":I
    aput v14, v8, v3

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "n":I
    .restart local v3    # "n":I
    aput v10, v8, v4

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .restart local v4    # "n":I
    aput v10, v8, v3

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "n":I
    .restart local v3    # "n":I
    aput v13, v8, v4

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .restart local v4    # "n":I
    aput v14, v8, v3

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "n":I
    .restart local v3    # "n":I
    aput v13, v8, v4

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "m":I
    .local v2, "m":I
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v12

    aget v10, v5, v12

    add-float/2addr v9, v10

    aput v9, v8, v1

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "m":I
    .restart local v1    # "m":I
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v9, v9, v12

    aget v10, v5, v11

    add-float/2addr v9, v10

    aput v9, v8, v2

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "m":I
    .restart local v2    # "m":I
    aput v7, v8, v1

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "m":I
    .restart local v1    # "m":I
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v11

    aget v10, v5, v12

    add-float/2addr v9, v10

    aput v9, v8, v2

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "m":I
    .restart local v2    # "m":I
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v9, v9, v11

    aget v10, v5, v11

    add-float/2addr v9, v10

    aput v9, v8, v1

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "m":I
    .restart local v1    # "m":I
    aput v7, v8, v2

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "m":I
    .restart local v2    # "m":I
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v12

    aget v10, v5, v12

    add-float/2addr v9, v10

    aput v9, v8, v1

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "m":I
    .restart local v1    # "m":I
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v9, v9, v12

    aget v10, v5, v11

    add-float/2addr v9, v10

    aput v9, v8, v2

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "m":I
    .restart local v2    # "m":I
    aput v7, v8, v1

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "m":I
    .restart local v1    # "m":I
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v11

    aget v10, v5, v12

    add-float/2addr v9, v10

    aput v9, v8, v2

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "m":I
    .restart local v2    # "m":I
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v9, v9, v11

    aget v10, v5, v11

    add-float/2addr v9, v10

    aput v9, v8, v1

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "m":I
    .restart local v1    # "m":I
    aput v7, v8, v2

    iput v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollNum:I

    return-void

    .end local v0    # "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v1    # "m":I
    .end local v3    # "n":I
    .end local v5    # "offset":[F
    .end local v7    # "z":F
    :cond_0
    const/high16 v6, 0x42a00000    # 80.0f

    goto/16 :goto_0
.end method

.method private divideRollSegment([FIF)[F
    .locals 13
    .param p1, "distance"    # [F
    .param p2, "num"    # I
    .param p3, "step"    # F

    .prologue
    add-int/lit8 v4, p2, -0x1

    .local v4, "n":I
    const/4 v10, 0x0

    .local v10, "totalSeg":I
    new-array v5, v4, [I

    .local v5, "numSeg":[I
    new-array v6, v4, [F

    .local v6, "segLen":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    add-int/lit8 v11, v0, 0x1

    aget v11, p1, v11

    aget v12, p1, v0

    sub-float v7, v11, v12

    .local v7, "segLenTotal":F
    div-float v9, v7, p3

    .local v9, "temp":F
    float-to-int v11, v9

    aput v11, v5, v0

    aget v11, v5, v0

    int-to-float v11, v11

    sub-float/2addr v9, v11

    aget v11, v5, v0

    int-to-float v11, v11

    div-float/2addr v9, v11

    const v11, 0x3e4ccccd    # 0.2f

    cmpl-float v11, v9, v11

    if-lez v11, :cond_0

    aget v11, v5, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v5, v0

    :cond_0
    aget v11, v5, v0

    if-nez v11, :cond_1

    aget v11, v5, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v5, v0

    :cond_1
    aget v11, v5, v0

    add-int/2addr v10, v11

    aget v11, v5, v0

    int-to-float v11, v11

    div-float v11, v7, v11

    aput v11, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v7    # "segLenTotal":F
    .end local v9    # "temp":F
    :cond_2
    const/4 v2, 0x0

    .local v2, "k":I
    add-int/lit8 v11, v10, 0x1

    new-array v8, v11, [F

    .local v8, "segment":[F
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .local v3, "k":I
    const/4 v11, 0x0

    aget v11, p1, v11

    aput v11, v8, v2

    const/4 v11, 0x0

    aget v7, p1, v11

    .restart local v7    # "segLenTotal":F
    const/4 v0, 0x0

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    :goto_1
    if-ge v0, v4, :cond_4

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    aget v11, v5, v0

    if-ge v1, v11, :cond_3

    aget v11, v6, v0

    add-float/2addr v7, v11

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aput v7, v8, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "j":I
    :cond_4
    return-object v8
.end method

.method private findRollSegment([FFZZ)I
    .locals 10
    .param p1, "distance"    # [F
    .param p2, "maxDistance"    # F
    .param p3, "haveHead"    # Z
    .param p4, "haveEnd"    # Z

    .prologue
    const/4 v8, 0x6

    new-array v1, v8, [I

    .local v1, "index":[I
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getIndex(I[I)I

    move-result v4

    .local v4, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v9, v1, v0

    aget-object v8, v8, v9

    iget v6, v8, Landroid/graphics/PointF;->x:F

    .local v6, "x":F
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v9, v1, v0

    aget-object v8, v8, v9

    iget v7, v8, Landroid/graphics/PointF;->y:F

    .local v7, "y":F
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v8, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->distance(FF)F

    move-result v5

    .local v5, "temp":F
    cmpg-float v8, v5, p2

    if-gez v8, :cond_3

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aput v5, p1, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .end local v5    # "temp":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_0
    if-eqz p3, :cond_1

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    const/4 v8, 0x0

    aput v8, p1, v3

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_1
    if-eqz p4, :cond_2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aput p2, p1, v3

    :goto_2
    const/4 v8, 0x0

    invoke-static {p1, v2, v8}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->sort([FIZ)V

    return v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_2
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    .restart local v5    # "temp":F
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_3
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method

.method private getTexCoorX(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private getTexCoorY(F)F
    .locals 1
    .param p1, "y"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/16 v1, 0x72

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    const/16 v1, 0x4c

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    const/16 v1, 0x30

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    const/16 v1, 0x20

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    return-void
.end method

.method private initAllTriangle()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private preCalculateShadowPage1(I[F[F[F)V
    .locals 10
    .param p1, "num"    # I
    .param p2, "x"    # [F
    .param p3, "y"    # [F
    .param p4, "z"    # [F

    .prologue
    const/4 v4, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .local v2, "point":Landroid/graphics/PointF;
    add-int/lit8 v3, p1, -0x1

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-gtz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-le v3, v4, :cond_1

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v3, v3, v0

    aget v4, p2, v0

    aget v5, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, p3, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v1, v3, v8

    .local v1, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v3, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v5, v5, v9

    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v6, v9

    invoke-virtual {v1, v3, v4, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v3, v4

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v3, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    iget-object v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v8

    iget-object v4, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v4, v8

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    goto :goto_0
.end method

.method private preCalculateShadowPage2(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FF)V
    .locals 6
    .param p1, "lineShadowPage"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .local v1, "point":Landroid/graphics/PointF;
    if-nez p1, :cond_0

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v0, v2, v4

    .local v0, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v4

    iget-object v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v0, v2, v5

    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v5

    iget-object v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v3, v5

    invoke-virtual {v0, p2, p3, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2, p3, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    goto :goto_0
.end method

.method private processTexCoor(II[F)V
    .locals 6
    .param p1, "rotation"    # I
    .param p2, "num"    # I
    .param p3, "texCoor"    # [F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v3, v0, 0x2

    aget v1, p3, v3

    .local v1, "x":F
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    .local v2, "y":F
    mul-int/lit8 v3, v0, 0x2

    sub-float v4, v5, v2

    aput v4, p3, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aput v1, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p2, :cond_0

    mul-int/lit8 v3, v0, 0x2

    aget v1, p3, v3

    .restart local v1    # "x":F
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    .restart local v2    # "y":F
    mul-int/lit8 v3, v0, 0x2

    sub-float v4, v5, v1

    aput v4, p3, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sub-float v4, v5, v2

    aput v4, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_0

    mul-int/lit8 v3, v0, 0x2

    aget v1, p3, v3

    .restart local v1    # "x":F
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    .restart local v2    # "y":F
    mul-int/lit8 v3, v0, 0x2

    aput v2, p3, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sub-float v4, v5, v1

    aput v4, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBetweenEnd:F

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFgBack:I

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollNum:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z
    .locals 13
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p3, "side"    # [I

    .prologue
    const/4 v5, 0x0

    .local v5, "x0":F
    const/4 v8, 0x0

    .local v8, "y0":F
    const/4 v6, 0x0

    .local v6, "x1":F
    const/4 v9, 0x0

    .local v9, "y1":F
    if-nez p3, :cond_0

    const/4 v10, 0x2

    new-array v1, v10, [I

    .local v1, "sideEx":[I
    :goto_0
    invoke-virtual {p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v2

    .local v2, "slope":F
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v10, v10, v2

    if-nez v10, :cond_3

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    aget v4, v10, v11

    .local v4, "x":F
    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_2

    iget v10, p1, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_2

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    aput v4, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x0

    iget v12, p1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v1, v10

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x1

    aput v4, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x1

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v10, 0x1

    const/4 v11, 0x2

    aput v11, v1, v10

    :goto_1
    const/4 v10, 0x1

    .end local v4    # "x":F
    :goto_2
    return v10

    .end local v1    # "sideEx":[I
    .end local v2    # "slope":F
    :cond_0
    move-object/from16 v1, p3

    .restart local v1    # "sideEx":[I
    goto :goto_0

    .restart local v2    # "slope":F
    .restart local v4    # "x":F
    :cond_1
    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    aput v4, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x0

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x1

    aput v4, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x1

    iget v12, p1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v1, v10

    goto :goto_1

    :cond_2
    const-string v10, "PageFlippingController"

    const-string v11, "correctFlipLine error 0!"

    invoke-static {v10, v11}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_2

    .end local v4    # "x":F
    :cond_3
    const/4 v10, 0x0

    cmpl-float v10, v10, v2

    if-nez v10, :cond_6

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x0

    aget v7, v10, v11

    .local v7, "y":F
    iget v10, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_5

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gez v10, :cond_5

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    iget v12, p1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x0

    aput v7, v10, v11

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x1

    iget v12, p1, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    aput v12, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x1

    aput v7, v10, v11

    const/4 v10, 0x1

    const/4 v11, 0x1

    aput v11, v1, v10

    :goto_3
    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    iget v12, p1, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    aput v12, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x0

    aput v7, v10, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v1, v10

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x1

    iget v12, p1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v10, v11

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x1

    aput v7, v10, v11

    const/4 v10, 0x1

    const/4 v11, 0x3

    aput v11, v1, v10

    goto :goto_3

    :cond_5
    const-string v10, "PageFlippingController"

    const-string v11, "correctFlipLine error 1!"

    invoke-static {v10, v11}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_2

    .end local v7    # "y":F
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v10, 0x2

    if-ge v0, v10, :cond_10

    if-nez v0, :cond_8

    iget v10, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v10

    .restart local v7    # "y":F
    :goto_5
    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float v10, v7, v10

    div-float/2addr v10, v2

    iget-object v11, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    add-float v4, v10, v11

    .restart local v4    # "x":F
    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_a

    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v10

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float v10, v4, v10

    mul-float/2addr v10, v2

    iget-object v11, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    add-float v7, v10, v11

    iget v10, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-ltz v10, :cond_7

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_9

    :cond_7
    const-string v10, "PageFlippingController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "correctFlipLine error 2! i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_2

    .end local v4    # "x":F
    .end local v7    # "y":F
    :cond_8
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v10

    .restart local v7    # "y":F
    goto :goto_5

    .restart local v4    # "x":F
    :cond_9
    const/4 v10, 0x3

    aput v10, v1, v0

    :goto_6
    if-nez v0, :cond_f

    move v5, v4

    move v8, v7

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget v10, p1, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_d

    iget v10, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v10

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float v10, v4, v10

    mul-float/2addr v10, v2

    iget-object v11, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    add-float v7, v10, v11

    iget v10, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-ltz v10, :cond_b

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_c

    :cond_b
    const-string v10, "PageFlippingController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "correctFlipLine error 3! i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v10, 0x1

    aput v10, v1, v0

    goto :goto_6

    :cond_d
    if-nez v0, :cond_e

    const/4 v10, 0x0

    aput v10, v1, v0

    goto :goto_6

    :cond_e
    const/4 v10, 0x2

    aput v10, v1, v0

    goto :goto_6

    :cond_f
    move v6, v4

    move v9, v7

    goto :goto_7

    .end local v4    # "x":F
    .end local v7    # "y":F
    :cond_10
    cmpl-float v10, v5, v6

    if-nez v10, :cond_11

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_12

    :cond_11
    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    if-ne v10, v11, :cond_13

    :cond_12
    const-string v10, "PageFlippingController"

    const-string v11, "correctFlipLine error 4!"

    invoke-static {v10, v11}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_13
    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-float/2addr v10, v11

    sub-float v11, v6, v5

    mul-float v4, v10, v11

    .restart local v4    # "x":F
    const/4 v10, 0x0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_14

    const/4 v10, 0x0

    aget v3, v1, v10

    .local v3, "temp":I
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget v11, v1, v11

    aput v11, v1, v10

    const/4 v10, 0x1

    aput v3, v1, v10

    invoke-virtual {p2, v6, v9, v5, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .end local v3    # "temp":I
    :goto_8
    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p2, v5, v8, v6, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    goto :goto_8
.end method

.method public getBgDim()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBgDim:F

    return v0
.end method

.method public getDrawFlag()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    return v0
.end method

.method public getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    return-object v0
.end method

.method public getRollNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    return v0
.end method

.method public getRollRadius()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    return v0
.end method

.method public getRollTexCoor()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    return-object v0
.end method

.method public getRollVertex()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    return-object v0
.end method

.method public getShadowPageNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    return v0
.end method

.method public getShadowPageTexCoor()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    return-object v0
.end method

.method public getShadowPageVertex()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    return-object v0
.end method

.method public getShadowRollNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollNum:I

    return v0
.end method

.method public getShadowRollTexCoor()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    return-object v0
.end method

.method public getShadowRollVertex()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    return-object v0
.end method

.method public getTriangleBg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    return-object v0
.end method

.method public getTriangleFg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    return-object v0
.end method

.method public getTriangleFgBack()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    return-object v0
.end method

.method public getTriangleNumBg()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    return v0
.end method

.method public getTriangleNumFg()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    return v0
.end method

.method public getTriangleNumFgBack()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFgBack:I

    return v0
.end method

.method public isNeedDraw()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mIsNeedDraw:Z

    return v0
.end method

.method public needDraw(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDrawBg()Z
    .locals 2

    .prologue
    const/16 v0, 0x84

    .local v0, "flag":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needDrawFg()Z
    .locals 2

    .prologue
    const/16 v0, 0x41

    .local v0, "flag":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needDrawFgBack()Z
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDrawRoll()Z
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDrawShadowPage()Z
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDrawShadowRoll()Z
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProcessPageTurning(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;I)V
    .locals 24
    .param p1, "page"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .param p2, "rotation"    # I

    .prologue
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .local v18, "side":[I
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->reset()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getLineFlip()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v16

    .local v16, "lineFlip":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getFactor()F

    move-result v10

    .local v10, "factor":F
    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v22, 0x43160000    # 150.0f

    move/from16 v0, v22

    invoke-static {v10, v4, v5, v9, v0}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v12

    .local v12, "length":F
    const/high16 v15, 0x40000000    # 2.0f

    .local v15, "lengthStart":F
    const/high16 v4, 0x40000000    # 2.0f

    sub-float v14, v12, v4

    .local v14, "lengthEndEx":F
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sub-float v13, v14, v4

    .local v13, "lengthEnd":F
    mul-float/2addr v12, v10

    const/4 v4, 0x0

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v12, v4, v13, v5, v9}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBgDim:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v9, 0x0

    aget v5, v5, v9

    move-object/from16 v0, v16

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/16 v22, 0x0

    aget v9, v9, v22

    invoke-virtual {v4, v5, v9}, Landroid/graphics/PointF;->set(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .local v7, "pointStart":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .local v8, "pointEnd":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iput v4, v7, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iput v4, v7, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x0

    .local v11, "haveShadow":Z
    const/4 v6, 0x0

    .local v6, "haveFgBack":Z
    cmpl-float v4, v12, v15

    if-ltz v4, :cond_2

    cmpg-float v4, v12, v14

    if-gtz v4, :cond_2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/16 v22, 0x0

    aget v9, v9, v22

    move-object/from16 v0, v16

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-static {v10, v4, v5, v9, v0}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v20

    .local v20, "x":F
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/16 v22, 0x0

    aget v9, v9, v22

    move-object/from16 v0, v16

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-static {v10, v4, v5, v9, v0}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v21

    .local v21, "y":F
    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v5

    div-float v19, v4, v5

    .local v19, "slope":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    invoke-virtual {v4, v5, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    cmpg-float v4, v12, v13

    if-gtz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v4, v5, v9, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->set(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;[I)V

    :cond_0
    const/4 v4, 0x0

    sget v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    mul-float v17, v4, v5

    .local v17, "offset":F
    cmpl-float v4, v12, v17

    if-lez v4, :cond_1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sub-float v17, v17, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    :cond_1
    sget v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    sget v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    mul-float v17, v4, v5

    cmpl-float v4, v12, v17

    if-lez v4, :cond_2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sget v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v5, v0

    mul-float/2addr v4, v5

    sub-float v4, v17, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBetweenEnd:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v4, v5, v9, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->set(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;[I)V

    .end local v17    # "offset":F
    .end local v19    # "slope":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_2
    cmpg-float v4, v12, v15

    if-gez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFg(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    cmpl-float v4, v12, v14

    if-lez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateBg(I)V

    goto :goto_0

    :cond_5
    cmpl-float v4, v12, v13

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateBg(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->setAllFlip(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateRoll(ZZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V

    const/4 v4, 0x1

    if-ne v4, v11, :cond_3

    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateShadowRoll()V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFg(I)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateBg(I)V

    const/4 v5, 0x1

    move-object/from16 v4, p0

    move/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateRoll(ZZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V

    const/4 v4, 0x1

    if-ne v4, v6, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFgBack(I)V

    :cond_7
    const/4 v4, 0x1

    if-ne v4, v11, :cond_3

    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateShadowRoll()V

    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateShadowPage()V

    goto :goto_0
.end method

.method public setNeedDraw(Z)V
    .locals 0
    .param p1, "needDraw"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mIsNeedDraw:Z

    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
