.class final Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    .line 610
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 611
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 615
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 617
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # invokes: Lcom/android/settings_ex/wifi/WifiTracker;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$700(Lcom/android/settings_ex/wifi/WifiTracker;)V

    goto :goto_0

    .line 620
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/settings_ex/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$800(Lcom/android/settings_ex/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 623
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # invokes: Lcom/android/settings_ex/wifi/WifiTracker;->handleResume()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$900(Lcom/android/settings_ex/wifi/WifiTracker;)V

    goto :goto_0

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
