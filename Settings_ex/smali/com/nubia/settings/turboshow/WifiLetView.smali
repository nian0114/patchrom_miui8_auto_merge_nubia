.class public Lcom/nubia/settings/turboshow/WifiLetView;
.super Landroid/view/View;
.source "WifiLetView.java"


# instance fields
.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mCenter_X:F

.field private mCenter_Y:F

.field private mClipPath:Landroid/graphics/Path;

.field private mClipRectF:Landroid/graphics/RectF;

.field private mDstRectF:Landroid/graphics/RectF;

.field private mEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFlashAngle:F

.field private mFlashAnimator:Landroid/animation/ValueAnimator;

.field private mFlashBmp:Landroid/graphics/Bitmap;

.field private mIsDrawFlashBmp:Z

.field private mIsDrawOverLightBmp:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mNormalLightBmp:Landroid/graphics/Bitmap;

.field private mNormalLightPaint:Landroid/graphics/Paint;

.field private mNumTextPaint:Landroid/graphics/Paint;

.field private mNumTextSize:F

.field private mOffset_Y:F

.field private mOverLightBmp:Landroid/graphics/Bitmap;

.field private mOverLightPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercentStr:Ljava/lang/String;

.field private mProgressBmp:Landroid/graphics/Bitmap;

.field private mRefreshAnimator:Landroid/animation/ValueAnimator;

.field private mSignTextPaint:Landroid/graphics/Paint;

