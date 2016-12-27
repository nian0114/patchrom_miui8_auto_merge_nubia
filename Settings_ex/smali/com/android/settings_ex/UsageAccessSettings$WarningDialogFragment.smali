.class public Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "UsageAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v1, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;-><init>()V

    .line 373
    .local v1, "dialog":Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 376
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 392
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/UsageAccessSettings;

    invoke-virtual {p0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UsageAccessSettings;->allowAccess(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e93

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e94

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIconAttribute(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0137

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
