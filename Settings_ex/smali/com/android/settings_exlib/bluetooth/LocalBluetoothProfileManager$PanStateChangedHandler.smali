.class Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p2, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 269
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->mProfile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/settings_exlib/bluetooth/PanProfile;

    .line 274
    .local v0, "panProfile":Lcom/android/settings_exlib/bluetooth/PanProfile;
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 275
    .local v1, "role":I
    invoke-virtual {v0, p3, v1}, Lcom/android/settings_exlib/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 276
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 277
    return-void
.end method
