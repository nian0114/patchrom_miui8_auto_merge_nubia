.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sharedVol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 621
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    :goto_0
    return-void

    .line 623
    :cond_0
    new-instance v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;-><init>()V

    .line 624
    .local v1, "dialog":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 625
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 628
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 629
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "otherInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 636
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 639
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 640
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v4, 0x7f0c0415

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 643
    const v4, 0x7f0c03ef

    new-instance v5, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 650
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 652
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
