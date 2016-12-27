.class public Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# instance fields
.field private mEnabling:Z

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static show(Lcom/android/settings_ex/accounts/AccountSettings;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/accounts/AccountSettings;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    :goto_0
    return-void

    .line 603
    :cond_0
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 604
    .local v0, "dialog":Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 605
    iput-object p2, v0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 606
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 607
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 613
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 614
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 615
    const-string v2, "userHandle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 618
    :cond_0
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 619
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 620
    const v2, 0x7f0c088d

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 621
    const v2, 0x7f0c088e

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 627
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 634
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 636
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 623
    :cond_1
    const v2, 0x7f0c088b

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 624
    const v2, 0x7f0c088c

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 641
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 642
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    const-string v0, "userHandle"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 644
    return-void
.end method
