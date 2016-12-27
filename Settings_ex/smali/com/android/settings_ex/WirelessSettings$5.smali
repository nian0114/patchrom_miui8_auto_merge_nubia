.class Lcom/android/settings_ex/WirelessSettings$5;
.super Landroid/os/Handler;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private readSetWifiAntOk()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 970
    const-string v1, "wifi.ant.set.ok"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 971
    .local v0, "antwifiSetok":Z
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antwifiSetok is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->restartTimes:I
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$500(Lcom/android/settings_ex/WirelessSettings;)I

    move-result v1

    if-gez v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # setter for: Lcom/android/settings_ex/WirelessSettings;->restartTimes:I
    invoke-static {v1, v4}, Lcom/android/settings_ex/WirelessSettings;->access$502(Lcom/android/settings_ex/WirelessSettings;I)I

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # setter for: Lcom/android/settings_ex/WirelessSettings;->isUserChangeAnt:Z
    invoke-static {v1, v5}, Lcom/android/settings_ex/WirelessSettings;->access$602(Lcom/android/settings_ex/WirelessSettings;Z)Z

    .line 976
    const-string v1, "GG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartTimes++ =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->restartTimes:I
    invoke-static {v3}, Lcom/android/settings_ex/WirelessSettings;->access$500(Lcom/android/settings_ex/WirelessSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 980
    if-eqz v0, :cond_2

    .line 981
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # invokes: Lcom/android/settings_ex/WirelessSettings;->setWifiAntToast()V
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$800(Lcom/android/settings_ex/WirelessSettings;)V

    .line 982
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # operator++ for: Lcom/android/settings_ex/WirelessSettings;->restartTimes:I
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$508(Lcom/android/settings_ex/WirelessSettings;)I

    .line 983
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->restartTimes:I
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$500(Lcom/android/settings_ex/WirelessSettings;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 984
    const-string v1, "GG"

    const-string v2, "restartTimes == 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 989
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 992
    if-eqz v0, :cond_4

    .line 993
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # invokes: Lcom/android/settings_ex/WirelessSettings;->setWifiAntToast()V
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$800(Lcom/android/settings_ex/WirelessSettings;)V

    .line 994
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # operator++ for: Lcom/android/settings_ex/WirelessSettings;->restartTimes:I
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$508(Lcom/android/settings_ex/WirelessSettings;)I

    .line 995
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->restartTimes:I
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$500(Lcom/android/settings_ex/WirelessSettings;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 996
    const-string v1, "GG"

    const-string v2, "restartTimes == 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$700(Lcom/android/settings_ex/WirelessSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1001
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$5;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # invokes: Lcom/android/settings_ex/WirelessSettings;->updateWifiAntState()V
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$900(Lcom/android/settings_ex/WirelessSettings;)V

    .line 1002
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 961
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 965
    :goto_0
    const-string v0, "WirelessSettings"

    const-string v1, "error message!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void

    .line 963
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings$5;->readSetWifiAntOk()V

    goto :goto_0

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
