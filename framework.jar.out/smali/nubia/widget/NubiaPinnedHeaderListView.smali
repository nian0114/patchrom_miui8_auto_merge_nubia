.class public Lnubia/widget/NubiaPinnedHeaderListView;
.super Landroid/widget/ListView;
.source "NubiaPinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mAdapter:Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mAdapter:Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    invoke-interface {v6, p1}, Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v4

    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v9, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mAdapter:Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    iget-object v7, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    const/16 v8, 0xff

    invoke-interface {v6, v7, p1, v8}, Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v7, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    iget v8, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iput-boolean v10, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v9}, Lnubia/widget/NubiaPinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .local v1, "bottom":I
    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .local v3, "headerHeight":I
    if-ge v1, v3, :cond_3

    sub-int v5, v1, v3

    .local v5, "y":I
    add-int v6, v3, v5

    mul-int/lit16 v6, v6, 0xff

    div-int v0, v6, v3

    .local v0, "alpha":I
    :goto_1
    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mAdapter:Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    iget-object v7, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v6, v7, p1, v0}, Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v6, v5, :cond_2

    iget-object v6, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v7, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    iget v8, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v9, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v10, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    .end local v0    # "alpha":I
    .end local v5    # "y":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "y":I
    const/16 v0, 0xff

    .restart local v0    # "alpha":I
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lnubia/widget/NubiaPinnedHeaderListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lnubia/widget/NubiaPinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    iget v2, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lnubia/widget/NubiaPinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaPinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lnubia/widget/NubiaPinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewWidth:I

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderViewHeight:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lnubia/widget/NubiaPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mAdapter:Lnubia/widget/NubiaPinnedHeaderListView$NubiaPinnedHeaderAdapter;

    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lnubia/widget/NubiaPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaPinnedHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaPinnedHeaderListView;->requestLayout()V

    return-void
.end method
