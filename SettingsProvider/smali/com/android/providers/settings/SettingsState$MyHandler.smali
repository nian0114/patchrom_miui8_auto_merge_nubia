.class final Lcom/android/providers/settings/SettingsState$MyHandler;
.super Landroid/os/Handler;
.source "SettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/settings/SettingsState;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsState;)V
    .locals 1

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/providers/settings/SettingsState$MyHandler;->this$0:Lcom/android/providers/settings/SettingsState;

    .line 539
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 540
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 544
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 546
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 547
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/providers/settings/SettingsState$MyHandler;->this$0:Lcom/android/providers/settings/SettingsState;

    # invokes: Lcom/android/providers/settings/SettingsState;->doWriteState()V
    invoke-static {v1}, Lcom/android/providers/settings/SettingsState;->access$200(Lcom/android/providers/settings/SettingsState;)V

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
