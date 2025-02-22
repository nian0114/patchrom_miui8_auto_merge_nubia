.class public Lcn/nubia/commonui/actionbar/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;,
        Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

.field private mMinHeight:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOuterActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static synthetic access$200(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .prologue
    .line 107
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/widget/Toolbar;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .prologue
    .line 107
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 1641
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1642
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1643
    .local v2, "childCount":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    invoke-static {p2, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1646
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1648
    if-eqz v4, :cond_2

    .line 1649
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 1650
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1651
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1652
    .local v5, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    iget v6, v5, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 1654
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1641
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1658
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1659
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1660
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1661
    .restart local v5    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    iget v6, v5, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 1663
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1667
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1026
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1033
    .local v0, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1034
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    return-void

    .line 1028
    .end local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1029
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v0, v1

    .line 1031
    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .restart local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    goto :goto_0
.end method

.method private ensureCollapseButtonView()V
    .locals 5

    .prologue
    .line 1005
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1006
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcn/nubia/commonui/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1008
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1010
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1011
    .local v0, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1012
    const/4 v1, 0x2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1013
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$3;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar$3;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    .end local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 513
    :cond_0
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    .prologue
    .line 838
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v1, :cond_0

    .line 839
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 840
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setPopupTheme(I)V

    .line 841
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuViewItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setOnMenuItemClickListener(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 842
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 843
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 844
    .local v0, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 845
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 848
    .end local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    .prologue
    .line 995
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 996
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcn/nubia/commonui/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 998
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 999
    .local v0, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1000
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    .end local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 1670
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1671
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1672
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    .line 1673
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    .line 1679
    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .end local v1    # "hGrav":I
    :pswitch_1
    return v1

    .restart local v1    # "hGrav":I
    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    .line 1673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 1590
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1591
    .local v3, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1592
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 1593
    .local v0, "alignmentOffset":I
    :goto_0
    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1603
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v5

    .line 1604
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    .line 1605
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHeight()I

    move-result v2

    .line 1606
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 1607
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 1608
    .local v7, "spaceAbove":I
    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_2

    .line 1609
    iget v7, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1617
    :cond_0
    :goto_1
    add-int v9, v5, v7

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :goto_2
    return v9

    .end local v0    # "alignmentOffset":I
    :cond_1
    move v0, v9

    .line 1592
    goto :goto_0

    .line 1595
    .restart local v0    # "alignmentOffset":I
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1598
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1611
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_2
    sub-int v10, v2, v4

    sub-int/2addr v10, v1

    sub-int/2addr v10, v7

    sub-int v8, v10, v5

    .line 1613
    .local v8, "spaceBelow":I
    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_0

    .line 1614
    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 1593
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 1622
    and-int/lit8 v0, p1, 0x70

    .line 1623
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 1629
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_0
    return v0

    .line 1623
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1688
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1689
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    .prologue
    .line 1784
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1786
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 1789
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMinHeight:I

    goto :goto_0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1694
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1695
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 1545
    aget v0, p2, v12

    .line 1546
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    aget v1, p2, v11

    .line 1547
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    .line 1548
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1549
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1550
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1551
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1552
    .local v6, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    iget v11, v6, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    .line 1553
    .local v4, "l":I
    iget v11, v6, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    .line 1554
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1555
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1556
    .local v8, "rightMargin":I
    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1557
    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1558
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 1549
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1560
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return v10
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 1565
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1566
    .local v2, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    iget v4, v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 1567
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 1568
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 1569
    invoke-direct {p0, p1, p4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1570
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1571
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1572
    iget v4, v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 1573
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1578
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1579
    .local v1, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    iget v4, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 1580
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 1581
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 1582
    invoke-direct {p0, p1, p4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1583
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1584
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1585
    iget v4, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 1586
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 1155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1157
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1158
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1159
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1160
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1161
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1162
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1163
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1165
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1167
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1171
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1132
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1135
    .local v2, "childWidthSpec":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1139
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1140
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    .line 1141
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1144
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1146
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1147
    return-void

    :cond_1
    move v4, p6

    .line 1141
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1069
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1070
    return-void
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6
    .param p1, "expand"    # Z

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1740
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1741
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1742
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1743
    .local v3, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    iget v4, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eq v0, v4, :cond_0

    .line 1744
    if-eqz p1, :cond_1

    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1744
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1747
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_2
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1179
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return v3

    .line 1181
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1182
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1183
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1184
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1182
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1189
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1684
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateChildVisibilityForExpandedActionView(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1750
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1751
    .local v0, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eq p1, v1, :cond_0

    .line 1752
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    :cond_0
    return-void

    .line 1752
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1723
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 540
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 542
    .local v0, "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 545
    :cond_0
    return-void

    .line 540
    .end local v0    # "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->dismissPopupMenus()V

    .line 414
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1718
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1700
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1705
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 1706
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    check-cast p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;)V

    .line 1712
    :goto_0
    return-object v0

    .line 1707
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 1708
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    check-cast p1, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 1709
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1710
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1712
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 1733
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    .line 1735
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1074
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1075
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1076
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1109
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1110
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    .line 1111
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    .line 1114
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    if-nez v2, :cond_1

    .line 1115
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1116
    .local v1, "handled":Z
    if-ne v0, v5, :cond_1

    if-nez v1, :cond_1

    .line 1117
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    .line 1121
    .end local v1    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1122
    :cond_2
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    .line 1125
    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1330
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    .line 1331
    .local v16, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getWidth()I

    move-result v45

    .line 1332
    .local v45, "width":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHeight()I

    move-result v14

    .line 1333
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v24

    .line 1334
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v25

    .line 1335
    .local v25, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v26

    .line 1336
    .local v26, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v23

    .line 1337
    .local v23, "paddingBottom":I
    move/from16 v20, v24

    .line 1338
    .local v20, "left":I
    sub-int v29, v45, v25

    .line 1340
    .local v29, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempMargins:[I

    .line 1341
    .local v12, "collapsingMargins":[I
    const/16 v46, 0x0

    const/16 v47, 0x1

    const/16 v48, 0x0

    aput v48, v12, v47

    aput v48, v12, v46

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getMinimumHeightCompat()I

    move-result v5

    .line 1346
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 1347
    if-eqz v16, :cond_f

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1356
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_1

    .line 1357
    if-eqz v16, :cond_10

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1366
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 1367
    if-eqz v16, :cond_11

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 1376
    :cond_2
    :goto_3
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetLeft()I

    move-result v48

    sub-int v48, v48, v20

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1377
    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetRight()I

    move-result v48

    sub-int v49, v45, v25

    sub-int v49, v49, v29

    sub-int v48, v48, v49

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetLeft()I

    move-result v46

    move/from16 v0, v20

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1379
    sub-int v46, v45, v25

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetRight()I

    move-result v47

    sub-int v46, v46, v47

    move/from16 v0, v29

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_3

    .line 1382
    if-eqz v16, :cond_12

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1391
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_4

    .line 1392
    if-eqz v16, :cond_13

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1401
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v18

    .line 1402
    .local v18, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v17

    .line 1403
    .local v17, "layoutSubtitle":Z
    const/16 v39, 0x0

    .line 1404
    .local v39, "titleHeight":I
    if-eqz v18, :cond_5

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1406
    .local v22, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 1408
    .end local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_5
    if-eqz v17, :cond_6

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1410
    .restart local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 1413
    .end local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_6
    if-nez v18, :cond_7

    if-eqz v17, :cond_d

    .line 1415
    :cond_7
    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    .line 1416
    .local v43, "topChild":Landroid/view/View;
    :goto_6
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1417
    .local v6, "bottomChild":Landroid/view/View;
    :goto_7
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    check-cast v44, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1418
    .local v44, "toplp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1419
    .local v7, "bottomlp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-gtz v46, :cond_9

    :cond_8
    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-lez v46, :cond_16

    :cond_9
    const/16 v38, 0x1

    .line 1422
    .local v38, "titleHasWidth":Z
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mGravity:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x70

    sparse-switch v46, :sswitch_data_0

    .line 1428
    sub-int v46, v14, v26

    sub-int v31, v46, v23

    .line 1429
    .local v31, "space":I
    sub-int v46, v31, v39

    div-int/lit8 v32, v46, 0x2

    .line 1430
    .local v32, "spaceAbove":I
    move-object/from16 v0, v44

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v32

    move/from16 v1, v46

    if-ge v0, v1, :cond_17

    .line 1431
    move-object/from16 v0, v44

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v32, v46, v47

    .line 1440
    :cond_a
    :goto_9
    add-int v42, v26, v32

    .line 1447
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .local v42, "titleTop":I
    :goto_a
    if-eqz v16, :cond_19

    .line 1448
    if-eqz v38, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_b
    const/16 v47, 0x1

    aget v47, v12, v47

    sub-int v28, v46, v47

    .line 1449
    .local v28, "rd":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    sub-int v29, v29, v46

    .line 1450
    const/16 v46, 0x1

    const/16 v47, 0x0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1451
    move/from16 v41, v29

    .line 1452
    .local v41, "titleRight":I
    move/from16 v36, v29

    .line 1454
    .local v36, "subtitleRight":I
    if-eqz v18, :cond_b

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1456
    .restart local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v40, v41, v46

    .line 1457
    .local v40, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 1458
    .local v37, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1459
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v41, v40, v46

    .line 1460
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 1462
    .end local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v40    # "titleLeft":I
    :cond_b
    if-eqz v17, :cond_c

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1464
    .restart local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v35, v36, v46

    .line 1466
    .local v35, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 1467
    .local v34, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1468
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v36, v36, v46

    .line 1469
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 1471
    .end local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v35    # "subtitleLeft":I
    :cond_c
    if-eqz v38, :cond_d

    .line 1472
    move/from16 v0, v41

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1507
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v28    # "rd":I
    .end local v36    # "subtitleRight":I
    .end local v38    # "titleHasWidth":Z
    .end local v41    # "titleRight":I
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1509
    .local v21, "leftViewsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    move/from16 v0, v21

    if-ge v15, v0, :cond_1d

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 1509
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1330
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v14    # "height":I
    .end local v15    # "i":I
    .end local v16    # "isRtl":Z
    .end local v17    # "layoutSubtitle":Z
    .end local v18    # "layoutTitle":Z
    .end local v20    # "left":I
    .end local v21    # "leftViewsCount":I
    .end local v23    # "paddingBottom":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v26    # "paddingTop":I
    .end local v29    # "right":I
    .end local v39    # "titleHeight":I
    .end local v45    # "width":I
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1351
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v14    # "height":I
    .restart local v16    # "isRtl":Z
    .restart local v20    # "left":I
    .restart local v23    # "paddingBottom":I
    .restart local v24    # "paddingLeft":I
    .restart local v25    # "paddingRight":I
    .restart local v26    # "paddingTop":I
    .restart local v29    # "right":I
    .restart local v45    # "width":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_1

    .line 1361
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_2

    .line 1371
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    goto/16 :goto_3

    .line 1386
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_4

    .line 1396
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_5

    .line 1415
    .restart local v17    # "layoutSubtitle":Z
    .restart local v18    # "layoutTitle":Z
    .restart local v39    # "titleHeight":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    goto/16 :goto_6

    .line 1416
    .restart local v43    # "topChild":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_7

    .line 1419
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .restart local v44    # "toplp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_16
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 1424
    .restart local v38    # "titleHasWidth":Z
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v46

    move-object/from16 v0, v44

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v42, v46, v47

    .line 1425
    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 1433
    .end local v42    # "titleTop":I
    .restart local v31    # "space":I
    .restart local v32    # "spaceAbove":I
    :cond_17
    sub-int v46, v14, v23

    sub-int v46, v46, v39

    sub-int v46, v46, v32

    sub-int v33, v46, v26

    .line 1435
    .local v33, "spaceBelow":I
    move-object/from16 v0, v44

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v33

    move/from16 v1, v46

    if-ge v0, v1, :cond_a

    .line 1436
    const/16 v46, 0x0

    iget v0, v7, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v48, v0

    add-int v47, v47, v48

    sub-int v47, v47, v33

    sub-int v47, v32, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v32

    goto/16 :goto_9

    .line 1443
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .end local v33    # "spaceBelow":I
    :sswitch_1
    sub-int v46, v14, v23

    iget v0, v7, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    sub-int v42, v46, v39

    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 1448
    :cond_18
    const/16 v46, 0x0

    goto/16 :goto_b

    .line 1475
    :cond_19
    if-eqz v38, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_e
    const/16 v47, 0x0

    aget v47, v12, v47

    sub-int v19, v46, v47

    .line 1476
    .local v19, "ld":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    add-int v20, v20, v46

    .line 1477
    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1478
    move/from16 v40, v20

    .line 1479
    .restart local v40    # "titleLeft":I
    move/from16 v35, v20

    .line 1481
    .restart local v35    # "subtitleLeft":I
    if-eqz v18, :cond_1a

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1483
    .restart local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v41, v40, v46

    .line 1484
    .restart local v41    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 1485
    .restart local v37    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1486
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v40, v41, v46

    .line 1487
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 1489
    .end local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v41    # "titleRight":I
    :cond_1a
    if-eqz v17, :cond_1b

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1491
    .restart local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v36, v35, v46

    .line 1493
    .restart local v36    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 1494
    .restart local v34    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v35, v36, v46

    .line 1496
    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 1498
    .end local v22    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v36    # "subtitleRight":I
    :cond_1b
    if-eqz v38, :cond_d

    .line 1499
    move/from16 v0, v40

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_c

    .line 1475
    .end local v19    # "ld":I
    .end local v35    # "subtitleLeft":I
    .end local v40    # "titleLeft":I
    :cond_1c
    const/16 v46, 0x0

    goto/16 :goto_e

    .line 1514
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v38    # "titleHasWidth":Z
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .restart local v15    # "i":I
    .restart local v21    # "leftViewsCount":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 1516
    .local v30, "rightViewsCount":I
    const/4 v15, 0x0

    :goto_f
    move/from16 v0, v30

    if-ge v15, v0, :cond_1e

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1516
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 1523
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v12}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    .line 1525
    .local v11, "centerViewsWidth":I
    sub-int v46, v45, v24

    sub-int v46, v46, v25

    div-int/lit8 v46, v46, 0x2

    add-int v27, v24, v46

    .line 1526
    .local v27, "parentCenter":I
    div-int/lit8 v13, v11, 0x2

    .line 1527
    .local v13, "halfCenterViewsWidth":I
    sub-int v8, v27, v13

    .line 1528
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 1529
    .local v9, "centerRight":I
    move/from16 v0, v20

    if-ge v8, v0, :cond_20

    .line 1530
    move/from16 v8, v20

    .line 1535
    :cond_1f
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1536
    .local v10, "centerViewsCount":I
    const/4 v15, 0x0

    :goto_11
    if-ge v15, v10, :cond_21

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v8, v12, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    .line 1536
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 1531
    .end local v10    # "centerViewsCount":I
    :cond_20
    move/from16 v0, v29

    if-le v9, v0, :cond_1f

    .line 1532
    sub-int v46, v9, v29

    sub-int v8, v8, v46

    goto :goto_10

    .line 1541
    .restart local v10    # "centerViewsCount":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 1542
    return-void

    .line 1422
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1194
    const/4 v6, 0x0

    .line 1195
    .local v6, "width":I
    const/16 v25, 0x0

    .line 1196
    .local v25, "height":I
    const/16 v22, 0x0

    .line 1198
    .local v22, "childState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempMargins:[I

    .line 1201
    .local v13, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1202
    const/16 v29, 0x1

    .line 1203
    .local v29, "marginStartIndex":I
    const/16 v28, 0x0

    .line 1211
    .local v28, "marginEndIndex":I
    :goto_0
    const/16 v33, 0x0

    .line 1212
    .local v33, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1222
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1233
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetStart()I

    move-result v24

    .line 1234
    .local v24, "contentInsetStart":I
    move/from16 v0, v24

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1235
    const/4 v3, 0x0

    sub-int v5, v24, v33

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v29

    .line 1237
    const/16 v32, 0x0

    .line 1238
    .local v32, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v32, v3, v5

    .line 1242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1248
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetEnd()I

    move-result v23

    .line 1249
    .local v23, "contentInsetEnd":I
    move/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1250
    const/4 v3, 0x0

    sub-int v5, v23, v32

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v28

    .line 1252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1261
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1270
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v21

    .line 1271
    .local v21, "childCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 1272
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1273
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1274
    .local v27, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v27

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1271
    :cond_5
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1205
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "childCount":I
    .end local v23    # "contentInsetEnd":I
    .end local v24    # "contentInsetStart":I
    .end local v26    # "i":I
    .end local v27    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .end local v28    # "marginEndIndex":I
    .end local v29    # "marginStartIndex":I
    .end local v32    # "menuWidth":I
    .end local v33    # "navWidth":I
    :cond_6
    const/16 v29, 0x0

    .line 1206
    .restart local v29    # "marginStartIndex":I
    const/16 v28, 0x1

    .restart local v28    # "marginEndIndex":I
    goto/16 :goto_0

    .line 1279
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "childCount":I
    .restart local v23    # "contentInsetEnd":I
    .restart local v24    # "contentInsetStart":I
    .restart local v26    # "i":I
    .restart local v27    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .restart local v32    # "menuWidth":I
    .restart local v33    # "navWidth":I
    :cond_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1281
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1282
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    goto :goto_2

    .line 1286
    .end local v4    # "child":Landroid/view/View;
    .end local v27    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_8
    const/16 v36, 0x0

    .line 1287
    .local v36, "titleWidth":I
    const/16 v34, 0x0

    .line 1288
    .local v34, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    add-int v12, v3, v5

    .line 1289
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    add-int v35, v3, v5

    .line 1290
    .local v35, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1291
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v35

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v36

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v36, v3, v5

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1299
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v35

    add-int v19, v34, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v34, v34, v3

    .line 1306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1310
    :cond_a
    add-int v6, v6, v36

    .line 1311
    move/from16 v0, v25

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v25, v25, v3

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v22

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v31

    .line 1321
    .local v31, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v22, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v30

    .line 1325
    .local v30, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v30, 0x0

    .end local v30    # "measuredHeight":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1326
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1051
    move-object v2, p1

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    .line 1052
    .local v2, "ss":Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1054
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->peekMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 1055
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v3, v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1056
    iget v3, v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1057
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1058
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 1062
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_1

    .line 1063
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->postShowOverflowMenu()V

    .line 1065
    :cond_1
    return-void

    .line 1054
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 314
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 315
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 318
    return-void

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1039
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1041
    .local v0, "state":Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1046
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1085
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1086
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 1087
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    .line 1090
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 1091
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1092
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1093
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    .line 1097
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1098
    :cond_2
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    .line 1101
    :cond_3
    return v3
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 1762
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapsible:Z

    .line 1763
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->requestLayout()V

    .line 1764
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 895
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->setRelative(II)V

    .line 896
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 446
    if-eqz p1, :cond_2

    .line 447
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureLogoView()V

    .line 448
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 455
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_1
    return-void

    .line 452
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 373
    if-nez p1, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureMenuView()V

    .line 378
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->peekMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 379
    .local v0, "oldMenu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    if-eq v0, p1, :cond_0

    .line 383
    if-eqz v0, :cond_2

    .line 384
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mOuterActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 385
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 388
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 389
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Lcn/nubia/commonui/actionbar/widget/Toolbar$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 392
    :cond_3
    invoke-virtual {p2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 393
    if-eqz p1, :cond_4

    .line 394
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 395
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 402
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setPopupTheme(I)V

    .line 403
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setPresenter(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    .line 404
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mOuterActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    goto :goto_0

    .line 397
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 398
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 399
    invoke-virtual {p2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 400
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .prologue
    .line 1778
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMinHeight:I

    .line 1780
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1781
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 724
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 725
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureNavButtonView()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 742
    :cond_1
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 773
    if-eqz p1, :cond_2

    .line 774
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureNavButtonView()V

    .line 775
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 777
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 782
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_1
    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 807
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureNavButtonView()V

    .line 808
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 294
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 295
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    .line 296
    if-nez p1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 632
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 633
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 634
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 635
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 636
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 637
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 640
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 641
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 645
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 646
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 651
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 652
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_3
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 655
    return-void

    .line 648
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 673
    iput p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 674
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 677
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 578
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 579
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 580
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 581
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 582
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 583
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 586
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 591
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 592
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 597
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 598
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_3
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 601
    return-void

    .line 594
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 595
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 662
    iput p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextAppearance:I

    .line 663
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 666
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
