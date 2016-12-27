.class Lcom/android/settings_ex/wifi/WifiEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$2;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v3, "msg_hotspot"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    :try_start_0
    const-string v3, "msg"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 87
    .local v2, "state":I
    const-string v3, "QuickClickAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- trayReceiver msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez v2, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiEnabler$2;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarIsChecked(Z)V

    .line 97
    .end local v2    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v2    # "state":I
    :cond_1
    if-ne v6, v2, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiEnabler$2;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarIsChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v2    # "state":I
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "QuickClickAgent"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
