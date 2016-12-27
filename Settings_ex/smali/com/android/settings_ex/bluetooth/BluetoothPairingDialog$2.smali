.class Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;
.super Landroid/os/Handler;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    const-string v0, "BluetoothPairingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
