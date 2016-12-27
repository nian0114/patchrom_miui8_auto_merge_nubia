.class Lcom/android/settings_ex/WirelessSettings$3;
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
    .line 783
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 787
    const-string v1, "0"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    const-string v2, "sim card state changed..............."

    # invokes: Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/WirelessSettings;->access$000(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # invokes: Lcom/android/settings_ex/WirelessSettings;->setEntryAndValues()V
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$200(Lcom/android/settings_ex/WirelessSettings;)V

    .line 794
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method
