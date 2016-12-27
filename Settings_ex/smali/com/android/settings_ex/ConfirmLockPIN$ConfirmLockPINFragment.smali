.class public Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPIN.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPINFragment"
.end annotation


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

.field private mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

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

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDisappearing:Z

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHandler:Landroid/os/Handler;

    .line 105
    iput-boolean v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mUsingFingerprint:Z

    .line 494
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$7;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 115
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mBlockImm:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->resetState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->handleNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Ljava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # J

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
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
    .line 208
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

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
    .line 203
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

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
    .line 213
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

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
    const/4 v1, 0x0

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 455
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setEnabled(Z)V

    .line 457
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 475
    return-void
.end method

.method private handleNext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 327
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDisappearing:Z

    if-eqz v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 333
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_challenge"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 336
    .local v2, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 338
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v5, v0, v5, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto :goto_0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ConfirmLockPIN$InternalActivity;

    return v0
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;II)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 433
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 434
    if-eqz p1, :cond_0

    .line 435
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 445
    :goto_0
    return-void

    .line 437
    :cond_0
    if-lez p3, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 440
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 442
    .end local v0    # "deadline":J
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getErrorMessage()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->showError(I)V

    goto :goto_0
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 297
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getDefaultHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mUsingFingerprint:Z

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
    .line 491
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->showError(IJ)V

    .line 492
    return-void
.end method

.method private showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 511
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    :cond_0
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 381
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mEffectiveUserId:I

    .line 382
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$4;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$4;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 401
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDisappearing:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f0d009c

    if-ne v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$5;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 357
    .local v2, "challenge":J
    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mEffectiveUserId:I

    .line 358
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;

    invoke-direct {v5, p0, p2, v4}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$3;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Landroid/content/Intent;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 378
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$8;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$8;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->refreshDotsImage(I)V

    .line 543
    :cond_1
    return-void
.end method

.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 285
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 527
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 480
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->handleNext()V

    goto :goto_0

    .line 484
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 478
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
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mEffectiveUserId:I

    .line 122
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v15

    .line 129
    .local v15, "storedQuality":I
    const v2, 0x7f040054

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 131
    .local v16, "view":Landroid/view/View;
    const v2, 0x7f1200f6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 138
    const v2, 0x7f1200f5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 141
    const/high16 v2, 0x40000

    if-eq v2, v15, :cond_0

    const/high16 v2, 0x50000

    if-eq v2, v15, :cond_0

    const/high16 v2, 0x60000

    if-ne v2, v15, :cond_7

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 149
    .local v13, "intent":Landroid/content/Intent;
    if-eqz v13, :cond_3

    .line 150
    const-string v2, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 152
    .local v12, "headerMessage":Ljava/lang/CharSequence;
    const-string v2, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 154
    .local v11, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getDefaultHeader()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 157
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getDefaultDetails()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 160
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .end local v11    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v12    # "headerMessage":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

    if-nez v2, :cond_5

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 167
    const v2, 0x7f120102

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/DigitalKeyboardView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    .line 168
    const v2, 0x7f120103

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 169
    .local v9, "btnPanel":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 170
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_4
    const v2, 0x7f120101

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 173
    .local v14, "pinInputView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const v4, 0x7f1202c0

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setView(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 178
    .end local v9    # "btnPanel":Landroid/view/View;
    .end local v14    # "pinInputView":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v10

    .line 179
    .local v10, "currentType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mIsAlpha:Z

    if-eqz v3, :cond_8

    .end local v10    # "currentType":I
    :goto_1
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setInputType(I)V

    .line 181
    new-instance v2, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0xdc

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v17, 0x10c000e

    move/from16 v0, v17

    invoke-static {v8, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 185
    new-instance v2, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x6e

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v17, 0x10c000f

    move/from16 v0, v17

    invoke-static {v8, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "check_lock_result"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v2, :cond_6

    .line 194
    new-instance v2, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const-string v4, "check_lock_result"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 199
    :cond_6
    return-object v16

    .line 141
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 179
    .restart local v10    # "currentType":I
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_8
    const/16 v10, 0x12

    goto/16 :goto_1
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 450
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->onPasswordChecked(ZLandroid/content/Intent;II)V

    .line 451
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 516
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->handleNext()V

    .line 520
    const/4 v0, 0x1

    .line 522
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
    .line 289
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mUsingFingerprint:Z

    .line 290
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 259
    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 262
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 271
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 272
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 273
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 275
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->handleAttemptLockout(J)V

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 280
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->resetState()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 530
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 308
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mBlockImm:Z

    .line 226
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method
