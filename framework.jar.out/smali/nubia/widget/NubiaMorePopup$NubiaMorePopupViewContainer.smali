.class Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NubiaMorePopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaMorePopup;


# direct methods
.method public constructor <init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .local v2, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .restart local v2    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    iget-object v5, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lnubia/widget/NubiaMorePopup;->access$100(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnubia/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    goto :goto_0

    .end local v2    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lnubia/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lnubia/widget/NubiaMorePopup;->access$100(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
