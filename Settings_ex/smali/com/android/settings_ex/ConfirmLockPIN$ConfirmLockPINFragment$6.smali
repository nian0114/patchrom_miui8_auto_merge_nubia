.class Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->resetState()V
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$1100(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getDefaultHeader()I
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$1000(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 473
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 463
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 464
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    const v3, 0x7f0c0505

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->showError(Ljava/lang/CharSequence;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$900(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Ljava/lang/CharSequence;J)V

    .line 467
    return-void
.end method
