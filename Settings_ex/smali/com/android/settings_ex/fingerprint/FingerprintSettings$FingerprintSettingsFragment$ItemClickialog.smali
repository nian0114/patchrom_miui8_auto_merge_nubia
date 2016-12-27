.class public Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;
.super Landroid/app/DialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemClickialog"
.end annotation


# instance fields
.field private mFp:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1103
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;
    .param p1, "x1"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 1103
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->onDeleteClick()V

    return-void
.end method

.method private onDeleteClick()V
    .locals 4

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 1153
    .local v0, "parent":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    const-string v1, "FingerprintSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing fpId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfd

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1157
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$2600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1158
    return-void
.end method

.method private showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 1140
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;-><init>()V

    .line 1141
    .local v1, "renameDeleteDialog":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1142
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1143
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1145
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1147
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    .line 1111
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0c0d43

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0c0d44

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1113
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;)V

    invoke-virtual {v2, v1, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 1136
    .local v0, "alertDialog":Lcn/nubia/commonui/app/AlertDialog;
    return-object v0
.end method
