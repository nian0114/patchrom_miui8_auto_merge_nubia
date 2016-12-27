.class public Lcom/android/settings_ex/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;
    }
.end annotation


# instance fields
.field private mColoredRegions:I

.field private mGreenRatio:F

.field mLastLeftDiv:I

.field mLastRegion:I

.field mLastRightDiv:I

.field private mLeftColor:I

.field private mMiddleColor:I

.field private mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowIndicator:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, -0xff4201

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLeftColor:I

    .line 30
    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mMiddleColor:I

    .line 31
    const v0, -0xf0f10

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRightColor:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mShowIndicator:Z

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColoredRegions:I

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LinearColorBar;->setWillNotDraw(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    return-void
.end method

.method private pickColor(II)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "region"    # I

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRegion:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 153
    const/4 p1, -0x1

    .line 158
    .end local p1    # "color":I
    :cond_0
    :goto_0
    return p1

    .line 155
    .restart local p1    # "color":I
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColoredRegions:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 156
    const p1, -0xaaaaab

    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 106
    .local v0, "off":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 109
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    .line 140
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->getWidth()I

    move-result v3

    .line 167
    .local v3, "width":I
    const/4 v0, 0x0

    .line 169
    .local v0, "left":I
    int-to-float v4, v3

    iget v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRedRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v1, v0, v4

    .line 170
    .local v1, "right":I
    int-to-float v4, v3

    iget v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v1, v4

    .line 217
    .local v2, "right2":I
    if-ge v0, v1, :cond_0

    .line 218
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 219
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 220
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLeftColor:I

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/applications/LinearColorBar;->pickColor(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    .line 223
    move v0, v1

    .line 226
    :cond_0
    iput v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastLeftDiv:I

    .line 227
    iput v2, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRightDiv:I

    .line 229
    move v1, v2

    .line 231
    if-ge v0, v1, :cond_1

    .line 232
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 233
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 234
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mMiddleColor:I

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/applications/LinearColorBar;->pickColor(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 236
    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    .line 237
    move v0, v1

    .line 241
    :cond_1
    add-int v1, v0, v3

    .line 242
    if-ge v0, v1, :cond_2

    .line 243
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 244
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 245
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRightColor:I

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/applications/LinearColorBar;->pickColor(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v4, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 248
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->updateIndicator()V

    .line 115
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 122
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v0, v1

    .line 123
    .local v0, "x":I
    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastLeftDiv:I

    if-ge v0, v1, :cond_1

    .line 124
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRegion:I

    .line 130
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    goto :goto_0

    .line 125
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRightDiv:I

    if-ge v0, v1, :cond_2

    .line 126
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    .line 128
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRegion:I

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRegion:I

    invoke-interface {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;->onRegionTapped(I)V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLastRegion:I

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setColoredRegions(I)V
    .locals 0
    .param p1, "regions"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mColoredRegions:I

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    .line 73
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "yellow"    # I
    .param p3, "green"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mLeftColor:I

    .line 84
    iput p2, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mMiddleColor:I

    .line 85
    iput p3, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRightColor:I

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->updateIndicator()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    .line 88
    return-void
.end method

.method public setOnRegionTappedListener(Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    .line 66
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LinearColorBar;->setClickable(Z)V

    .line 68
    :cond_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mRedRatio:F

    .line 77
    iput p2, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mYellowRatio:F

    .line 78
    iput p3, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mGreenRatio:F

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    .line 80
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0
    .param p1, "showIndicator"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/LinearColorBar;->mShowIndicator:Z

    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->updateIndicator()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorBar;->invalidate()V

    .line 94
    return-void
.end method
