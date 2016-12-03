.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
.super Ljava/lang/Object;
.source "GuidePageFlipping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;
    }
.end annotation


# static fields
.field public static final FACTOR_START:F = 0.01f

.field public static final PAGE_OFFSET_X:F = 80.0f

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field public static final TEXTURE_BG_PAGE:I = 0x1

.field public static final TEXTURE_DOWN_ICON:I = 0x4

.field public static final TEXTURE_FIRST_PAGE:I = 0x0

.field public static final TEXTURE_MAX:I = 0x5

.field public static final TEXTURE_STAGGER:I = 0x2

.field public static final TEXTURE_UP_ICON:I = 0x3

.field public static final TIME_END_ANIMATION:I = 0x32

.field public static final TIME_INNER_ANIMATION:I = 0x64

.field public static final TIME_START_ANIMATION:I = 0x64


# instance fields
.field private final mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

.field private mBasePoint:Landroid/graphics/PointF;

.field private mCancelAnimationCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

.field private mCancelAnimator:Landroid/animation/ValueAnimator;

.field private mDirect:I

.field private mDownPoint:Landroid/graphics/PointF;

.field private mEndFactor:F

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

.field private final mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

.field private mIsStartAnim:Z

.field private mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mNeedBackStagger:Z

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPathCancel:Landroid/view/animation/PathInterpolator;

.field private mPathEnter:Landroid/view/animation/PathInterpolator;

.field private mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

.field private mStaggerTransXFactor:F

.field private mStartAnimator:Landroid/animation/ValueAnimator;

.field private mStartFactor:F


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V
    .locals 5
    .param p1, "param"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    .line 56
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIsStartAnim:Z

    .line 57
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPathEnter:Landroid/view/animation/PathInterpolator;

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPathCancel:Landroid/view/animation/PathInterpolator;

    .line 61
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .line 62
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mNeedBackStagger:Z

    .line 63
    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerTransXFactor:F

    .line 64
    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimationCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIsStartAnim:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->onPageStartAnimUpdate(F)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->onPageCancelAnimUpdate(F)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->onPageCancelInnerAnimUpdate(F)V

    return-void
.end method

.method private calculateZone(IF)I
    .locals 5
    .param p1, "direct"    # I
    .param p2, "downY"    # F

    .prologue
    .line 144
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v1

    .line 145
    .local v1, "height":I
    div-int/lit8 v0, v1, 0x2

    .line 146
    .local v0, "halfHeight":I
    const/4 v3, 0x4

    .line 149
    .local v3, "zone":I
    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v2, 0x1

    .line 151
    .local v2, "isTop":Z
    :goto_0
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->isDirectLeft(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    const/4 v3, 0x4

    .line 165
    :goto_1
    return v3

    .line 149
    .end local v2    # "isTop":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 155
    .restart local v2    # "isTop":Z
    :cond_1
    const/4 v3, 0x5

    goto :goto_1

    .line 158
    :cond_2
    if-eqz v2, :cond_3

    .line 159
    const/4 v3, 0x6

    goto :goto_1

    .line 161
    :cond_3
    const/4 v3, 0x7

    goto :goto_1
.end method

.method private getEndFactor()F
    .locals 9

    .prologue
    .line 180
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v4

    .line 181
    .local v4, "slope":F
    const/high16 v5, -0x40800000    # -1.0f

    div-float v4, v5, v4

    .line 182
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v5, v6, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .line 183
    .local v2, "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 184
    .local v3, "point":Landroid/graphics/PointF;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v2, v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 185
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v5, v6, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFFF)V

    .line 186
    .local v1, "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    add-float/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v6

    div-float v0, v5, v6

    .line 189
    .local v0, "factor":F
    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 190
    const v0, 0x3c23d70a    # 0.01f

    .line 193
    :cond_0
    return v0
.end method

