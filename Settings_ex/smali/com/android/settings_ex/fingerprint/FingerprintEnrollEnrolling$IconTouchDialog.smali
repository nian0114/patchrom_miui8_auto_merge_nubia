.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconTouchDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 437
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 438
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v1, 0x7f0c019e

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c019f

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0190

    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
