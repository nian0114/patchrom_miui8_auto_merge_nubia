.class final Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    iput p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    .line 1633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1634
    return-void
.end method


# virtual methods
.method getListMenuView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 4
    .param p1, "cb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1698
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1709
    :goto_0
    return-object v0

    .line 1700
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 1701
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    .line 1703
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 1704
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 1707
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    .line 1709
    .local v0, "result":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1637
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1640
    :cond_0
    :goto_0
    return v0

    .line 1638
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1640
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method setMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 1686
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1688
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 1689
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 1691
    :cond_2
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 1692
    if-eqz p1, :cond_0

    .line 1693
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1654
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1655
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1656
    .local v3, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1659
    sget v4, Lcn/nubia/commonui/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1660
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 1661
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1665
    :cond_0
    sget v4, Lcn/nubia/commonui/R$attr;->panelMenuListTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1666
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 1667
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1672
    :goto_0
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v6}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1673
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1675
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 1677
    sget-object v4, Lcn/nubia/commonui/R$styleable;->Theme:[I

    invoke-virtual {v1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1678
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcn/nubia/commonui/R$styleable;->Theme_panelBackground:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->background:I

    .line 1680
    sget v4, Lcn/nubia/commonui/R$styleable;->Theme_android_windowAnimationStyle:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->windowAnimations:I

    .line 1682
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1683
    return-void

    .line 1669
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    sget v4, Lcn/nubia/commonui/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
