.class Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialogFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "bondState":I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->finish()V

    .line 97
    .end local v1    # "bondState":I
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    const-string v3, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 93
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->finish()V

    goto :goto_0
.end method
