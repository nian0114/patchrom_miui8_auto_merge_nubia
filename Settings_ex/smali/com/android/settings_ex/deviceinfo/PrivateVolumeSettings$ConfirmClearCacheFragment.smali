.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmClearCacheFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    :goto_0
    return-void

    .line 693
    :cond_0
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;-><init>()V

    .line 694
    .local v0, "dialog":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 695
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmClearCache"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 702
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 703
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0c03da

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 704
    const v2, 0x7f0c03db

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 706
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 719
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 721
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
