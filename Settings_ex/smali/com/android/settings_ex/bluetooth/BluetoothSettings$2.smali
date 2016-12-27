.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # invokes: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    .line 280
    :cond_0
    return-void
.end method
