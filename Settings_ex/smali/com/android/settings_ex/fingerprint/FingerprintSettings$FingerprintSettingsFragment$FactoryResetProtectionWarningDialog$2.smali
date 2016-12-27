.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$2;
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
    .line 894
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$2;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$2;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 898
    return-void
.end method
