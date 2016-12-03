.class Lcom/android/server/display/NubiaOverlayDisplayWindow$6;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
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
    .line 1013
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1018
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1020
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isLongClick:Z

    .line 1021
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showScreenHigherBarAnimation()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->closeInputRect()V

    .line 1023
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1025
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showMovingHint()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1027
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showMovingStartAnimation()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1039
    :cond_0
    :goto_0
    return v4

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1034
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    goto :goto_0
.end method
