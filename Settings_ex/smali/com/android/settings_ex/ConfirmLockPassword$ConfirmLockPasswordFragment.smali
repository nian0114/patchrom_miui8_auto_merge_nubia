.class public Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mEffectiveUserId:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mUsingFingerprint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 97
    iput-boolean v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 460
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$7;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # J

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    return-object v1
.end method

.method private getDefaultDetails()I
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c04e9

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c04e8

    goto :goto_0
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c04de

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c04e0

    goto :goto_0
.end method

.method private getErrorMessage()I
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c04eb

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c04ea

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 422
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 423
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 441
    return-void
.end method

.method private handleNext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 294
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 300
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_challenge"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 303
    .local v2, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v5, v0, v5, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto :goto_0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    return v0
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;II)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 401
    if-eqz p1, :cond_0

    .line 402
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 412
    :goto_0
    return-void

    .line 404
    :cond_0
    if-lez p3, :cond_1

    .line 405
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 407
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 409
    .end local v0    # "deadline":J
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getErrorMessage()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 264
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showError(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 457
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    .line 458
    return-void
.end method

.method private showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 477
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    :cond_0
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 348
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 349
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 368
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 376
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f0d009c

    if-ne v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 324
    .local v2, "challenge":J
    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 325
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    invoke-direct {v5, p0, p2, v4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 345
    return-void
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 253
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 234
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 446
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 450
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x7f1200f7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v14

    .line 120
    .local v14, "storedQuality":I
    const v2, 0x7f04004f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 121
    .local v15, "view":Landroid/view/View;
    const v2, 0x7f1200f7

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v2, 0x7f1200f8

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 123
    .local v13, "mContinueButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v2, 0x7f1200f6

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 127
    const v2, 0x7f1200f5

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 128
    const/high16 v2, 0x40000

    if-eq v2, v14, :cond_0

    const/high16 v2, 0x50000

    if-eq v2, v14, :cond_0

    const/high16 v2, 0x60000

    if-ne v2, v14, :cond_5

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 136
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_3

    .line 137
    const-string v2, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 139
    .local v11, "headerMessage":Ljava/lang/CharSequence;
    const-string v2, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 141
    .local v10, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 144
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 147
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .end local v10    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v11    # "headerMessage":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    .line 150
    .local v9, "currentType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v3, :cond_6

    .end local v9    # "currentType":I
    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 152
    new-instance v2, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0xdc

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v16, 0x10c000e

    move/from16 v0, v16

    invoke-static {v8, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 156
    new-instance v2, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x6e

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v16, 0x10c000f

    move/from16 v0, v16

    invoke-static {v8, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "check_lock_result"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v2, :cond_4

    .line 165
    new-instance v2, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const-string v4, "check_lock_result"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 169
    :cond_4
    const-string v2, "ly"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-object v15

    .line 128
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 150
    .restart local v9    # "currentType":I
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v9, 0x12

    goto/16 :goto_1
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 417
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;II)V

    .line 418
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 482
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 486
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 258
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 227
    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 230
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 240
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 241
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 243
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 248
    return-void

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 275
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    .line 195
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method
