.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$4;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$dialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;Lcn/nubia/commonui/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$4;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$4;->val$dialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$4;->val$dialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 816
    .local v0, "mOkButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 817
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 818
    :cond_0
    return-void

    .line 817
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$4;->val$dialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 826
    .local v0, "mOkButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 827
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 828
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 822
    return-void
.end method
