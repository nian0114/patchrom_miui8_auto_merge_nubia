.class public Lcom/android/settings_ex/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;
    }
.end annotation


# instance fields
.field private mAxis:Lcom/android/settings_ex/widget/ChartAxis;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentOffset:Landroid/graphics/Rect;

.field private mDragInterval:J

.field private mFollowAxis:I

.field private mLabelColor:I

.field private mLabelLayout:Landroid/text/DynamicLayout;

.field private mLabelMinSize:I

.field private mLabelOffset:F

.field private mLabelSize:F

.field private mLabelTemplate:Landroid/text/SpannableStringBuilder;

.field private mLabelTemplateRes:I

.field private mLabelValue:J

.field private mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

.field private mMargins:Landroid/graphics/Rect;

.field private mNeighborMargin:F

.field private mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mSafeRegion:I

.field private mSweep:Landroid/graphics/drawable/Drawable;

.field private mSweepOffset:Landroid/graphics/Point;

.field private mSweepPadding:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTracking:Landroid/view/MotionEvent;

.field private mTrackingStart:F

.field private mValidAfter:J

.field private mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mValidBefore:J

.field private mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    .line 55
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    .line 57
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    .line 59
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    .line 85
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 90
    iput v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 98
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mDragInterval:J

    .line 110
    new-array v2, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

    .line 152
    new-instance v2, Lcom/android/settings_ex/widget/ChartSweepView$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/widget/ChartSweepView$1;-><init>(Lcom/android/settings_ex/widget/ChartSweepView;)V

    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 123
    sget-object v2, Lcom/android/settings_ex/R$styleable;->ChartSweepView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    const v3, -0xffff01

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 127
    .local v1, "color":I
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setSweepDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 128
    const/4 v2, -0x1

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setFollowAxis(I)V

    .line 129
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighborMargin(F)V

    .line 130
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setSafeRegion(I)V

    .line 132
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setLabelMinSize(I)V

    .line 133
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setLabelTemplate(I)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setLabelColor(I)V

    .line 137
    const v2, 0x7f020082

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setClickable(Z)V

    .line 146
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setWillNotDraw(Z)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->dispatchRequestEdit()V

    return-void
.end method

.method private buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 10
    .param p1, "parentContent"    # Landroid/graphics/Rect;
    .param p2, "afterValue"    # J
    .param p4, "beforeValue"    # J
    .param p6, "margin"    # F

    .prologue
    .line 604
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    instance-of v5, v5, Lcom/android/settings_ex/widget/InvertedChartAxis;

    if-eqz v5, :cond_0

    .line 605
    move-wide v6, p4

    .line 606
    .local v6, "temp":J
    move-wide p4, p2

    .line 607
    move-wide p2, v6

    .line 610
    .end local v6    # "temp":J
    :cond_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, p2, v8

    if-eqz v5, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, p2, v8

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 611
    .local v1, "afterValid":Z
    :goto_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, p4, v8

    if-eqz v5, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, p4, v8

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 613
    .local v3, "beforeValid":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v5, p2, p3}, Lcom/android/settings_ex/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    add-float v0, v5, p6

    .line 614
    .local v0, "afterPoint":F
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v5, p4, p5}, Lcom/android/settings_ex/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    sub-float v2, v5, p6

    .line 616
    .local v2, "beforePoint":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 617
    .local v4, "clampRect":Landroid/graphics/Rect;
    iget v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    .line 618
    if-eqz v3, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->top:I

    float-to-int v8, v2

    add-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 619
    :cond_1
    if-eqz v1, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 624
    :cond_2
    :goto_2
    return-object v4

    .line 610
    .end local v0    # "afterPoint":F
    .end local v1    # "afterValid":Z
    .end local v2    # "beforePoint":F
    .end local v3    # "beforeValid":Z
    .end local v4    # "clampRect":Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 611
    .restart local v1    # "afterValid":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 621
    .restart local v0    # "afterPoint":F
    .restart local v2    # "beforePoint":F
    .restart local v3    # "beforeValid":Z
    .restart local v4    # "clampRect":Landroid/graphics/Rect;
    :cond_5
    if-eqz v3, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->left:I

    float-to-int v8, v2

    add-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 622
    :cond_6
    if-eqz v1, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method private computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "parentContent"    # Landroid/graphics/Rect;

    .prologue
    .line 592
    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfter:J

    iget-wide v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBefore:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v8

    .line 593
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v4

    iget v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighborMargin:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 596
    .local v7, "dynamicRect":Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 599
    :cond_0
    return-object v8
