.class public Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckNetworkAdd"
.end annotation


# instance fields
.field public final CHECKCOUNT:I

.field private count:I

.field private intervallong:I

.field private intervalshort:I

.field private isPrepare:Z

.field private mAddNetwork:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiTracker;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 738
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 740
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->CHECKCOUNT:I

    .line 741
    iput v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    .line 742
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->intervalshort:I

    .line 743
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->intervallong:I

    .line 744
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->isPrepare:Z

    return-void
.end method


# virtual methods
.method checkNetwork()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 754
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 755
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->intervalshort:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->sendEmptyMessageDelayed(IJ)Z

    .line 759
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$1000(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 764
    return-void

    .line 757
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->intervallong:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 782
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;->onAddNetworkEnd(ZLjava/lang/String;)V

    .line 785
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->removeMessages(I)V

    .line 786
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->forgetConfig()V

    .line 787
    return-void
.end method

.method forgetConfig()V
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$1000(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$1000(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 794
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    .line 796
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x3c

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 817
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->isFindAp()Z

    move-result v0

    .line 822
    .local v0, "isNetworkFind":Z
    if-ne v0, v5, :cond_4

    .line 823
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 824
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;->onAddNetworkEnd(ZLjava/lang/String;)V

    .line 827
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->access$1000(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 828
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->access$1000(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 831
    :cond_3
    iput v4, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    .line 832
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 833
    :cond_4
    if-nez v0, :cond_5

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    if-ge v1, v2, :cond_5

    .line 834
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    .line 835
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->checkNetwork()V

    goto :goto_0

    .line 837
    :cond_5
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    if-ne v1, v2, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 840
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mListener:Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiTracker;->access$600(Lcom/android/settings_ex/wifi/WifiTracker;)Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lcom/android/settings_ex/wifi/WifiTracker$WifiListener;->onAddNetworkEnd(ZLjava/lang/String;)V

    .line 843
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->forgetConfig()V

    goto :goto_0
.end method

.method isFindAp()Z
    .locals 6

    .prologue
    .line 799
    const/4 v2, 0x0

    .line 800
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiTracker;->access$1200(Lcom/android/settings_ex/wifi/WifiTracker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 801
    .local v0, "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 804
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    iget v4, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 805
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 806
    const/4 v2, 0x1

    goto :goto_0

    .line 812
    .end local v0    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_1
    return v2
.end method

.method startCheck(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 748
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->count:I

    .line 749
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->mAddNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 750
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->this$0:Lcom/android/settings_ex/wifi/WifiTracker;

    # getter for: Lcom/android/settings_ex/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->access$1000(Lcom/android/settings_ex/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 751
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->intervalshort:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings_ex/wifi/WifiTracker$CheckNetworkAdd;->sendEmptyMessageDelayed(IJ)Z

    .line 752
    return-void
.end method
