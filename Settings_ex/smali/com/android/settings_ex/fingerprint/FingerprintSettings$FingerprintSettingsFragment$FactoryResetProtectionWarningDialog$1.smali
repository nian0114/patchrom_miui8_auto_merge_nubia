.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x1

    .line 905
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->removeAllFingerprintTemplates()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1300(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 906
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1200(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$702(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 908
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1102(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 911
    return-void
.end method
