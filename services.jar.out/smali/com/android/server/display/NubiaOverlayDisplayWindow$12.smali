.class Lcom/android/server/display/NubiaOverlayDisplayWindow$12;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;->showExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4602(Z)Z

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->unobserve()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->unobserve()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    return-void
.end method
