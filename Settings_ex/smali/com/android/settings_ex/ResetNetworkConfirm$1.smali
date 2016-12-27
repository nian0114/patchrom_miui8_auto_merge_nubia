.class Lcom/android/settings_ex/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 105
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v7}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 72
    .local v2, "context":Landroid/content/Context;
    const-string v7, "connectivity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 74
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 78
    :cond_1
    const-string v7, "wifi"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 80
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_2

    .line 81
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 84
    :cond_2
    const-string v7, "phone"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 86
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_3

    .line 87
    iget-object v7, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I
    invoke-static {v7}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 90
    :cond_3
    const-string v7, "netpolicy"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicyManager;

    .line 92
    .local v3, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v3, :cond_4

    .line 93
    iget-object v7, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I
    invoke-static {v7}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "subscriberId":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 97
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_4
    const-string v7, "bluetooth"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 99
    .local v0, "btManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 103
    :cond_5
    const v7, 0x7f0c0469

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
