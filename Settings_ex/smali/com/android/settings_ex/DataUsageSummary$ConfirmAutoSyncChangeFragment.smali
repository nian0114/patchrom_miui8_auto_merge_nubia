.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# instance fields
.field private mEnabling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 1682
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "enabling"    # Z

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1689
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 1690
    .local v0, "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 1691
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1692
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1682
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1698
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 1699
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 1702
    :cond_0
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1703
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 1704
    const v2, 0x7f0c088d

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1705
    const v2, 0x7f0c088e

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1711
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1721
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment$2;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1731
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1707
    :cond_1
    const v2, 0x7f0c088b

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1708
    const v2, 0x7f0c088c

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1736
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1737
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1738
    return-void
.end method
