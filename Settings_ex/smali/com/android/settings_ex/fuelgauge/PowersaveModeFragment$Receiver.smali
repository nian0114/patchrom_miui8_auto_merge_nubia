.class final Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowersaveModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;
    .param p2, "x1"    # Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;-><init>(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v1, "low_power_mode_status"

    const/16 v2, -0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "status":I
    const-string v1, "jiepp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " low_power_mode_status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    # invokes: Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->updateUI()V
    invoke-static {v1}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->access$100(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;)V

    .line 63
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_1

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.nubia.security.powermanage.lowpowermode"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-nez p1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
