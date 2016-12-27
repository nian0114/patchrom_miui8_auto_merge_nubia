.class Lcom/android/settings_ex/ImageEnhanceSettings3$3;
.super Ljava/lang/Object;
.source "ImageEnhanceSettings3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ImageEnhanceSettings3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ImageEnhanceSettings3;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$002(Lcom/android/settings_ex/ImageEnhanceSettings3;I)I

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$200(Lcom/android/settings_ex/ImageEnhanceSettings3;)Lcom/android/settings_ex/LightSeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mWriteNodeRunable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$300(Lcom/android/settings_ex/ImageEnhanceSettings3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I
    invoke-static {v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$000(Lcom/android/settings_ex/ImageEnhanceSettings3;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/ImageEnhanceSettings3;->persistImageEnhanceHueValue(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$400(Lcom/android/settings_ex/ImageEnhanceSettings3;I)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I
    invoke-static {v0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$002(Lcom/android/settings_ex/ImageEnhanceSettings3;I)I

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mWriteNodeRunable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$300(Lcom/android/settings_ex/ImageEnhanceSettings3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$200(Lcom/android/settings_ex/ImageEnhanceSettings3;)Lcom/android/settings_ex/LightSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I
    invoke-static {v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$000(Lcom/android/settings_ex/ImageEnhanceSettings3;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/ImageEnhanceSettings3;->persistImageEnhanceHueValue(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$400(Lcom/android/settings_ex/ImageEnhanceSettings3;I)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I
    invoke-static {v0, v3}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$002(Lcom/android/settings_ex/ImageEnhanceSettings3;I)I

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mWriteNodeRunable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$300(Lcom/android/settings_ex/ImageEnhanceSettings3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$200(Lcom/android/settings_ex/ImageEnhanceSettings3;)Lcom/android/settings_ex/LightSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I
    invoke-static {v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$000(Lcom/android/settings_ex/ImageEnhanceSettings3;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/ImageEnhanceSettings3;->persistImageEnhanceHueValue(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$400(Lcom/android/settings_ex/ImageEnhanceSettings3;I)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x7f1201ae
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
