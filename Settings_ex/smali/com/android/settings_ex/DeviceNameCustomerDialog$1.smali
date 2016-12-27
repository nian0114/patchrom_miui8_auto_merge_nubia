.class Lcom/android/settings_ex/DeviceNameCustomerDialog$1;
.super Ljava/lang/Object;
.source "DeviceNameCustomerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceNameCustomerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DeviceNameCustomerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceNameCustomerDialog;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog$1;->this$0:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, -0x1

    .line 104
    const/16 v0, 0x1e

    .line 105
    .local v0, "Max":I
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog$1;->this$0:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    # getter for: Lcom/android/settings_ex/DeviceNameCustomerDialog;->mCustomDeviceNameEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->access$000(Lcom/android/settings_ex/DeviceNameCustomerDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 106
    .local v2, "mSelection":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v1, v3

    .line 107
    .local v1, "len":I
    if-le v1, v0, :cond_0

    .line 108
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog$1;->this$0:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog$1;->this$0:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog$1;->this$0:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 93
    return-void
.end method
