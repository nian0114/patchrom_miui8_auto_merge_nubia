.class Lcom/android/server/display/NubiaOverlayDisplayWindow$7;
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
.field private mDragCurrentX:F

.field private mDragCurrentY:F

.field private mDragStartX:F

.field private mDragStartY:F

.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-boolean v1, v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isLongClick:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartY:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartX:F

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartY:F

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v1, v2

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;F)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setSizerMaskSize(F)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iput-boolean v0, v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isLongClick:Z

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v2, v3

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;F)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v4}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v6

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenSize(F)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
