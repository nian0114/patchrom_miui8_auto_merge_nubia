.class Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, -0x80000000

    .line 38
    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ACTION_SCAN_MODE_CHANGED , mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->logMsg(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;Ljava/lang/String;)V

    .line 42
    if-eq v0, v4, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    # invokes: Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->handleModeChanged(I)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;I)V

    .line 46
    .end local v0    # "mode":I
    :cond_0
    return-void
.end method