.end method

.method private dispatchOnSweep(Z)V
    .locals 1
    .param p1, "sweepDone"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;->onSweep(Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method private dispatchRequestEdit()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;->requestEdit(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static getLabelBottom(Lcom/android/settings_ex/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 746
    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelWidth(Lcom/android/settings_ex/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 560
    .local v0, "parent":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetInset()F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 183
    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 186
    .local v0, "targetHeight":F
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v3, v0, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 190
    .end local v0    # "targetHeight":F
    :goto_0
    return v2

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 190
    .local v1, "targetWidth":F
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v1, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0
.end method

.method private getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "eventInParent"    # Landroid/view/MotionEvent;

    .prologue
    .line 415
    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method private getValidAfterDynamic()J
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 577
    .local v0, "dynamic":Lcom/android/settings_ex/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method private getValidBeforeDynamic()J
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 582
    .local v0, "dynamic":Lcom/android/settings_ex/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private invalidateLabel()V
    .locals 6

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget-wide v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/settings_ex/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    iput-wide v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    goto :goto_0
.end method

.method private invalidateLabelTemplate()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 260
    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplateRes:I

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 263
    .local v8, "template":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 264
    .local v2, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 266
    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 268
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 269
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    .line 271
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabel()V

    .line 278
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v8    # "template":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->requestLayout()V

    .line 280
    return-void

    .line 274
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 275
    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    goto :goto_0
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 568
    return-void
.end method

.method public addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    .line 196
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 633
    :cond_0
    return-void
.end method

.method public getFollowAxis()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    return v0
.end method

.method public getLabelValue()J
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoint()F
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method init(Lcom/android/settings_ex/widget/ChartAxis;)V
    .locals 1
    .param p1, "axis"    # Lcom/android/settings_ex/widget/ChartAxis;

    .prologue
    .line 159
    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    .line 160
    return-void
.end method

.method public invalidateLabelOffset()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "labelOffset":F
    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_3

    .line 301
    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:F

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v2

    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 303
    .local v1, "margin":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 304
    div-float v0, v1, v5

    .line 319
    .end local v1    # "margin":F
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:F

    iget v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelMinSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:F

    .line 322
    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 323
    iput v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelOffset:F

    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    .line 325
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 328
    :cond_2
    return-void

    .line 306
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_4

    .line 307
    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:F

    .line 308
    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 309
    .restart local v1    # "margin":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 310
    neg-float v2, v1

    div-float v0, v2, v5

    goto :goto_0

    .line 313
    .end local v1    # "margin":F
    :cond_4
    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:F

    goto :goto_0
.end method

.method public isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings_ex/widget/ChartSweepView;)Z
    .locals 3
    .param p1, "eventInParent"    # Landroid/view/MotionEvent;
    .param p2, "another"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v1

    .line 410
    .local v1, "selfDist":F
    invoke-direct {p2, p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v0

    .line 411
    .local v0, "anotherDist":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 336
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 705
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getWidth()I

    move-result v4

    .line 708
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getHeight()I

    move-result v2

    .line 711
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_0

    .line 712
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 714
    .local v1, "count":I
    iget v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:F

    const/high16 v6, 0x44800000    # 1024.0f

    sub-float v0, v5, v6

    .line 715
    .local v0, "alignOffset":F
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelOffset:F

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 717
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v5, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 719
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 720
    iget v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSafeRegion:I

    add-int v3, v5, v6

    .line 725
    .end local v0    # "alignOffset":F
    .end local v1    # "count":I
    .local v3, "labelSize":I
    :goto_0
    iget v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 726
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 733
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 739
    return-void

    .line 722
    .end local v3    # "labelSize":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "labelSize":I
    goto :goto_0

    .line 729
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 699
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 700
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 701
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v9, :cond_0

    .line 640
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 641
    .local v3, "sweepHeight":I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v9}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    .line 643
    .local v6, "templateHeight":I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 644
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 645
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTargetInset()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 646
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 654
    .end local v3    # "sweepHeight":I
    .end local v6    # "templateHeight":I
    :goto_0
    iget v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 655
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v9, v10

    .line 657
    .local v4, "targetHeight":I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 658
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 659
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 660
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 670
    .end local v4    # "targetHeight":I
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 673
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v8

    .line 674
    .local v8, "widthBefore":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .line 675
    .local v1, "heightBefore":I
    iget v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    if-nez v9, :cond_2

    .line 676
    mul-int/lit8 v7, v8, 0x3

    .line 677
    .local v7, "widthAfter":I
    invoke-virtual {p0, v7, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 678
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v7, v8

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 680
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v2, v9, 0x2

    .line 681
    .local v2, "offset":I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 682
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 693
    .end local v7    # "widthAfter":I
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->offset(II)V

    .line 694
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    neg-int v10, v10

    iget-object v11, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 695
    return-void

    .line 649
    .end local v1    # "heightBefore":I
    .end local v2    # "offset":I
    .end local v8    # "widthBefore":I
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 650
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 651
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 662
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v5, v9, v10

    .line 664
    .local v5, "targetWidth":I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 665
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->right:I

    .line 666
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 667
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 684
    .end local v5    # "targetWidth":I
    .restart local v1    # "heightBefore":I
    .restart local v8    # "widthBefore":I
    :cond_2
    mul-int/lit8 v0, v1, 0x2

    .line 685
    .local v0, "heightAfter":I
    invoke-virtual {p0, v8, v0}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 686
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v0, v1

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 688
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v9, 0x2

    .line 689
    .restart local v2    # "offset":I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 690
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x0

    .line 533
    :goto_0
    return v22

    .line 426
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 427
    .local v16, "parent":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 533
    const/16 v22, 0x0

    goto :goto_0

    .line 433
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x8

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1

    const/4 v4, 0x1

    .line 435
    .local v4, "acceptDrag":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_2

    const/4 v5, 0x1

    .line 443
    .local v5, "acceptLabel":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v12

    .line 444
    .local v12, "eventInParent":Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 447
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

    .local v6, "arr$":[Lcom/android/settings_ex/widget/ChartSweepView;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    if-ge v13, v14, :cond_9

    aget-object v15, v6, v13

    .line 448
    .local v15, "neighbor":Lcom/android/settings_ex/widget/ChartSweepView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15}, Lcom/android/settings_ex/widget/ChartSweepView;->isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings_ex/widget/ChartSweepView;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 449
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 434
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    .end local v6    # "arr$":[Lcom/android/settings_ex/widget/ChartSweepView;
    .end local v12    # "eventInParent":Landroid/view/MotionEvent;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "neighbor":Lcom/android/settings_ex/widget/ChartSweepView;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 435
    .restart local v4    # "acceptDrag":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 438
    .end local v4    # "acceptDrag":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x8

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5

    const/4 v4, 0x1

    .line 439
    .restart local v4    # "acceptDrag":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_6

    const/4 v5, 0x1

    .restart local v5    # "acceptLabel":Z
    :goto_5
    goto :goto_2

    .line 438
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 439
    .restart local v4    # "acceptDrag":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 447
    .restart local v5    # "acceptLabel":Z
    .restart local v6    # "arr$":[Lcom/android/settings_ex/widget/ChartSweepView;
    .restart local v12    # "eventInParent":Landroid/view/MotionEvent;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "neighbor":Lcom/android/settings_ex/widget/ChartSweepView;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 453
    .end local v15    # "neighbor":Lcom/android/settings_ex/widget/ChartSweepView;
    :cond_9
    if-eqz v4, :cond_c

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    .line 459
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 460
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 463
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isActivated()Z

    move-result v22

    if-nez v22, :cond_a

    .line 464
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 467
    :cond_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 457
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    goto :goto_6

    .line 468
    :cond_c
    if-eqz v5, :cond_d

    .line 469
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 470
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 472
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 473
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 477
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    .end local v6    # "arr$":[Lcom/android/settings_ex/widget/ChartSweepView;
    .end local v12    # "eventInParent":Landroid/view/MotionEvent;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 478
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 481
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v17

    .line 485
    .local v17, "parentContent":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 486
    .local v7, "clampRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v22, 0x1

    goto/16 :goto_0

    .line 489
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v11, v0

    .line 491
    .local v11, "currentTargetY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    sub-float v23, v23, v24

    add-float v19, v22, v23

    .line 493
    .local v19, "requestedTargetY":F
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    .line 495
    .local v9, "clampedTargetY":F
    sub-float v22, v9, v11

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationY(F)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v9, v23

    invoke-interface/range {v22 .. v23}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v20

    .line 510
    .end local v9    # "clampedTargetY":F
    .end local v11    # "currentTargetY":F
    .end local v19    # "requestedTargetY":F
    .local v20, "value":J
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mDragInterval:J

    move-wide/from16 v22, v0

    rem-long v22, v20, v22

    sub-long v20, v20, v22

    .line 511
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 513
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 514
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 499
    .end local v20    # "value":J
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v10, v0

    .line 500
    .local v10, "currentTargetX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getRawX()F

    move-result v24

    sub-float v23, v23, v24

    add-float v18, v22, v23

    .line 502
    .local v18, "requestedTargetX":F
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    .line 504
    .local v8, "clampedTargetX":F
    sub-float v22, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationX(F)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v8, v23

    invoke-interface/range {v22 .. v23}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v20

    .restart local v20    # "value":J
    goto/16 :goto_7

    .line 517
    .end local v7    # "clampRect":Landroid/graphics/Rect;
    .end local v8    # "clampedTargetX":F
    .end local v10    # "currentTargetX":F
    .end local v17    # "parentContent":Landroid/graphics/Rect;
    .end local v18    # "requestedTargetX":F
    .end local v20    # "value":J
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->performClick()Z

    .line 529
    :cond_11
    :goto_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 530
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 519
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 520
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    .line 521
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 522
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    .line 523
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 524
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationX(F)V

    .line 525
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationY(F)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->requestLayout()V

    goto :goto_8

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 573
    return-void
.end method

.method public setDragInterval(J)V
    .locals 1
    .param p1, "dragInterval"    # J

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mDragInterval:J

    .line 176
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->requestLayout()V

    .line 215
    return-void
.end method

.method public setFollowAxis(I)V
    .locals 0
    .param p1, "followAxis"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    .line 242
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelColor:I

    .line 256
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 257
    return-void
.end method

.method public setLabelMinSize(I)V
    .locals 0
    .param p1, "minSize"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelMinSize:I

    .line 246
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 247
    return-void
.end method

.method public setLabelTemplate(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplateRes:I

    .line 251
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 252
    return-void
.end method

.method public setNeighborMargin(F)V
    .locals 0
    .param p1, "neighborMargin"    # F

    .prologue
    .line 387
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighborMargin:F

    .line 388
    return-void
.end method

.method public varargs setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .param p1, "neighbors"    # [Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

    .line 164
    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0
    .param p1, "safeRegion"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSafeRegion:I

    .line 392
    return-void
.end method

.method public setSweepDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "sweep"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_0
    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 229
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    .line 238
    return-void

    :cond_2
    move v0, v1

    .line 228
    goto :goto_0

    .line 234
    :cond_3
    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setValidRange(JJ)V
    .locals 1
    .param p1, "validAfter"    # J
    .param p3, "validBefore"    # J

    .prologue
    .line 382
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfter:J

    .line 383
    iput-wide p3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBefore:J

    .line 384
    return-void
.end method

.method public setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .param p1, "validAfter"    # Lcom/android/settings_ex/widget/ChartSweepView;
    .param p2, "validBefore"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 401
    iput-object p2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 402
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    .line 357
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabel()V

    .line 358
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 344
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public shouldAdjustAxis()I
    .locals 4

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method

.method public updateValueFromPosition()V
    .locals 6

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 545
    .local v2, "parentContent":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 547
    .local v1, "effectiveY":F
    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v3, v1}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 552
    .end local v1    # "effectiveY":F
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 550
    .local v0, "effectiveX":F
    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v3, v0}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
