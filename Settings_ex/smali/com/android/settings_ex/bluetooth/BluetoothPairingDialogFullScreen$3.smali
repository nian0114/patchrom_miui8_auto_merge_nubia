.class Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$3;
.super Ljava/lang/Object;
.source "BluetoothPairingDialogFullScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createView()Landroid/view/View;
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
    .line 299
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 302
    if-eqz p2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method
