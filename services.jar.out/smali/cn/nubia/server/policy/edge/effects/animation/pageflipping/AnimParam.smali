.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
.super Ljava/lang/Object;
.source "AnimParam.java"


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x780

.field public static final DEFAULT_WIDTH:I = 0x438

.field public static final DIRECT_INVALIDATE:I = -0x1

.field public static final DIRECT_LEFT_B2T:I = 0x1

.field public static final DIRECT_LEFT_T2B:I = 0x0

.field public static final DIRECT_RIGHT_B2T:I = 0x3

.field public static final DIRECT_RIGHT_T2B:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field public static final TIME_MAX:I = 0xdac

.field public static final TIME_PAGE_ALPHA_MAX:I = 0xc8

.field public static final TIME_PAGE_ALPHA_MIN:I = 0x14

.field public static final TIME_PAGE_PAGE_FLIPPING:I = 0x1f4

.field public static final ZONE_LEFT_BOTTOM:I = 0x5

.field public static final ZONE_LEFT_TOP:I = 0x4

.field public static final ZONE_RIGHT_BOTTOM:I = 0x7

.field public static final ZONE_RIGHT_TOP:I = 0x6


# instance fields
.field private final ANGLE_APP_FLIP1:F

.field private final ANGLE_APP_FLIP1_ROTATION:F

.field private final ANGLE_APP_FLIP2:F

.field private final ANGLE_APP_FLIP2_ROTATION:F

.field private mAnimFactorEnd:F

.field private mAnimFactorStart:F

.field private final mBasePoint:Landroid/graphics/PointF;

.field private mCurrentPoint:Landroid/graphics/PointF;

.field private mDirect:I

.field private mDownY:F

.field private mFactor:F

.field private mHandler:Landroid/os/Handler;

.field private mHashcodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightRemain:F

.field private mIsFirstUpdate:Z

.field private mIsFitWindowAdded:Z

.field private mLastY:F

.field private mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipAngle:F

.field private mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

.field private mPageFlippingView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x40490fdb    # (float)Math.PI

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x405a400000000000L    # 105.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    sub-float v0, v2, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    const-wide v0, 0x4052c00000000000L    # 75.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    sub-float v0, v2, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    return-object v0
.end method

