.class public Lcom/android/settings_ex/widget/ChartView;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# instance fields
.field private mContent:Landroid/graphics/Rect;

.field mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

.field private mOptimalWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mOptimalWidthWeight:F

.field mVert:Lcom/android/settings_ex/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    .line 47
    iput v4, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidthWeight:F

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    .line 62
    sget-object v1, Lcom/android/settings_ex/R$styleable;->ChartView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/widget/ChartView;->setOptimalWidth(IF)V

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartView;->setClipToPadding(Z)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartView;->setClipChildren(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings_ex/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings_ex/widget/ChartAxis;

    .prologue
    .line 73
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    .line 74
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    .line 75
    return-void
.end method

.method protected layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 6
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 135
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 136
    .local v1, "parentRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .local v0, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings_ex/widget/ChartView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 139
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->layout(IIII)V

    .line 140
    return-void
.end method

.method protected layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;
    .param p2, "parentRect"    # Landroid/graphics/Rect;
    .param p3, "childRect"    # Landroid/graphics/Rect;

    .prologue
    const v4, 0x800033

    .line 143
    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    .local v0, "sweepMargins":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getFollowAxis()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 148
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 149
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 150
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 151
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v4, v1, v2, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 156
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 157
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 158
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 159
    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v4, v1, v2, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 97
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingTop()I

    move-result v9

    sub-int v10, p4, p2

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v11, p5, p3

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 100
    .local v6, "width":I
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 103
    .local v2, "height":I
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    int-to-float v8, v6

    invoke-interface {v7, v8}, Lcom/android/settings_ex/widget/ChartAxis;->setSize(F)Z

    .line 104
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    int-to-float v8, v2

    invoke-interface {v7, v8}, Lcom/android/settings_ex/widget/ChartAxis;->setSize(F)Z

    .line 106
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 107
    .local v5, "parentRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v1, "childRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    instance-of v7, v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    if-eqz v7, :cond_1

    .line 118
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v7, v6, v2, v5, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 119
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 109
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_1
    instance-of v7, v0, Lcom/android/settings_ex/widget/ChartGridView;

    if-eqz v7, :cond_2

    .line 123
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v7, v6, v2, v5, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 127
    :cond_2
    instance-of v7, v0, Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v7, :cond_0

    move-object v7, v0

    .line 128
    check-cast v7, Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {p0, v7, v5, v1}, Lcom/android/settings_ex/widget/ChartView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 129
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 132
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    sub-int v0, v2, v3

    .line 88
    .local v0, "slack":I
    iget v2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    if-lez v2, :cond_0

    if-lez v0, :cond_0

    .line 89
    iget v2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidthWeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 90
    .local v1, "targetWidth":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 93
    .end local v1    # "targetWidth":I
    :cond_0
    return-void
.end method

.method public setOptimalWidth(IF)V
    .locals 0
    .param p1, "optimalWidth"    # I
    .param p2, "optimalWidthWeight"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    .line 79
    iput p2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidthWeight:F

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->requestLayout()V

    .line 81
    return-void
.end method
