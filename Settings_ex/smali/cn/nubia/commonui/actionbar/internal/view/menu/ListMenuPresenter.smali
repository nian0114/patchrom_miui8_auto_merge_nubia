.class public Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 79
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 68
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    .prologue
    .line 40
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcn/nubia/commonui/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;

    .line 104
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 84
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    :cond_0
    :goto_0
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 94
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;I)Z

    .line 170
    return-void
.end method

.method public onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 142
    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuDialogHelper;-><init>(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z

    .line 146
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .line 135
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->mAdapter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 130
    :cond_0
    return-void
.end method
