.class public Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameDialog"
.end annotation


# instance fields
.field private mDialogTextField:Landroid/widget/EditText;

.field private mFingerName:Ljava/lang/String;

.field private mFp:Landroid/hardware/fingerprint/Fingerprint;

.field private mTextHadFocus:Ljava/lang/Boolean;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1001
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFingerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .prologue
    .line 1001
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionStart:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .prologue
    .line 1001
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionEnd:I

    return v0
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    .line 1013
    if-eqz p1, :cond_0

    .line 1014
    const-string v1, "fingerName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFingerName:Ljava/lang/String;

    .line 1015
    const-string v1, "textHadFocus"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    .line 1017
    const-string v1, "startSelection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionStart:I

    .line 1019
    const-string v1, "endSelection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionEnd:I

    .line 1022
    :cond_0
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0400a7

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0190

    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0137

    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 1059
    .local v0, "alertDialog":Lcn/nubia/commonui/app/AlertDialog;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Lcn/nubia/commonui/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1077
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1084
    :cond_2
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1089
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1090
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1091
    const-string v0, "fingerName"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v0, "textHadFocus"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1095
    const-string v0, "startSelection"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1097
    const-string v0, "endSelection"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1100
    :cond_0
    return-void
.end method
