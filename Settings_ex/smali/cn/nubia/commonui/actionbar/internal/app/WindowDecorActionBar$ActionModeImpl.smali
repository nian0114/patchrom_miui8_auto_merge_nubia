.class public Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
.super Lcn/nubia/commonui/actionbar/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;Landroid/content/Context;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    .line 1046
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/view/ActionMode;-><init>()V

    .line 1047
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 1048
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 1049
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 1051
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 1052
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1115
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1117
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1066
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$700(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$800(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z

    move-result v1

    # invokes: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z
    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$900(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iput-object p0, v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 1079
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 1083
    :goto_1
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 1084
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1087
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->closeMode()V

    .line 1088
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1100(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1090
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$600(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iget-boolean v1, v1, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1092
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iput-object v3, v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    goto :goto_0

    .line 1081
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1056
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1174
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 1201
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1205
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1123
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1125
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1144
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1145
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1129
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1130
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1139
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1140
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1134
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1135
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 1159
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1160
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    # getter for: Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1161
    return-void
.end method
