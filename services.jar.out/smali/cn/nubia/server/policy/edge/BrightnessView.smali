.class public Lcn/nubia/server/policy/edge/BrightnessView;
.super Landroid/view/View;
.source "BrightnessView.java"


# instance fields
.field private mBackgroundBmp:Landroid/graphics/Bitmap;

.field private mBrightBmp:Landroid/graphics/Bitmap;

.field private mCenterOffset:F

.field private mCenter_X:F

.field private mCenter_Y:F

.field private mClipPath:Landroid/graphics/Path;

.field private mClipRectF:Landroid/graphics/RectF;

.field private mDstRectF:Landroid/graphics/RectF;

.field private mGrayBmp:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStringOffset:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->initView()V

    return-void
.end method

.method private drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;F)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "offset_Y"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_X:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_Y:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_X:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_Y:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mSweepAngle:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x5e000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3090084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mDstRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3020012

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mGrayBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3020011

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenterOffset:F

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mStringOffset:F

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v8, v1}, Lcn/nubia/server/policy/edge/BrightnessView;->drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;F)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mGrayBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_Y:F

    neg-float v1, v1

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenterOffset:F

    add-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v8, v1}, Lcn/nubia/server/policy/edge/BrightnessView;->drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipPath:Landroid/graphics/Path;

    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_X:F

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenterOffset:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_X:F

    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenterOffset:F

    iget-object v3, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    sub-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_X:F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    add-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenterOffset:F

    iget-object v5, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d3d0000    # -97.5f

    iget v3, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mSweepAngle:F

    neg-float v3, v3

    const v4, 0x3c23d70a    # 0.01f

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_Y:F

    neg-float v1, v1

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenterOffset:F

    add-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v8, v1}, Lcn/nubia/server/policy/edge/BrightnessView;->drawSourceImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x30c003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_X:F

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenterOffset:F

    iget v3, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mStringOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_X:F

    sub-int v0, p5, p3

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mCenter_Y:F

    return-void
.end method

.method public recycleBitmap()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mGrayBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mGrayBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mGrayBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBrightBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mBackgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method public refreshBrightness(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "max"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v2, p1

    int-to-float v3, p2

    mul-float/2addr v3, v4

    div-float v1, v2, v3

    .local v1, "ratio":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .local v0, "num":I
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x41700000    # 15.0f

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/server/policy/edge/BrightnessView;->mSweepAngle:F

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessView;->invalidate()V

    return-void

    .end local v0    # "num":I
    :cond_1
    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
