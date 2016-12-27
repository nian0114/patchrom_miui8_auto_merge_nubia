.class Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;
.super Landroid/os/Handler;
.source "NubiaShutdownRebootDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccc    # 0.39999998f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$300(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$402(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Z)Z

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getShift()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setThisViewAlpha(F)V

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getShift()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getMaxScrollDistance()F

    move-result v2

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    mul-float/2addr v1, v4

    add-float v0, v5, v1

    .line 92
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$700(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$700(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$800(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    .line 95
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->postInvalidate()V

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getShift()F

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getMaxScrollDistance()F

    move-result v3

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$900(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;FF)V

    goto/16 :goto_0

    .line 100
    .end local v0    # "alpha":F
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$400(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$302(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Z)Z

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getShift()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setThisViewAlpha(F)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getShift()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getMaxScrollDistance()F

    move-result v2

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    mul-float/2addr v1, v4

    add-float v0, v5, v1

    .line 109
    .restart local v0    # "alpha":F
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$700(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$700(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getShift()F

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getMaxScrollDistance()F

    move-result v3

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$900(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;FF)V

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->postInvalidate()V

    goto/16 :goto_0

    .line 116
    .end local v0    # "alpha":F
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1, v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$402(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Z)Z

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 121
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1, v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$302(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Z)Z

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
