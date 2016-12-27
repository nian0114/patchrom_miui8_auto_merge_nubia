.class Lcom/android/settings_ex/bluetooth/DevicePickerFragment$1;
.super Ljava/lang/Object;
.source "DevicePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DevicePickerFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerFragment;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DevicePickerFragment;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 94
    :cond_0
    return-void
.end method
