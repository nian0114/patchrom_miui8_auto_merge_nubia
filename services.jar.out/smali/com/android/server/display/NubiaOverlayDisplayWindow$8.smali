.class Lcom/android/server/display/NubiaOverlayDisplayWindow$8;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPosCurrentX:F

.field private mPosCurrentY:F

.field private mPosStartX:F

.field private mPosStartY:F

.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartY:F

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showMovingHint()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->closeInputRect()V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->showMovingStartAnimation()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartX:F

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartY:F

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartX:F

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->mPosStartY:F

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
