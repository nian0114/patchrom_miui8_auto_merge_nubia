.class public Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
.super Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

.field private mContext:Landroid/content/Context;

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    .line 85
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 86
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 87
    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupTheme:I

    .line 88
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 89
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 383
    .local v8, "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 385
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 386
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 388
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 390
    .local v7, "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 392
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 393
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 394
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 396
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 399
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 400
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 401
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 404
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 405
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 407
    iput v0, v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 408
    mul-int v10, v0, p1

    .line 409
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 411
    return v0

    .line 388
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 390
    .restart local v7    # "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 404
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private setResetMaxItemHeight()V
    .locals 2

    .prologue
    .line 691
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMaxItemHeight:I

    .line 693
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 570
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 437
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 439
    .local v0, "params":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 440
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 445
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 450
    if-eqz p1, :cond_2

    .line 451
    instance-of v1, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    check-cast p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;)V

    .line 454
    .local v0, "result":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 455
    const/16 v1, 0x10

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 459
    .end local v0    # "result":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 451
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 470
    .local v0, "result":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 471
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 486
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 487
    return-void
.end method

.method public invokeItem(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 476
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

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
    .line 555
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 135
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 136
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 141
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 421
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 422
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->dismissPopupMenus()V

    .line 423
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 416
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 417
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 149
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMaxItemHeight:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 150
    .local v0, "itemHeightSpec":I
    invoke-super {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 151
    return-void
.end method

.method public peekMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 518
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .line 519
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    .line 520
    return-void
.end method

.method public setOnMenuItemClickListener(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    .line 145
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mReserveOverflow:Z

    .line 433
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 99
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 100
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupTheme:I

    .line 101
    if-nez p1, :cond_1

    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 124
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setMenuView(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V

    .line 125
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
