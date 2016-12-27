.class Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 229
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 233
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
