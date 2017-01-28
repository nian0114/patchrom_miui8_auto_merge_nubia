.class Lcom/android/server/display/NubiaOverlayDisplayWindow$13;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSideAnimation()V
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
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-boolean v0, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-boolean v3, v3, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
