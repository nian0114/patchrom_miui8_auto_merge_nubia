.class Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 353
    if-nez p3, :cond_1

    .line 354
    const-string v2, "BluetoothEventManager"

    const-string v3, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 358
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_2

    .line 359
    const-string v2, "BluetoothEventManager"

    const-string v3, "ACTION_PAIRING_CANCEL with no cached device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_2
    sget v1, Lcom/android/settings_exlib/R$string;->bluetooth_pairing_error_message:I

    .line 363
    .local v1, "errorMsg":I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/android/settings_exlib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
