.class public abstract Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 60
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 61
    iput p3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 62
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 134
    return-void
.end method

.method public abstract bindItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    instance-of v1, p2, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 178
    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    .line 182
    .local v0, "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;)V

    .line 183
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p0, p3}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0    # "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    .line 75
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;->initialize(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 69
    return-void
.end method

.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 212
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 148
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .line 149
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 235
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 236
    return-void
.end method

.method public shouldIncludeItem(ILcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .prologue
    .line 86
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 87
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 120
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 90
    .local v0, "childIndex":I
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_6

    .line 91
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 92
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 93
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 94
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 95
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 96
    .local v3, "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 97
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    invoke-interface {v9}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;->getItemData()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    move-result-object v6

    .line 100
    .local v6, "oldItem":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->getItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 101
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 103
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 104
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    .line 106
    :cond_2
    if-eq v5, v1, :cond_3

    .line 107
    invoke-virtual {p0, v5, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 109
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 94
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 115
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 116
    invoke-virtual {p0, v7, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
