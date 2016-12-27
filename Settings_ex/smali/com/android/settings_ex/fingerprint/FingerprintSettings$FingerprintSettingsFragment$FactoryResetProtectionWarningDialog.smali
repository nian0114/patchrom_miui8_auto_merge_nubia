.class public Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FactoryResetProtectionWarningDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 882
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 883
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$702(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 884
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1102(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 885
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1202(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 886
    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 891
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0e6f

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0e70

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0191

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 916
    .local v1, "dialog":Lcn/nubia/commonui/app/Dialog;
    return-object v1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 877
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method