.method private getGuideLineFlip(IF)V
    .locals 11
    .param p1, "zone"    # I
    .param p2, "downY"    # F

    .prologue
    const/4 v10, 0x0

    .line 219
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v4

    .line 220
    .local v4, "width":I
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v0

    .line 221
    .local v0, "height":I
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v2

    .line 223
    .local v2, "rotation":I
    if-eqz v2, :cond_0

    .line 224
    const-string v7, "PageFlippingController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGuideLineFlip only support ROTATION_0. rotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    int-to-float v7, v4

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v5, v7, v8

    .line 258
    .local v5, "x1":F
    int-to-float v7, v0

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v6, v7, v8

    .line 259
    .local v6, "y1":F
    int-to-float v7, v0

    invoke-static {v2, p1, p2, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngle(IIFF)F

    move-result v1

    .line 260
    .local v1, "rad":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 261
    .local v3, "slope":F
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v7, v3, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 262
    return-void

    .line 229
    .end local v1    # "rad":F
    .end local v3    # "slope":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_0
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 230
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 231
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 232
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iput p2, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 237
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 238
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 239
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iput p2, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 244
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 245
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 246
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iput p2, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 251
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 252
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 253
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDownPoint:Landroid/graphics/PointF;

    iput p2, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getGuidePage(FFIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 9
    .param p1, "factor"    # F
    .param p2, "offsetFactor"    # F
    .param p3, "indexFg"    # I
    .param p4, "indexBg"    # I
    .param p5, "alphaFg"    # F
    .param p6, "alphaBg"    # F

    .prologue
    .line 202
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 203
    .local v7, "hashcode":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v3

    .line 204
    .local v3, "textureIdFg":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 205
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v4

    .line 206
    .local v4, "textureIdBg":I
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move v2, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V

    .line 208
    .local v0, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    const/high16 v8, 0x42a00000    # 80.0f

    .line 210
    .local v8, "offset":F
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDirect:I

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->isDirectLeft(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const/high16 v8, -0x3d600000    # -80.0f

    .line 214
    :cond_0
    mul-float v1, v8, p2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setOffset(FFF)V

    .line 215
    return-object v0
.end method

.method private onPageCancelAnimUpdate(F)V
    .locals 14
    .param p1, "factor"    # F

    .prologue
    .line 324
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 326
    .local v9, "hashcode":I
    const-string v0, "invalide_split_package"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 327
    const/4 v11, 0x0

    .line 332
    .local v11, "needDrawStagger":Z
    :goto_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerTransXFactor:F

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v2

    .line 334
    .local v2, "offsetFactor":F
    move v10, v2

    .line 336
    .local v10, "iconOffsetFactor":F
    if-nez v11, :cond_0

    .line 337
    const/4 v2, 0x0

    .line 338
    const/4 p1, 0x0

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mNeedBackStagger:Z

    if-nez v0, :cond_1

    .line 342
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerTransXFactor:F

    .line 345
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getGuidePage(FFIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v12

    .line 347
    .local v12, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v7

    .line 348
    .local v7, "bgDim":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    .line 350
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    if-eqz v11, :cond_3

    .line 353
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 354
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 355
    .local v13, "textureId":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setTextureIdStagger(I)V

    .line 356
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setFactor(F)V

    .line 361
    .end local v13    # "textureId":I
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 362
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 363
    .restart local v13    # "textureId":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setTextureId(I)V

    .line 364
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setAlpha(F)V

    .line 366
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 367
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 368
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setTextureId(I)V

    .line 369
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setAlpha(F)V

    .line 371
    new-instance v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-direct {v8, v0, v1, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 372
    .local v8, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 373
    return-void

    .line 329
    .end local v2    # "offsetFactor":F
    .end local v7    # "bgDim":F
    .end local v8    # "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    .end local v10    # "iconOffsetFactor":F
    .end local v11    # "needDrawStagger":Z
    .end local v12    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .end local v13    # "textureId":I
    :cond_2
    const/4 v11, 0x1

    .restart local v11    # "needDrawStagger":Z
    goto/16 :goto_0

    .line 358
    .restart local v2    # "offsetFactor":F
    .restart local v7    # "bgDim":F
    .restart local v10    # "iconOffsetFactor":F
    .restart local v12    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    goto :goto_1
.end method

.method private onPageCancelInnerAnimUpdate(F)V
    .locals 14
    .param p1, "time"    # F

    .prologue
    .line 381
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 382
    const/4 v0, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    invoke-static {p1, v0, v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .line 397
    .local v1, "factor":F
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 399
    .local v9, "hashcode":I
    const-string v0, "invalide_split_package"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 400
    const/4 v11, 0x0

    .line 405
    .local v11, "needDrawStagger":Z
    :goto_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerTransXFactor:F

    const/4 v5, 0x0

    invoke-static {v1, v0, v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v2

    .line 407
    .local v2, "offsetFactor":F
    move v10, v2

    .line 409
    .local v10, "iconOffsetFactor":F
    if-nez v11, :cond_0

    .line 410
    const/4 v2, 0x0

    .line 411
    const/4 v1, 0x0

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mNeedBackStagger:Z

    if-nez v0, :cond_1

    .line 415
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerTransXFactor:F

    .line 418
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getGuidePage(FFIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v12

    .line 420
    .local v12, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v7

    .line 421
    .local v7, "bgDim":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    .line 423
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    if-eqz v11, :cond_5

    .line 426
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 427
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 428
    .local v13, "textureId":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setTextureIdStagger(I)V

    .line 429
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setFactor(F)V

    .line 434
    .end local v13    # "textureId":I
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 435
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 436
    .restart local v13    # "textureId":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setTextureId(I)V

    .line 437
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setAlpha(F)V

    .line 439
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 440
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 441
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setTextureId(I)V

    .line 442
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setAlpha(F)V

    .line 444
    new-instance v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-direct {v8, v0, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 445
    .local v8, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 446
    .end local v1    # "factor":F
    .end local v2    # "offsetFactor":F
    .end local v7    # "bgDim":F
    .end local v8    # "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    .end local v9    # "hashcode":I
    .end local v10    # "iconOffsetFactor":F
    .end local v11    # "needDrawStagger":Z
    .end local v12    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .end local v13    # "textureId":I
    :cond_2
    :goto_2
    return-void

    .line 385
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->isLauncherWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    const-string v0, "PageFlippingController"

    const-string v3, "onPageCancelInnerAnimUpdate wait for launcher create success."

    invoke-static {v0, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 402
    .restart local v1    # "factor":F
    .restart local v9    # "hashcode":I
    :cond_4
    const/4 v11, 0x1

    .restart local v11    # "needDrawStagger":Z
    goto/16 :goto_0

    .line 431
    .restart local v2    # "offsetFactor":F
    .restart local v7    # "bgDim":F
    .restart local v10    # "iconOffsetFactor":F
    .restart local v12    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    goto :goto_1
.end method

.method private onPageStartAnimUpdate(F)V
    .locals 14
    .param p1, "factor"    # F

    .prologue
    .line 269
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 271
    .local v9, "hashcode":I
    const-string v0, "invalide_split_package"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 272
    const/4 v11, 0x0

    .line 277
    .local v11, "needDrawStagger":Z
    :goto_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v2

    .line 279
    .local v2, "offsetFactor":F
    move v10, v2

    .line 280
    .local v10, "iconOffsetFactor":F
    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerTransXFactor:F

    .line 282
    if-nez v11, :cond_0

    .line 283
    const/4 v2, 0x0

    .line 284
    const/4 p1, 0x0

    .line 287
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getGuidePage(FFIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v12

    .line 289
    .local v12, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v7

    .line 290
    .local v7, "bgDim":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    .line 292
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    if-eqz v11, :cond_2

    .line 295
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 296
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 297
    .local v13, "textureId":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setTextureIdStagger(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setFactor(F)V

    .line 303
    .end local v13    # "textureId":I
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 304
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 305
    .restart local v13    # "textureId":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setTextureId(I)V

    .line 306
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    neg-float v1, v10

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setFactor(F)V

    .line 307
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setAlpha(F)V

    .line 309
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 310
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v13

    .line 311
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setTextureId(I)V

    .line 312
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setFactor(F)V

    .line 313
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->setAlpha(F)V

    .line 315
    new-instance v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPageList:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-direct {v8, v0, v1, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 316
    .local v8, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 317
    return-void

    .line 274
    .end local v2    # "offsetFactor":F
    .end local v7    # "bgDim":F
    .end local v8    # "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    .end local v10    # "iconOffsetFactor":F
    .end local v11    # "needDrawStagger":Z
    .end local v12    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .end local v13    # "textureId":I
    :cond_1
    const/4 v11, 0x1

    .restart local v11    # "needDrawStagger":Z
    goto/16 :goto_0

    .line 300
    .restart local v2    # "offsetFactor":F
    .restart local v7    # "bgDim":F
    .restart local v10    # "iconOffsetFactor":F
    .restart local v12    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    goto :goto_1
.end method


# virtual methods
.method cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIsStartAnim:Z

    .line 451
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 457
    :cond_0
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    .line 460
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 466
    :cond_2
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    .line 468
    :cond_3
    return-void
.end method

.method public getCurrFactor()F
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 140
    .local v0, "currFactor":F
    :goto_0
    return v0

    .line 134
    .end local v0    # "currFactor":F
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .restart local v0    # "currFactor":F
    goto :goto_0

    .line 137
    .end local v0    # "currFactor":F
    :cond_1
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    .restart local v0    # "currFactor":F
    goto :goto_0
.end method

.method public getDirect()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDirect:I

    return v0
.end method

.method initStartAnim(IFLjava/util/List;)Z
    .locals 7
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 471
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mDirect:I

    .line 472
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    .line 473
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->calculateZone(IF)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getGuideLineFlip(IF)V

    .line 475
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->isDirectLeft(I)Z

    move-result v0

    .line 476
    .local v0, "isLeft":Z
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setIsLeft(Z)V

    .line 477
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setShadowAlpha(F)V

    .line 478
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setStaggerAlpha(F)V

    .line 479
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    invoke-virtual {v1, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setRotation(I)V

    .line 480
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->setOffset(FFF)V

    .line 482
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    invoke-direct {v2, p2, v0, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;-><init>(FZZ)V

    aput-object v2, v1, v5

    .line 483
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIcons:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    invoke-direct {v2, p2, v0, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;-><init>(FZZ)V

    aput-object v2, v1, v6

    .line 485
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mHashcodeList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkGuidePageAnimPara(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public isCancelAnimRunning()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelAnimationCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    .prologue
    .line 494
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimationCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    .line 495
    return-void
.end method

.method public startCancelAnim()F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    iput-boolean v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mNeedBackStagger:Z

    .line 81
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIsStartAnim:Z

    .line 83
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    .line 85
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    .line 91
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    .line 93
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;

    invoke-direct {v1, p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;)V

    .line 94
    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;

    invoke-direct {v0, p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;)V

    .line 95
    .local v0, "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    aput v3, v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    .line 96
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPathCancel:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    return v2

    .line 88
    .end local v0    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v1    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_0
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    goto :goto_0
.end method

.method public startCancelAnimInner()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 105
    const-string v2, "PageFlippingController"

    const-string v3, "startCancelAnimInner"

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mNeedBackStagger:Z

    .line 108
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    .line 110
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    .line 116
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    .line 118
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;

    invoke-direct {v1, p0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;)V

    .line 119
    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;

    invoke-direct {v0, p0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;)V

    .line 120
    .local v0, "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    .line 121
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 124
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 126
    return-void

    .line 113
    .end local v0    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v1    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_0
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    goto :goto_0

    .line 120
    nop

    :array_0
    .array-data 4
        0x0
        0x455ac000    # 3500.0f
    .end array-data
.end method

.method public startStartAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 67
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIsStartAnim:Z

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    .line 69
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getEndFactor()F

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    .line 71
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;)V

    .line 72
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartFactor:F

    aput v3, v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mEndFactor:F

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    .line 73
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mPathEnter:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    return-void
.end method
