.class public Lcom/android/settings_ex/LightSeekBar;
.super Landroid/widget/SeekBar;
.source "LightSeekBar.java"


# instance fields
.field private isBeginCenter:Z

.field private mHeightPoint:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaintForRet:Landroid/graphics/Paint;

.field private mProgressHeight:I

.field private mThumbOffset:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/LightSeekBar;->mPaintForRet:Landroid/graphics/Paint;

    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/LightSeekBar;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/LightSeekBar;->mPaintForRet:Landroid/graphics/Paint;

    .line 34
    iget-object v1, p0, Lcom/android/settings_ex/LightSeekBar;->mPaintForRet:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getMinimumHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/LightSeekBar;->mProgressHeight:I

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingRight:I

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    .local v0, "mThumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/settings_ex/LightSeekBar;->mThumbOffset:I

    .line 41
    return-void
.end method

.method private redraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getProgress()I

    move-result v0

    .line 53
    .local v0, "current":I
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mProgressHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/settings_ex/LightSeekBar;->mHeightPoint:I

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/LightSeekBar;->mWidth:I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getMax()I

    move-result v2

    .line 59
    .local v2, "mMax":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .local v3, "ret":Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/android/settings_ex/LightSeekBar;->isBeginCenter:Z

    if-eqz v5, :cond_1

    .line 61
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_0

    .line 62
    iget v5, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mThumbOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mWidth:I

    iget v7, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    div-int/2addr v6, v2

    add-int v1, v5, v6

    .line 64
    .local v1, "left":I
    iget v5, p0, Lcom/android/settings_ex/LightSeekBar;->mWidth:I

    div-int/lit8 v4, v5, 0x2

    .line 75
    .local v4, "right":I
    :goto_0
    iget v5, p0, Lcom/android/settings_ex/LightSeekBar;->mHeightPoint:I

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mHeightPoint:I

    iget v7, p0, Lcom/android/settings_ex/LightSeekBar;->mProgressHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    iget-object v5, p0, Lcom/android/settings_ex/LightSeekBar;->mPaintForRet:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    return-void

    .line 66
    .end local v1    # "left":I
    .end local v4    # "right":I
    :cond_0
    iget v5, p0, Lcom/android/settings_ex/LightSeekBar;->mWidth:I

    div-int/lit8 v1, v5, 0x2

    .line 67
    .restart local v1    # "left":I
    iget v5, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mThumbOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mWidth:I

    iget v7, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    div-int/2addr v6, v2

    add-int v4, v5, v6

    .restart local v4    # "right":I
    goto :goto_0

    .line 71
    .end local v1    # "left":I
    .end local v4    # "right":I
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    .line 72
    .restart local v1    # "left":I
    iget v5, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mThumbOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings_ex/LightSeekBar;->mWidth:I

    iget v7, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settings_ex/LightSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    div-int/2addr v6, v2

    add-int v4, v5, v6

    .restart local v4    # "right":I
    goto :goto_0
.end method


# virtual methods
.method public isBeginCenter()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings_ex/LightSeekBar;->isBeginCenter:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/LightSeekBar;->redraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBeginCenter(Z)V
    .locals 4
    .param p1, "isBeginCenter"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/settings_ex/LightSeekBar;->isBeginCenter:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 87
    .local v0, "mProgressDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x102000d

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LightSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/LightSeekBar;->invalidate()V

    .line 93
    return-void
.end method
