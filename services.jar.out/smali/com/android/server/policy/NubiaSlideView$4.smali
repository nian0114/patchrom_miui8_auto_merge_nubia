.class Lcom/android/server/policy/NubiaSlideView$4;
.super Ljava/lang/Object;
.source "NubiaSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaSlideView;->onRollBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaSlideView;

.field final synthetic val$alpha:I

.field final synthetic val$alphaText:I

.field final synthetic val$dis:F


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaSlideView;IIF)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    iput p2, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$alpha:I

    iput p3, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$alphaText:I

    iput p4, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$dis:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "fra":F
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$100(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$alpha:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$alpha:I

    rsub-int v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$900(Lcom/android/server/policy/NubiaSlideView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mShift:F
    invoke-static {v3}, Lcom/android/server/policy/NubiaSlideView;->access$300(Lcom/android/server/policy/NubiaSlideView;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I
    invoke-static {v3}, Lcom/android/server/policy/NubiaSlideView;->access$1000(Lcom/android/server/policy/NubiaSlideView;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$200(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$alphaText:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$alphaText:I

    rsub-int v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$dis:F

    iget-object v4, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F
    invoke-static {v4}, Lcom/android/server/policy/NubiaSlideView;->access$900(Lcom/android/server/policy/NubiaSlideView;)F

    move-result v4

    iget v5, p0, Lcom/android/server/policy/NubiaSlideView$4;->val$dis:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mShift:F
    invoke-static {v2, v3}, Lcom/android/server/policy/NubiaSlideView;->access$302(Lcom/android/server/policy/NubiaSlideView;F)F

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->invalidate()V

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMsgFlag:I
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$400(Lcom/android/server/policy/NubiaSlideView;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1234

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$500(Lcom/android/server/policy/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x1235

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$4;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$500(Lcom/android/server/policy/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
