.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$dialogLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;Landroid/view/View;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->val$dialogLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 777
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->val$dialogLayout:Landroid/view/View;

    const v3, 0x7f12008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 778
    .local v0, "deviceName":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 779
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 781
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 782
    const-string v2, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send ACTION_ALIAS_CHANGED intent, aliasName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method
