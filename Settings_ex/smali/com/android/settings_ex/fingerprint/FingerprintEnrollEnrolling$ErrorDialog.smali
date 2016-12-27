.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# instance fields
.field errMsgId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    .locals 3
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "msgId"    # I

    .prologue
    .line 467
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;-><init>()V

    .line 468
    .local v1, "dlg":Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 469
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "error_msg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 470
    const-string v2, "error_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 472
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 478
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 479
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->errMsgId:I

    if-ne v4, v3, :cond_1

    move v1, v2

    .line 480
    .local v1, "wasTimeout":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 481
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 483
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 484
    return-void

    .line 479
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "wasTimeout":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 488
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 491
    .local v2, "errorString":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->errMsgId:I

    .line 492
    const v3, 0x7f0c01a0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0190

    new-instance v5, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;)V

    invoke-virtual {v3, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 510
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 511
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1, v6}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 512
    return-object v1
.end method
