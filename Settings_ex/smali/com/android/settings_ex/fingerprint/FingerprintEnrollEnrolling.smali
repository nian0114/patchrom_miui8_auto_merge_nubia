.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;
    }
.end annotation


# instance fields
.field private mAnimationCancelled:Z

.field private mClickTime:J

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintAnimator:Landroid/widget/ImageView;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIndicatorBackgroundActivatedColor:I

.field private mIndicatorBackgroundRestingColor:I

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressText:Landroid/widget/TextView;

.field private mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

.field private mStartMessage:Landroid/widget/TextView;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mClickTime:J

    .line 366
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 390
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 414
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 421
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$8;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 455
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showErrorTip(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
    .param p1, "x1"    # [B

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method private animateFlash()V
    .locals 5

    .prologue
    .line 234
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 237
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 244
    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 245
    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 260
    return-void
.end method

.method private animateProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v2, "progress"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 226
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 230
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 231
    return-void
.end method

.method private clearError()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    const v1, 0x7f0c0b4a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 364
    return-void
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v1, 0x0

    .line 337
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 341
    :goto_0
    return v1

    .line 340
    :cond_0
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 341
    .local v0, "progress":I
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method private getProgressPercent(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v1, 0x0

    .line 329
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 333
    :goto_0
    return v1

    .line 332
    :cond_0
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 333
    .local v0, "progress":I
    mul-int/lit8 v1, v0, 0x64

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method private launchFinish([B)V
    .locals 4
    .param p1, "token"    # [B

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 267
    const-string v1, "add_finger_for"

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "add_finger_for"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 270
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .prologue
    .line 345
    invoke-static {p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    move-result-object v0

    .line 346
    .local v0, "dlg":Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private showErrorTip(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 360
    return-void
.end method

.method private showIconTouchDialog()V
    .locals 3

    .prologue
    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 351
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private startIconAnimation()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 203
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 208
    return-void
.end method

.method private updateProgress(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getProgress(II)I

    move-result v1

    .line 315
    .local v1, "progress":I
    if-eqz p1, :cond_0

    .line 316
    invoke-direct {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->animateProgress(I)V

    .line 321
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getProgressPercent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0b4b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "percentProgress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void

    .line 318
    .end local v0    # "percentProgress":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 430
    const/16 v0, 0xf0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f04009b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 106
    const v1, 0x7f0c0b45

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setTitle(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 108
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    :cond_0
    const v1, 0x7f120198

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f120199

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f12019b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressText:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f12019d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 117
    const v1, 0x7f12019c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 122
    const v1, 0x10c000d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 124
    const v1, 0x10c000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    const v1, 0x10c000f

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    const v1, 0x7f0e003e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    .line 147
    const v1, 0x7f0e003f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    .line 148
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    .line 149
    return-void

    .line 148
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 295
    const v0, 0x7f0c01a2

    .line 298
    .local v0, "msgId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 300
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 301
    return-void

    .line 290
    .end local v0    # "msgId":I
    :pswitch_0
    const v0, 0x7f0c01a1

    .line 291
    .restart local v0    # "msgId":I
    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 4
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 307
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 198
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 199
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b48

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mClickTime:J

    .line 189
    :goto_0
    const/4 v0, 0x1

    .line 191
    :goto_1
    return v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->onBackPressed()V

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const-string v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 174
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 177
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 214
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 218
    :cond_0
    return-void
.end method