.method public static createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 8
    .param p0, "basePoint"    # Landroid/graphics/PointF;
    .param p1, "slope"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .local v3, "point":Landroid/graphics/PointF;
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .local v0, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    const/high16 v4, -0x40800000    # -1.0f

    div-float p1, v4, p1

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1, p2, p3, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .local v1, "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .local v2, "lineFlipEndEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    const/high16 v4, 0x43160000    # 150.0f

    invoke-virtual {v1, v2, v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    invoke-virtual {v2, v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    return-object v0
.end method

.method static getFactorByAnimationTime(I)F
    .locals 2
    .param p0, "time"    # I

    .prologue
    int-to-float v0, p0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getHeightRemain(F)F
    .locals 7
    .param p1, "currY"    # F

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v2

    .local v2, "rotation":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v0

    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "heightRemain":F
    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_0

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_1

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    int-to-float v4, v0

    sub-float v1, v4, p1

    goto :goto_0

    :pswitch_1
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_2

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_3

    :cond_2
    move v1, p1

    goto :goto_0

    :cond_3
    int-to-float v4, v3

    sub-float v1, v4, p1

    goto :goto_0

    :pswitch_2
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_5

    :cond_4
    int-to-float v4, v0

    sub-float v1, v4, p1

    goto :goto_0

    :cond_5
    move v1, p1

    goto :goto_0

    :pswitch_3
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_6

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_7

    :cond_6
    int-to-float v4, v3

    sub-float v1, v4, p1

    goto :goto_0

    :cond_7
    move v1, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static getLineFlipAngle(IIFF)F
    .locals 4
    .param p0, "rotation"    # I
    .param p1, "direct"    # I
    .param p2, "y"    # F
    .param p3, "height"    # F

    .prologue
    invoke-static {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleStart(II)F

    move-result v2

    .local v2, "angleStart":F
    invoke-static {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleEnd(II)F

    move-result v1

    .local v1, "angleEnd":F
    const/4 v3, 0x0

    invoke-static {p2, v3, p3, v2, v1}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    .local v0, "angle":F
    return v0
.end method

.method private static getLineFlipAngleEnd(II)F
    .locals 4
    .param p0, "rotation"    # I
    .param p1, "direct"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "angle":F
    packed-switch p0, :pswitch_data_0

    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1

    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x43160000    # 150.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x43250000    # 165.0f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_0

    :pswitch_7
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x42960000    # 75.0f

    goto :goto_0

    :pswitch_9
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_0

    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_b
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    :pswitch_c
    const/high16 v0, 0x43250000    # 165.0f

    goto :goto_0

    :pswitch_d
    const/high16 v0, 0x43160000    # 150.0f

    goto :goto_0

    :pswitch_e
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto :goto_0

    :pswitch_10
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_0

    :pswitch_11
    const/high16 v0, 0x42960000    # 75.0f

    goto :goto_0

    :pswitch_12
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :pswitch_13
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static getLineFlipAngleStart(II)F
    .locals 4
    .param p0, "rotation"    # I
    .param p1, "direct"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "angle":F
    packed-switch p0, :pswitch_data_0

    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1

    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x43250000    # 165.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x43160000    # 150.0f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_0

    :pswitch_7
    const/high16 v0, 0x42960000    # 75.0f

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :pswitch_9
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_0

    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_b
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    :pswitch_c
    const/high16 v0, 0x43160000    # 150.0f

    goto :goto_0

    :pswitch_d
    const/high16 v0, 0x43250000    # 165.0f

    goto :goto_0

    :pswitch_e
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto :goto_0

    :pswitch_10
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_0

    :pswitch_11
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :pswitch_12
    const/high16 v0, 0x42960000    # 75.0f

    goto :goto_0

    :pswitch_13
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private getLineFlipApp(FI)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 14
    .param p1, "factor"    # F
    .param p2, "direct"    # I

    .prologue
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .local v3, "basePoint":Landroid/graphics/PointF;
    const/high16 v0, 0x41f00000    # 30.0f

    .local v0, "ANGLE_CHANGE_TOTAL":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v10

    int-to-float v7, v10

    .local v7, "width":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v10

    int-to-float v4, v10

    .local v4, "height":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v5

    .local v5, "rotation":I
    packed-switch v5, :pswitch_data_0

    :goto_0
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    neg-float v1, v0

    .local v1, "angle":F
    :goto_1
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    mul-float v12, p1, v1

    float-to-double v12, v12

    add-double/2addr v10, v12

    double-to-float v2, v10

    .local v2, "angleApp":F
    float-to-double v10, v2

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    double-to-float v6, v10

    .local v6, "slopeApp":F
    iget v10, v3, Landroid/graphics/PointF;->x:F

    sub-float v8, v7, v10

    .local v8, "x":F
    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float v9, v4, v10

    .local v9, "y":F
    invoke-static {v3, v6, v8, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v10

    return-object v10

    .end local v1    # "angle":F
    .end local v2    # "angleApp":F
    .end local v6    # "slopeApp":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_0
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v7, v10

    iput v10, v3, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_1
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iput v10, v3, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float v10, v4, v10

    iput v10, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    move v1, v0

    .restart local v1    # "angle":F
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getPageAnimationTime(FF)I
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F

    .prologue
    const/high16 v0, 0x43fa0000    # 500.0f

    sub-float v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private intAnimParam(IF)V
    .locals 11
    .param p1, "direct"    # I
    .param p2, "downY"    # F

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v4

    .local v4, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v0

    .local v0, "height":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v1

    .local v1, "rotation":I
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "slopeApp":F
    packed-switch v1, :pswitch_data_0

    :goto_0
    int-to-float v7, v4

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v5, v7, v8

    .local v5, "x":F
    int-to-float v7, v0

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v6, v7, v8

    .local v6, "y":F
    packed-switch v1, :pswitch_data_1

    :goto_1
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v2, v8

    .local v2, "slope":F
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v7, v2, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v7, v3, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    return-void

    .end local v2    # "slope":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_0
    packed-switch p1, :pswitch_data_2

    :goto_2
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :pswitch_2
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :pswitch_3
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :pswitch_4
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :pswitch_5
    packed-switch p1, :pswitch_data_3

    :goto_3
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_0

    :pswitch_6
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_3

    :pswitch_7
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_3

    :pswitch_8
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_3

    :pswitch_9
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_3

    :pswitch_a
    packed-switch p1, :pswitch_data_4

    :goto_4
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    :pswitch_b
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_4

    :pswitch_c
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_4

    :pswitch_d
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_4

    :pswitch_e
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_4

    :pswitch_f
    packed-switch p1, :pswitch_data_5

    :goto_5
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_0

    :pswitch_10
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_5

    :pswitch_11
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_5

    :pswitch_12
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_5

    :pswitch_13
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_5

    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_14
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    int-to-float v8, v0

    invoke-static {v1, p1, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngle(IIFF)F

    move-result v7

    iput v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    goto/16 :goto_1

    :pswitch_15
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    int-to-float v8, v4

    invoke-static {v1, p1, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngle(IIFF)F

    move-result v7

    iput v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static isDirectLeft(I)Z
    .locals 1
    .param p0, "direct"    # I

    .prologue
    const/4 v0, 0x1

    .local v0, "isLeft":Z
    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method checkGuidePageAnimPara(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGuidePageAnimPara error hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkGuidePageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "pageNum":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGuidePageAnimPara error pageNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkGuidePageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method checkLoopPageAnimPara()Z
    .locals 4

    .prologue
    const/4 v1, -0x1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLoopPageAnimPara error direct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkLoopPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "pageNum":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    :cond_2
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLoopPageAnimPara error pageNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkLoopPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method checkPageAnimPara(Z)Z
    .locals 5
    .param p1, "needThrow"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPageAnimPara error direct = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; hashcode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "pageNum":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPageAnimPara error pageNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x1

    .end local v0    # "pageNum":I
    :cond_3
    return v1
.end method

.method getAnimFactorEnd()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorEnd:F

    return v0
.end method

.method getAnimFactorStart()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorStart:F

    return v0
.end method

.method getAppPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 8
    .param p1, "factor"    # F
    .param p2, "indexFg"    # I
    .param p3, "indexBg"    # I
    .param p4, "alphaFg"    # F
    .param p5, "alphaBg"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "hashcode":I
    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v3

    .local v3, "textureIdFg":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v4

    .local v4, "textureIdBg":I
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-direct {p0, p1, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipApp(FI)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v1

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V

    return-object v0
.end method

.method getDirect()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    return v0
.end method

.method public getFactor()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    return v0
.end method

.method public getFactorByY(F)F
    .locals 9
    .param p1, "y"    # F

    .prologue
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v4

    .local v4, "slope":F
    const/high16 v5, -0x40800000    # -1.0f

    div-float v4, v5, v4

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v5, v6, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .local v2, "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .local v3, "point":Landroid/graphics/PointF;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v2, v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v5, v6, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFFF)V

    .local v1, "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    add-float/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v6

    div-float v0, v5, v6

    .local v0, "factor":F
    return v0

    .end local v0    # "factor":F
    .end local v1    # "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v2    # "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v3    # "point":Landroid/graphics/PointF;
    :pswitch_0
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput p1, v5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput p1, v5, Landroid/graphics/PointF;->x:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getFitWindowAdded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    return v0
.end method

.method getHashcodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x780

    goto :goto_0
.end method

.method getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 8
    .param p1, "factor"    # F
    .param p2, "indexFg"    # I
    .param p3, "indexBg"    # I
    .param p4, "alphaFg"    # F
    .param p5, "alphaBg"    # F

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "hashcode":I
    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v3

    .local v3, "textureIdFg":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v4

    .local v4, "textureIdBg":I
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V

    return-object v0
.end method

.method getRotation()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextureId(I)I
    .locals 1
    .param p1, "hashcode"    # I

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getTextureId(I)I

    move-result v0

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x438

    goto :goto_0
.end method

.method isAppWindowCreated()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->isAppWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLauncherWindowCreated()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->isLauncherWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAnimationEnd()V
    .locals 2

    .prologue
    const-string v0, "PageFlippingController"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    return-void
.end method

.method onDrawFirstFrame()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->onDrawFirstFrame()V

    :cond_0
    return-void
.end method

.method onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V
    .locals 9
    .param p1, "drawContent"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .local v4, "z":F
    iget-object v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mPageList:Ljava/util/List;

    .local v3, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .local v2, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v1

    .local v1, "offset":[F
    aput v4, v1, v8

    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    aget v7, v1, v8

    invoke-virtual {v2, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setOffset(FFF)V

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "offset":[F
    .end local v2    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;

    invoke-direct {v7, p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    invoke-virtual {v6, v7}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method postRunable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postRunable(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "time"    # I

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    return-void
.end method

.method setAnimFactorEnd(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorEnd:F

    return-void
.end method

.method setAnimFactorStart(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorStart:F

    return-void
.end method

.method setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V
    .locals 0
    .param p1, "animSync"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    return-void
.end method

.method setDirect(IF)V
    .locals 2
    .param p1, "direct"    # I
    .param p2, "downY"    # F

    .prologue
    const/4 v0, -0x1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->intAnimParam(IF)V

    :cond_0
    return-void
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    return-void
.end method

.method setFitWindowAdded(Z)V
    .locals 0
    .param p1, "fitWindowAdded"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    return-void
.end method

.method setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p1, "pageFlippingView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method setHashcodeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    return-void
.end method

.method setRender(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    return-void
.end method

.method setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 1
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V
    .locals 0
    .param p1, "management"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    return-void
.end method

.method public updateLineFlip(F)V
    .locals 12
    .param p1, "currY"    # F

    .prologue
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v6

    .local v6, "rotation":I
    const/4 v5, 0x1

    .local v5, "isIncreased":Z
    iget-boolean v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeightRemain(F)F

    move-result v10

    iput v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHeightRemain:F

    :cond_0
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    sub-float v4, p1, v10

    .local v4, "deltaY":F
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    packed-switch v6, :pswitch_data_0

    :goto_0
    const/4 v10, 0x0

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_6

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const/4 v10, 0x1

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v10, v11, :cond_2

    const/4 v10, 0x3

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v10, v11, :cond_3

    :cond_2
    neg-float v4, v4

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_1
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v10, v11, :cond_5

    :cond_4
    neg-float v4, v4

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-static {v6, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleStart(II)F

    move-result v2

    .local v2, "angleStart":F
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-static {v6, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleEnd(II)F

    move-result v1

    .local v1, "angleEnd":F
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHeightRemain:F

    div-float v10, v4, v10

    sub-float v11, v2, v1

    mul-float v3, v10, v11

    .local v3, "deltaAngle":F
    if-nez v5, :cond_7

    neg-float v3, v3

    :cond_7
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    add-float v0, v10, v3

    .local v0, "angle":F
    invoke-static {v0, v1, v2, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    cmpl-float v10, v0, v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    sub-float v8, v10, v11

    .local v8, "x":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v9, v10, v11

    .local v9, "y":F
    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    double-to-float v7, v10

    .local v7, "slope":F
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v10, v7, v8, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
