.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

.field mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 1792
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;

    .prologue
    .line 1792
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1890
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1895
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1900
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1901
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1902
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iput-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1903
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1904
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$800(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1906
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1907
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1908
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # invokes: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    .line 1913
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1914
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1915
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1916
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setVisibility(I)V

    .line 1917
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1918
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1920
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1921
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 1922
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWasHomeEnabled:Z
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 1924
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->requestLayout()V

    .line 1925
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1927
    const/4 v0, 0x1

    return v0

    .line 1910
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1854
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1856
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1857
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1859
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 1860
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_0

    .line 1861
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1863
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1864
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1866
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$800(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1867
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1868
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1869
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1870
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1871
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1872
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setVisibility(I)V

    .line 1873
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1874
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1875
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # invokes: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V
    invoke-static {v0, v4, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$1300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;ZZ)V

    .line 1876
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->requestLayout()V

    .line 1877
    invoke-virtual {p2, v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1879
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    if-eqz v0, :cond_6

    .line 1880
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1884
    :cond_6
    return v5
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1849
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 1799
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    .line 1802
    :cond_0
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 1803
    return-void
.end method

.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1845
    return-void
.end method

.method public onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1840
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1813
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1814
    const/4 v1, 0x0

    .line 1816
    .local v1, "found":Z
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1817
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1818
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1819
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1820
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1821
    const/4 v1, 0x1

    .line 1827
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1829
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    .line 1832
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1818
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
