.class final Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    .line 572
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 582
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;->onConnectedChanged()V

    goto :goto_0

    .line 585
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    goto :goto_0

    .line 588
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;->onAccessPointsChanged()V

    goto :goto_0

    .line 591
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_0

    .line 596
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiTracker;->mScanner:Lcom/android/settings_ex/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