.field private mSignTextSize:F

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/nubia/settings/turboshow/WifiLetView;->loadImagesResource(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/nubia/settings/turboshow/WifiLetView;->loadImagesResource(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nubia/settings/turboshow/WifiLetView;)F
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAngle:F

    return v0
.end method

.method static synthetic access$202(Lcom/nubia/settings/turboshow/WifiLetView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAngle:F

    return p1
.end method

.method static synthetic access$300(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nubia/settings/turboshow/WifiLetView;)F
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    return v0
.end method

.method static synthetic access$500(Lcom/nubia/settings/turboshow/WifiLetView;)F
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    return v0
.end method

.method static synthetic access$600(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nubia/settings/turboshow/WifiLetView;)F
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;

    .prologue
    .line 26
    iget v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F

    return v0
.end method

.method static synthetic access$702(Lcom/nubia/settings/turboshow/WifiLetView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F

    return p1
.end method

.method static synthetic access$802(Lcom/nubia/settings/turboshow/WifiLetView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPercentStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nubia/settings/turboshow/WifiLetView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/WifiLetView;
    .param p1, "x1"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nubia/settings/turboshow/WifiLetView;->calculatepercentNum(F)I

    move-result v0

    return v0
.end method

.method private calculateSweepAngle(I)F
    .locals 4
    .param p1, "percentNum"    # I

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "sweepAngle":F
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    .line 306
    add-int/lit8 v1, p1, -0x64

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sub-float v0, v1, v3

    .line 311
    :goto_0
    return v0

    .line 309
    :cond_0
    add-int/lit8 v1, p1, -0x64

    int-to-float v1, v1

    const/high16 v2, 0x42b80000    # 92.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x44610000    # 900.0f

    div-float/2addr v1, v2

    sub-float v0, v1, v3

    goto :goto_0
.end method

.method private calculatepercentNum(F)I
    .locals 8
    .param p1, "sweepAngle"    # F

    .prologue
    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "percentNum":I
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 317
    float-to-double v2, p1

    add-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 322
    :goto_0
    return v0

    .line 320
    :cond_0
    float-to-double v2, p1

    add-double/2addr v2, v4

    const-wide v4, 0x408c200000000000L    # 900.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4057000000000000L    # 92.0

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0
.end method

.method private createAlphaAnimator(Landroid/graphics/Paint;[FI)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "alphaValue"    # [F
    .param p3, "duration"    # I

    .prologue
    .line 275
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 276
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 278
    new-instance v1, Lcom/nubia/settings/turboshow/WifiLetView$4;

    invoke-direct {v1, p0, p1}, Lcom/nubia/settings/turboshow/WifiLetView$4;-><init>(Lcom/nubia/settings/turboshow/WifiLetView;Landroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 286
    return-object v0
.end method

.method private createProgressAnimator([FI)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "progressValue"    # [F
    .param p2, "duration"    # I

    .prologue
    .line 290
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 291
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    new-instance v1, Lcom/nubia/settings/turboshow/WifiLetView$5;

    invoke-direct {v1, p0}, Lcom/nubia/settings/turboshow/WifiLetView$5;-><init>(Lcom/nubia/settings/turboshow/WifiLetView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    return-object v0
.end method

.method private drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 150
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 154
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 155
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const-string v1, "0"

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPercentStr:Ljava/lang/String;

    .line 59
    const/high16 v1, -0x3c4c0000    # -360.0f

    iput v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F

    .line 60
    iput-boolean v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawOverLightBmp:Z

    .line 61
    iput-boolean v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawFlashBmp:Z

    .line 63
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mMatrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSrcRect:Landroid/graphics/Rect;

    .line 65
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mDstRectF:Landroid/graphics/RectF;

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipPath:Landroid/graphics/Path;

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/nubia_regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 76
    .local v0, "typeface":Landroid/graphics/Typeface;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 86
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    return-void
.end method

.method private loadImagesResource(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextSize:F

    .line 94
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextSize:F

    .line 96
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    .line 98
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    .line 100
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOffset_Y:F

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02023a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightBmp:Landroid/graphics/Bitmap;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020307

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightBmp:Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02030e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mProgressBmp:Landroid/graphics/Bitmap;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashBmp:Landroid/graphics/Bitmap;

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mProgressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    iget-object v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mProgressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    iget-object v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mProgressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    iget-object v5, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mProgressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipRectF:Landroid/graphics/RectF;

    .line 118
    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 329
    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 334
    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 339
    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 344
    iput-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    .line 346
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/nubia/settings/turboshow/WifiLetView;->drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 126
    iget-boolean v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawOverLightBmp:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/nubia/settings/turboshow/WifiLetView;->drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPercentStr:Ljava/lang/String;

    iget v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    iget v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextSize:F

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    const-string v0, "%"

    iget v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNumTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPercentStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    iget v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOffset_Y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSignTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 137
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x43060000    # 134.0f

    iget v3, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 139
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 140
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 141
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mProgressBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/nubia/settings/turboshow/WifiLetView;->drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 142
    iget-boolean v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawFlashBmp:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    return-void
.end method

.method public recycleBitmap()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mProgressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    return-void
.end method

.method public startFlashAnim()V
    .locals 6

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawOverLightBmp:Z

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawFlashBmp:Z

    .line 247
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    .line 249
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ee8f5c3    # 0.455f

    const v3, 0x3cf5c28f    # 0.03f

    const v4, 0x3f03d70a    # 0.515f

    const v5, 0x3f747ae1    # 0.955f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 251
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/nubia/settings/turboshow/WifiLetView$3;

    invoke-direct {v1, p0}, Lcom/nubia/settings/turboshow/WifiLetView$3;-><init>(Lcom/nubia/settings/turboshow/WifiLetView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    return-void

    .line 248
    :array_0
    .array-data 4
        0x0
        0x90
    .end array-data
.end method

.method public startOffAnim()V
    .locals 9

    .prologue
    const/16 v8, 0x15e

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->cancelAnim()V

    .line 205
    iput-boolean v6, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawOverLightBmp:Z

    .line 206
    iput-boolean v6, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawFlashBmp:Z

    .line 207
    new-array v3, v5, [F

    iget v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F

    aput v4, v3, v6

    const/high16 v4, -0x3c4c0000    # -360.0f

    aput v4, v3, v7

    .line 208
    .local v3, "progressValue":[F
    invoke-direct {p0, v3, v8}, Lcom/nubia/settings/turboshow/WifiLetView;->createProgressAnimator([FI)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 210
    .local v2, "progressAnimator":Landroid/animation/ValueAnimator;
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    .line 211
    .local v1, "alphaValue":[F
    iget-object v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v4, v1, v8}, Lcom/nubia/settings/turboshow/WifiLetView;->createAlphaAnimator(Landroid/graphics/Paint;[FI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 213
    .local v0, "alphaAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 214
    iget-object v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v6

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 215
    iget-object v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 216
    return-void

    .line 210
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startOnAnim()V
    .locals 12

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->cancelAnim()V

    .line 169
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawOverLightBmp:Z

    .line 170
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawFlashBmp:Z

    .line 171
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 172
    .local v0, "alphaAnimator1":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    new-instance v7, Lcom/nubia/settings/turboshow/WifiLetView$1;

    invoke-direct {v7, p0}, Lcom/nubia/settings/turboshow/WifiLetView$1;-><init>(Lcom/nubia/settings/turboshow/WifiLetView;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    const/4 v7, 0x2

    new-array v2, v7, [F

    fill-array-data v2, :array_1

    .line 185
    .local v2, "alphaValue":[F
    iget-object v7, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightPaint:Landroid/graphics/Paint;

    const/16 v8, 0x3e8

    invoke-direct {p0, v7, v2, v8}, Lcom/nubia/settings/turboshow/WifiLetView;->createAlphaAnimator(Landroid/graphics/Paint;[FI)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 186
    .local v1, "alphaAnimator2":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xfa

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 188
    const/4 v7, 0x2

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    .line 189
    .local v5, "progressValue":[F
    const/16 v7, 0x190

    invoke-direct {p0, v5, v7}, Lcom/nubia/settings/turboshow/WifiLetView;->createProgressAnimator([FI)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 190
    .local v3, "progressAnimator1":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3f0ccccd    # 0.55f

    const v9, 0x3dae147b    # 0.085f

    const v10, 0x3f2e147b    # 0.68f

    const v11, 0x3f07ae14    # 0.53f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    const-wide/16 v8, 0xfa

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 193
    const/4 v7, 0x2

    new-array v6, v7, [F

    fill-array-data v6, :array_3

    .line 194
    .local v6, "progressValue2":[F
    const/16 v7, 0x320

    invoke-direct {p0, v6, v7}, Lcom/nubia/settings/turboshow/WifiLetView;->createProgressAnimator([FI)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 195
    .local v4, "progressAnimator2":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e5c28f6    # 0.215f

    const v9, 0x3f1c28f6    # 0.61f

    const v10, 0x3eb5c28f    # 0.355f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    const-wide/16 v8, 0x28a

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 198
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 199
    iget-object v7, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 200
    iget-object v7, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 201
    return-void

    .line 171
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 184
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 188
    :array_2
    .array-data 4
        -0x3c4c0000    # -360.0f
        -0x3ccc0000    # -180.0f
    .end array-data

    .line 193
    :array_3
    .array-data 4
        -0x3ccc0000    # -180.0f
        -0x3c4c0000    # -360.0f
    .end array-data
.end method

.method public startRefreashAnim(IZ)V
    .locals 8
    .param p1, "percentNum"    # I
    .param p2, "isFlash"    # Z

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/nubia/settings/turboshow/WifiLetView;->cancelAnim()V

    .line 220
    iput-boolean v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawOverLightBmp:Z

    .line 221
    iput-boolean v4, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mIsDrawFlashBmp:Z

    .line 222
    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    invoke-direct {p0, p1}, Lcom/nubia/settings/turboshow/WifiLetView;->calculateSweepAngle(I)F

    move-result v0

    .line 224
    .local v0, "nextSweepAngle":F
    const/4 v2, 0x2

    new-array v1, v2, [F

    iget v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 225
    .local v1, "value":[F
    const/16 v2, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/nubia/settings/turboshow/WifiLetView;->createProgressAnimator([FI)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    .line 226
    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ee8f5c3    # 0.455f

    const v5, 0x3cf5c28f    # 0.03f

    const v6, 0x3f03d70a    # 0.515f

    const v7, 0x3f747ae1    # 0.955f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    if-eqz p2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/nubia/settings/turboshow/WifiLetView$2;

    invoke-direct {v3, p0}, Lcom/nubia/settings/turboshow/WifiLetView$2;-><init>(Lcom/nubia/settings/turboshow/WifiLetView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 238
    return-void
.end method
