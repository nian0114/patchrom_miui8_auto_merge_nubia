.class public Lnubia/widget/HorizontalPageIndicator;
.super Landroid/widget/LinearLayout;
.source "HorizontalPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCurrentPageIndex:I

.field private mDividerBottom:Landroid/view/View;

.field private nPageCount:I

.field private parent:Lcom/android/internal/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/HorizontalPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0, p1}, Lnubia/widget/HorizontalPageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .local v0, "page":I
    iput v0, p0, Lnubia/widget/HorizontalPageIndicator;->mCurrentPageIndex:I

    iget-object v1, p0, Lnubia/widget/HorizontalPageIndicator;->parent:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 8
    .param p1, "nCurrent"    # I

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xe

    const/16 v5, 0x8

    const v4, 0x3090073

    iget v3, p0, Lnubia/widget/HorizontalPageIndicator;->nPageCount:I

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lnubia/widget/HorizontalPageIndicator;->mCurrentPageIndex:I

    invoke-virtual {p0, v3}, Lnubia/widget/HorizontalPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .local v2, "viewCurrent":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "paramsOther":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v3, 0x30200d8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput p1, p0, Lnubia/widget/HorizontalPageIndicator;->mCurrentPageIndex:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v0, "paramsCurrent":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v3, p0, Lnubia/widget/HorizontalPageIndicator;->mCurrentPageIndex:I

    invoke-virtual {p0, v3}, Lnubia/widget/HorizontalPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "viewCurrent":Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2    # "viewCurrent":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x30200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p0, Lnubia/widget/HorizontalPageIndicator;->parent:Lcom/android/internal/widget/ViewPager;

    iget v4, p0, Lnubia/widget/HorizontalPageIndicator;->mCurrentPageIndex:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public setDivider(Landroid/view/View;)V
    .locals 0
    .param p1, "divider"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lnubia/widget/HorizontalPageIndicator;->mDividerBottom:Landroid/view/View;

    return-void
.end method

.method public setPageCount(II)V
    .locals 9
    .param p1, "nCount"    # I
    .param p2, "nCurrent"    # I

    .prologue
    const v8, 0x3090073

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    if-le p1, v6, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lnubia/widget/HorizontalPageIndicator;->setVisibility(I)V

    iget-object v3, p0, Lnubia/widget/HorizontalPageIndicator;->mDividerBottom:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnubia/widget/HorizontalPageIndicator;->mDividerBottom:Landroid/view/View;

    if-le p1, v6, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-gt p1, v6, :cond_3

    :goto_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->removeAllViews()V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_6

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, "dot":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-ne v1, p2, :cond_4

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lnubia/widget/HorizontalPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v1, p2, :cond_5

    const v3, 0x30200d7

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0, v0}, Lnubia/widget/HorizontalPageIndicator;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    const v3, 0x30200d8

    goto :goto_4

    .end local v0    # "dot":Landroid/widget/ImageView;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iput p1, p0, Lnubia/widget/HorizontalPageIndicator;->nPageCount:I

    iput p2, p0, Lnubia/widget/HorizontalPageIndicator;->mCurrentPageIndex:I

    iget-object v3, p0, Lnubia/widget/HorizontalPageIndicator;->parent:Lcom/android/internal/widget/ViewPager;

    iget v4, p0, Lnubia/widget/HorizontalPageIndicator;->mCurrentPageIndex:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public setParent(Lcom/android/internal/widget/ViewPager;)V
    .locals 0
    .param p1, "page"    # Lcom/android/internal/widget/ViewPager;

    .prologue
    iput-object p1, p0, Lnubia/widget/HorizontalPageIndicator;->parent:Lcom/android/internal/widget/ViewPager;

    return-void
.end method
