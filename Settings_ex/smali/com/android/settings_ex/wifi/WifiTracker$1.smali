.class Lcom/android/settings_ex/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiTracker;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # invokes: Lcom/android/settings_ex/wifi/WifiTracker;->updateWifiState(I)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/wifi/WifiTracker;->access$100(Lcom/android/settings_ex/wifi/WifiTracker;I)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$200(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 533
    :cond_3
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 534
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 536
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$300(Lcom/android/settings_ex/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 538
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$400(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 540
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$200(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 541
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$200(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 543
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 544
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$200(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 545
    :cond_5
    const-string v3, "android.net.wifi.NUBIA_RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 546
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    const-string v3, "newRssi"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lnubia/net/wifi/WifiRssiInfo;

    # setter for: Lcom/android/settings_ex/wifi/WifiTracker;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;
    invoke-static {v4, v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$502(Lcom/android/settings_ex/wifi/WifiTracker;Lnubia/net/wifi/WifiRssiInfo;)Lnubia/net/wifi/WifiRssiInfo;

    .line 547
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$200(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 549
    :cond_6
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 552
    const-string v3, "homekey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    const-string v3, "WifiTracker"

    const-string v4, " homekey down"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$1;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->stopCheckAddNetwork()V

    goto/16 :goto_0
.end method
