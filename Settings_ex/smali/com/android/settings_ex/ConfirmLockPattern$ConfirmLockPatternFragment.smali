.class public Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;
.implements Lcom/android/settings_exlib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;",
        "Lcom/android/settings_exlib/animation/AppearAnimationCreator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mEffectiveUserId:I

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 326
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 388
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    .line 251
    .local v0, "cellStates":[[Lcom/android/internal/widget/LockPatternView$CellState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v5, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v6, v0, v1

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 254
    aget-object v6, v0, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    array-length v7, v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    .line 262
    .local v4, "resultArr":[[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 263
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 264
    .restart local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 265
    aget-object v6, v4, v1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 262
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 268
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    return-object v4
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 510
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 512
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 529
    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;II)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 488
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 501
    :goto_0
    return-void

    .line 492
    :cond_0
    if-lez p3, :cond_1

    .line 493
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 495
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 497
    .end local v0    # "deadline":J
    :cond_1
    sget-object v2, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 498
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f0d009c

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settings_exlib/animation/AppearAnimationCreator;)V

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V
    .locals 4
    .param p1, "stage"    # Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    .prologue
    const/4 v3, 0x1

    .line 279
    sget-object v1, Lcom/android/settings_ex/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 324
    return-void

    .line 281
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f0c0e02

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0e04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, " "

    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 298
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_4
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 310
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f0c04ec

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 306
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v2, 0x7f0c0e05

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 314
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 342
    return-void
.end method

.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 536
    instance-of v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v0, :cond_4

    move-object v1, p1

    .line 537
    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 538
    .local v1, "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p7, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p7, :cond_1

    move/from16 v4, p6

    :goto_1
    if-eqz p7, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-eqz p7, :cond_3

    const/4 v6, 0x0

    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 548
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :goto_4
    return-void

    .line 538
    .restart local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move/from16 v5, p6

    goto :goto_2

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    .line 545
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x1f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 126
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const v0, 0x7f040051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 132
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f1200f5

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f1200fb

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 135
    const v0, 0x7f1200fc

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f1200fa

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 143
    .local v9, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 146
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 147
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 148
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    .line 149
    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 150
    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 158
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 160
    if-nez p3, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 169
    :cond_1
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c000e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 173
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x7d

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c000f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "check_lock_result"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const-string v2, "check_lock_result"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 193
    :cond_2
    return-object v10

    .line 155
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;II)V

    .line 507
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 382
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 209
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 221
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 222
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 230
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 231
    return-void

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    sget-object v2, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 241
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settings_exlib/animation/AppearAnimationCreator;)V

    .line 276
    return-void
.end method
