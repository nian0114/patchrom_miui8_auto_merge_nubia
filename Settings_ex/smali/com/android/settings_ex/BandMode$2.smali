.class Lcom/android/settings_ex/BandMode$2;
.super Landroid/os/Handler;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BandMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BandMode;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings_ex/BandMode$2;->this$0:Lcom/android/settings_ex/BandMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 199
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/settings_ex/BandMode$2;->this$0:Lcom/android/settings_ex/BandMode;

    # invokes: Lcom/android/settings_ex/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/BandMode;->access$400(Lcom/android/settings_ex/BandMode;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 203
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 205
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/settings_ex/BandMode$2;->this$0:Lcom/android/settings_ex/BandMode;

    invoke-virtual {v1}, Lcom/android/settings_ex/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 209
    iget-object v1, p0, Lcom/android/settings_ex/BandMode$2;->this$0:Lcom/android/settings_ex/BandMode;

    invoke-virtual {v1}, Lcom/android/settings_ex/BandMode;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/BandMode$2;->this$0:Lcom/android/settings_ex/BandMode;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/settings_ex/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/BandMode;->access$500(Lcom/android/settings_ex/BandMode;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
