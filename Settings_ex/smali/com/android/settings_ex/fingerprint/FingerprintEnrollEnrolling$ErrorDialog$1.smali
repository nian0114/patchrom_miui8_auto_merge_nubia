.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 502
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 503
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    iget v4, v4, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->errMsgId:I

    if-ne v4, v3, :cond_1

    move v1, v2

    .line 504
    .local v1, "wasTimeout":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 505
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 507
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 508
    return-void

    .line 503
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "wasTimeout":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
