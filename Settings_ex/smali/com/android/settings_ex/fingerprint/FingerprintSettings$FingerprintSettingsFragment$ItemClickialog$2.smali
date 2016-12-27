.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$2;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1118
    const-string v0, "FingerprintSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    if-nez p2, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->access$2300(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->access$2400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1124
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1125
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->onDeleteClick()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->access$2500(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;)V

    goto :goto_0
.end method
