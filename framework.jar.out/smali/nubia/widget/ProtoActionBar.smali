.class public Lnubia/widget/ProtoActionBar;
.super Ljava/lang/Object;
.source "ProtoActionBar.java"

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

    iput-object p1, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ActionMenuView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/widget/ActionMenuView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/widget/ProtoActionBar;->mActionMenuView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/widget/ProtoActionBar;->mActionMenuItemView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/widget/ProtoActionBar;->mActionBarView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public computeMenuStart(IIII)I
    .locals 1
    .param p1, "direction"    # I
    .param p2, "menuViewWidth"    # I
    .param p3, "menuPaddingLeft"    # I
    .param p4, "menuPaddingRight"    # I

    .prologue
    mul-int v0, p1, p2

    return v0
.end method

.method public getActionBarCustomPaddingStart()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActionBarPaddingStart()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuHight()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getActionMenuItemViewOnMeasure(II)Z
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 4

    .prologue
    const v1, 0x109001d

    .local v1, "menuLayout":I
    const v0, 0x109001c

    .local v0, "menuItemLayout":I
    new-instance v2, Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method public getActionMenuViewOnLayout(ZIIII)Z
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuViewOnMeasure(II)Z
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActionModeLayout()I
    .locals 1

    .prologue
    const v0, 0x109001f

    return v0
.end method

.method public getCloseAnimatorOfFloatValues(F)F
    .locals 0
    .param p1, "value"    # F

    .prologue
    return p1
.end method

.method public getCloseButtonTranslationX(F)F
    .locals 0
    .param p1, "translationX"    # F

    .prologue
    return p1
.end method

.method public getContextDisplayMode(Z)I
    .locals 1
    .param p1, "isSpilt"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHomeLayoutResId(Landroid/content/res/TypedArray;)I
    .locals 2
    .param p1, "temp"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v0, 0x10

    const v1, 0x1090018

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getHomeViewStartOffset()I
    .locals 2

    .prologue
    iget-object v1, p0, Lnubia/widget/ProtoActionBar;->mActionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .local v0, "v":Lcom/android/internal/widget/ActionBarView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getStartOffset()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxIconSize(I)I
    .locals 4
    .param p1, "maxIconSizie"    # I

    .prologue
    iget-object v2, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .local v0, "density":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method public getSplitActionBarHeight(Landroid/content/res/TypedArray;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    return-object p1
.end method

.method public getWindowActionBarFullscreenDecorLayout(Landroid/content/res/TypedArray;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v0, 0x30

    const v1, 0x10900c8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public isAllowActionMenuItemTextWithIcon()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSetWidthLimit(Z)Z
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    return p1
.end method

.method public isShowsOverflowMenuButton(Lcom/android/internal/view/ActionBarPolicy;)Z
    .locals 1
    .param p1, "actionBarPolicy"    # Lcom/android/internal/view/ActionBarPolicy;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBarNarrow()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/ProtoActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public resetMaxItemHeight()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public resetPositionChild()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setDropDownSpinnerWidth(Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .prologue
    return-void
.end method

.method public setHomeViewShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    iget-object v1, p0, Lnubia/widget/ProtoActionBar;->mActionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .local v0, "v":Lcom/android/internal/widget/ActionBarView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setShowIcon(Z)V

    :cond_0
    return-void
.end method

.method public setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lnubia/widget/ProtoActionBar;->mActionMenuItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .local v0, "v":Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v2, v2, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenuItemViewBackground(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionMenuItemView"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    return-void
.end method
