.class Lcom/android/server/display/NubiaOverlayDisplayWindow$10;
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
.field private mSlidePosCurrentX:F

.field private mSlidePosCurrentY:F

.field private mSlidePosStartX:F

.field private mSlidePosStartY:F

.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1379
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentX:F

    .line 1380
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentY:F

    .line 1382
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1413
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1386
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartX:F

    .line 1387
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartY:F

    .line 1388
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->closeInputRect()V

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentY:F

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartY:F

    sub-float/2addr v1, v2

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;F)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setSizerMaskSize(F)V

    .line 1397
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentX:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartX:F

    .line 1398
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentY:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartY:F

    goto :goto_0

    .line 1401
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentY:F

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartY:F

    sub-float/2addr v1, v2

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;F)V

    .line 1402
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenSize(F)V

    .line 1407
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    .line 1408
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentX:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartX:F

    .line 1409
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosCurrentY:F

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->mSlidePosStartY:F

    goto/16 :goto_0

    .line 1384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
