.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    # getter for: Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v1

    iget-object v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 138
    .local v0, "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 141
    :cond_0
    return-void
.end method
