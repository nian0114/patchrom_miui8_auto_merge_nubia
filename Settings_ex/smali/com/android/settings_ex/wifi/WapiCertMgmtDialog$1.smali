.class Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;
.super Ljava/lang/Object;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->onReferenceViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;->this$0:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private SsidLimit(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;->this$0:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    # getter for: Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->access$000(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 150
    .local v0, "end":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;->this$0:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    # getter for: Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->access$000(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v1, v2

    .line 151
    .local v1, "length":I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 152
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;->this$0:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    # getter for: Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->access$000(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$1;->SsidLimit(Landroid/text/Editable;)V

    .line 146
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 134
    return-void
.end method
