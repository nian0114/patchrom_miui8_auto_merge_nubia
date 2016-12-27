.class public Lcom/android/settings_ex/widget/ZTabIndicator;
.super Landroid/view/View;
.source "ZTabIndicator.java"


# instance fields
.field private mFullUnderlineHeight:I

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mStart:F

.field private final mTabPaint:Landroid/graphics/Paint;

.field private mTotal:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/ZTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ZTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mStart:F

    .line 12
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTotal:I

    .line 13
    const/16 v1, 0x438

    iput v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mWidth:I

    .line 16
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTabPaint:Landroid/graphics/Paint;

    .line 19
    const v1, 0xff4d4d

    iput v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mIndicatorColor:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mWidth:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .local v0, "density":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mIndicatorHeight:I

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mFullUnderlineHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v7, 0xffffff

    const/high16 v6, -0x1000000

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ZTabIndicator;->getHeight()I

    move-result v11

    .line 67
    .local v11, "height":I
    move v10, v11

    .line 68
    .local v10, "bottom":I
    iget v0, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mStart:F

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ZTabIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTotal:I

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 69
    .local v1, "left":F
    iget v0, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mStart:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ZTabIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTotal:I

    int-to-float v2, v2

    div-float v3, v0, v2

    .line 70
    .local v3, "right":F
    iget v0, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mIndicatorHeight:I

    sub-int v12, v10, v0

    .line 71
    .local v12, "top":I
    iget-object v0, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTabPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mIndicatorColor:I

    and-int/2addr v2, v7

    or-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    int-to-float v2, v12

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTabPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mIndicatorColor:I

    and-int/2addr v2, v7

    or-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ZTabIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mFullUnderlineHeight:I

    sub-int v0, v11, v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ZTabIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ZTabIndicator;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v7, v0

    int-to-float v8, v11

    iget-object v9, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mTabPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 84
    iget v0, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mIndicatorHeight:I

    iget v1, p0, Lcom/android/settings_ex/widget/ZTabIndicator;->mFullUnderlineHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/widget/ZTabIndicator;->setMeasuredDimension(II)V

    .line 85
    return-void
.end method
