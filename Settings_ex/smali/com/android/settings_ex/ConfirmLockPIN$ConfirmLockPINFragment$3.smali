.class Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPIN.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$502(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 370
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$600(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;->val$localEffectiveUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 376
    return-void
.end method
