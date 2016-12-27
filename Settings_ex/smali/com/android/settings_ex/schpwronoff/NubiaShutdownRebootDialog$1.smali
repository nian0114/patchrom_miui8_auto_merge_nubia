.class Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;
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
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$100(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMainContent:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$200(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
