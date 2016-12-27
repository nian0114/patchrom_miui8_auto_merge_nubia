.class Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->taskScreenShot()V
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
    .line 253
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 255
    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->takeScreenShot()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$2100(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    .local v1, "screenBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 257
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->getWallpaperGrayValue()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$2200(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 260
    :cond_0
    if-nez v1, :cond_1

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$002(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 265
    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 266
    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$002(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 268
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 269
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 272
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 273
    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHandlerTakescreen:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$2300(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
