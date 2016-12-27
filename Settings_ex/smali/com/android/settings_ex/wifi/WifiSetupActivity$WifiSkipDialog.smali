.class public Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;
.super Landroid/app/DialogFragment;
.source "WifiSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 256
    return-void
.end method

.method public static newInstance(I)Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;
    .locals 3
    .param p0, "messageRes"    # I

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "messageRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    new-instance v1, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;-><init>()V

    .line 250
    .local v1, "dialog":Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 251
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "messageRes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 261
    .local v1, "messageRes":I
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c02d1

    new-instance v4, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c02d2

    new-instance v4, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiSetupActivity$WifiSkipDialog;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 279
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->applyImmersiveFlags(Landroid/app/Dialog;)V

    .line 280
    return-object v0
.end method
