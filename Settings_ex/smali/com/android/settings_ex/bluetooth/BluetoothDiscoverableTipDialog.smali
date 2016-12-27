.class Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "BluetoothDiscoverableTipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 46
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->savePopConfirmed(Landroid/content/Context;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040044

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->mView:Landroid/view/View;

    .line 35
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->setView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x1

    const v2, 0x7f0c0138

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->mView:Landroid/view/View;

    const v2, 0x7f1200e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 41
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method
