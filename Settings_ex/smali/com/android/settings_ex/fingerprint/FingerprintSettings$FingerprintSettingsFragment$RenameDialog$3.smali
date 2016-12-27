.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

.field final synthetic val$alertDialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Lcn/nubia/commonui/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    iput-object p2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->val$alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1063
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->val$alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const v3, 0x7f1201aa

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1602(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1065
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFingerName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1900(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1700(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1067
    .local v0, "name":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$2000(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1069
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 1075
    :goto_1
    return-void

    .line 1065
    .end local v0    # "name":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFingerName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1900(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1071
    .restart local v0    # "name":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionStart:I
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$2100(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionEnd:I
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$2200(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1
.end method
