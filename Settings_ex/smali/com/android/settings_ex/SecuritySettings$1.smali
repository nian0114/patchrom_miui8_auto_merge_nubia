.class Lcom/android/settings_ex/SecuritySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$1;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$1;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/SecuritySettings;->access$000(Lcom/android/settings_ex/SecuritySettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings$1;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/SecuritySettings;->access$000(Lcom/android/settings_ex/SecuritySettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    :cond_0
    return-void
.end method
