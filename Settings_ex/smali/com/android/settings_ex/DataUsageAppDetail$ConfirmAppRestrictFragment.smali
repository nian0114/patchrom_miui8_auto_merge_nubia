.class public Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAppRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageAppDetail;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppDetail;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 453
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;-><init>()V

    .line 454
    .local v0, "dialog":Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAppRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DataUsageAppDetail;

    .line 462
    .local v1, "target":Lcom/android/settings_ex/DataUsageAppDetail;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$700(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0c0888

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 464
    const v2, 0x7f0c0889

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 466
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment$1;-><init>(Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 475
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
