.class Lcom/android/settings_ex/WirelessSettings$6;
.super Landroid/content/BroadcastReceiver;
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
    .line 1104
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$6;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$6;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # invokes: Lcom/android/settings_ex/WirelessSettings;->isNX531JProject()Z
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$1000(Lcom/android/settings_ex/WirelessSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$6;->this$0:Lcom/android/settings_ex/WirelessSettings;

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lcom/android/settings_ex/WirelessSettings;->wifiStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/WirelessSettings;->access$1100(Lcom/android/settings_ex/WirelessSettings;I)V

    .line 1113
    :cond_0
    return-void
.end method
