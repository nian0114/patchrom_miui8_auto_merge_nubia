.class Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .line 288
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 289
    return-void
.end method


# virtual methods
.method public getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$100(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$100(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    invoke-static {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$200(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    .line 304
    .local v0, "popup":Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 306
    .end local v0    # "popup":Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    :cond_0
    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    .line 312
    .local v0, "popup":Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->dismiss()V

    .line 314
    const/4 v1, 0x1

    .line 316
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
