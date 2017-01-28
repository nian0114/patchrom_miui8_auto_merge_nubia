.class public Lnubia/widget/NubiaActionBar;
.super Ljava/lang/Object;
.source "NubiaActionBar.java"

# interfaces
.implements Lnubia/widget/IActionBar;


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1


# instance fields
.field mActionBarView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/widget/ActionBarView;",
            ">;"
        }
    .end annotation
.end field

.field mActionMenuItemView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/ActionMenuItemView;",
            ">;"
        }
    .end annotation
.end field

.field mActionMenuView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ActionMenuView;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ActionMenuView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/widget/ActionMenuView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/widget/NubiaActionBar;->mActionMenuView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/widget/NubiaActionBar;->mActionMenuItemView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/widget/NubiaActionBar;->mActionBarView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private isHideTitle()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x3010044    # 3.7909998E-37f

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .local v1, "isHideActionBarTitle":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method


# virtual methods
.method public computeMenuStart(IIII)I
    .locals 1
    .param p1, "direction"    # I
    .param p2, "menuViewWidth"    # I
    .param p3, "menuPaddingLeft"    # I
    .param p4, "menuPaddingRight"    # I

    .prologue
    add-int v0, p3, p4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    mul-int v0, p1, p2

    goto :goto_0
.end method

.method public getActionBarCustomPaddingStart()I
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getActionBarPaddingStart()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuHight()I
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x309003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getActionMenuItemViewOnMeasure(II)Z
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mActionMenuItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->nubiaUiOnMeasure(II)Z

    move-result v0

    return v0
.end method

.method public getActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 4

    .prologue
    const v1, 0x3030009

    .local v1, "mMenuLayout":I
    const v0, 0x3030008

    .local v0, "mMenuItemLayout":I
    new-instance v2, Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method public getActionMenuViewOnLayout(ZIIII)Z
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mActionMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ActionMenuView;->nubiaUiOnLayout(ZIIII)Z

    move-result v0

    return v0
.end method

.method public getActionMenuViewOnMeasure(II)Z
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mActionMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ActionMenuView;->nubiaUiOnMeasure(II)Z

    move-result v0

    return v0
.end method

.method public getActionModeLayout()I
    .locals 1

    .prologue
    const v0, 0x303000a

    return v0
.end method

.method public getCloseAnimatorOfFloatValues(F)F
    .locals 1
    .param p1, "value"    # F

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseButtonTranslationX(F)F
    .locals 1
    .param p1, "translationX"    # F

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getContextDisplayMode(Z)I
    .locals 1
    .param p1, "isSplit"    # Z

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getHomeLayoutResId(Landroid/content/res/TypedArray;)I
    .locals 2
    .param p1, "temp"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v0, 0x10

    const v1, 0x3030007

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getHomeViewStartOffset()I
    .locals 2

    .prologue
    iget-object v1, p0, Lnubia/widget/NubiaActionBar;->mActionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .local v0, "v":Lcom/android/internal/widget/ActionBarView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNubiaStartOffset()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxIconSize(I)I
    .locals 2
    .param p1, "maxIconSize"    # I

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getSplitActionBarHeight(Landroid/content/res/TypedArray;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x309003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaActionBar;->isHideTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method public getWindowActionBarFullscreenDecorLayout(Landroid/content/res/TypedArray;)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const v0, 0x10900c8

    return v0
.end method

.method public isAllowActionMenuItemTextWithIcon()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSetWidthLimit(Z)Z
    .locals 1
    .param p1, "strict"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isShowsOverflowMenuButton(Lcom/android/internal/view/ActionBarPolicy;)Z
    .locals 1
    .param p1, "actionBarPolicy"    # Lcom/android/internal/view/ActionBarPolicy;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->showsNubiaOverflowMenuButton()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBarNarrow()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public resetMaxItemHeight()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public resetPositionChild()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setDropDownSpinnerWidth(Landroid/widget/Spinner;)V
    .locals 5
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .prologue
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "metric":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .local v0, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v2, "width":I
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    return-void
.end method

.method public setHomeViewShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    iget-object v1, p0, Lnubia/widget/NubiaActionBar;->mActionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .local v0, "v":Lcom/android/internal/widget/ActionBarView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setNubiaShowIcon(Z)V

    :cond_0
    return-void
.end method

.method public setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lnubia/widget/NubiaActionBar;->mActionMenuItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    .local v1, "v":Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lnubia/widget/NubiaActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .local v0, "screenOrientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1, p1, v3, v3, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "screenOrientation":I
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "screenOrientation":I
    :cond_1
    invoke-virtual {v1, v3, p1, v3, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMenuItemViewBackground(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionMenuItemView"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    const/4 v0, 0x0

    .local v0, "nubiaActionMenuItemBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .local v1, "screenOrientation":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30200de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30200e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
