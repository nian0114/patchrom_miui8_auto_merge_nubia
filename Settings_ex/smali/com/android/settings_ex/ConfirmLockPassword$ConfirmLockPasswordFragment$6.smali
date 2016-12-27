.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 439
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 429
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 430
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v3, 0x7f0c0505

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$900(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/CharSequence;J)V

    .line 433
    return-void
.end method
