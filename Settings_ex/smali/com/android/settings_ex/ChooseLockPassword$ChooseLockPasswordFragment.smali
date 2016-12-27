.class public Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 141
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 142
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 143
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 144
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 145
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 146
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 147
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 148
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 151
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 153
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 167
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 207
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 550
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 553
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 555
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "ChooseLockPassword"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 636
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 638
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockPassword$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    .line 639
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    const-string v3, "save_and_finish_worker"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 641
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 645
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;I)V

    .line 647
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 649
    .local v9, "passwordLength":I
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "password_length"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 572
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-nez v7, :cond_0

    move v0, v5

    .line 573
    .local v0, "canInput":Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 575
    .local v2, "length":I
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_4

    .line 576
    iget v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v7, :cond_2

    .line 577
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_1

    const v7, 0x7f0c01e9

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p0, v7, v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 595
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 596
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 597
    return-void

    .end local v0    # "canInput":Z
    .end local v2    # "length":I
    .end local v4    # "password":Ljava/lang/String;
    :cond_0
    move v0, v6

    .line 572
    goto :goto_0

    .line 577
    .restart local v0    # "canInput":Z
    .restart local v2    # "length":I
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    const v7, 0x7f0c01ea

    goto :goto_1

    .line 582
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 584
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 587
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0c01eb

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 588
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 592
    .end local v1    # "error":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 593
    if-eqz v0, :cond_6

    if-lez v2, :cond_6

    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 592
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_3

    :cond_6
    move v5, v6

    .line 593
    goto :goto_4
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    const v12, 0x7f0c01e9

    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 490
    :goto_1
    return-object v12

    .line 399
    :cond_0
    const v12, 0x7f0c01ea

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_3

    .line 404
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_2

    const v12, 0x7f0c01ed

    :goto_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    const v12, 0x7f0c01ee

    goto :goto_2

    .line 408
    :cond_3
    const/4 v5, 0x0

    .line 409
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 410
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 411
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 412
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 413
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 414
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 415
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 417
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_4

    const/16 v12, 0x7f

    if-le v3, v12, :cond_5

    .line 418
    :cond_4
    const v12, 0x7f0c01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 420
    :cond_5
    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    .line 421
    add-int/lit8 v8, v8, 0x1

    .line 422
    add-int/lit8 v7, v7, 0x1

    .line 414
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 423
    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_7

    .line 424
    add-int/lit8 v5, v5, 0x1

    .line 425
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 426
    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_8

    .line 427
    add-int/lit8 v5, v5, 0x1

    .line 428
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 430
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 431
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 434
    .end local v3    # "c":C
    :cond_9
    const/high16 v12, 0x20000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_a

    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_d

    .line 436
    :cond_a
    if-gtz v5, :cond_b

    if-lez v10, :cond_c

    .line 439
    :cond_b
    const v12, 0x7f0c01ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 442
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 443
    .local v9, "sequence":I
    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_18

    const/4 v12, 0x3

    if-le v9, v12, :cond_18

    .line 445
    const v12, 0x7f0c01f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 447
    .end local v9    # "sequence":I
    :cond_d
    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_13

    .line 448
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_e

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130002

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 452
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_f

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130005

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 456
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_10

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130003

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 460
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_11

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130004

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 464
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_12

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130006

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 468
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_18

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130007

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 474
    :cond_13
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_15

    const/4 v1, 0x1

    .line 476
    .local v1, "alphabetic":Z
    :goto_5
    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_16

    const/4 v2, 0x1

    .line 478
    .local v2, "alphanumeric":Z
    :goto_6
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 479
    const v12, 0x7f0c01f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 474
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 476
    .restart local v1    # "alphabetic":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_6

    .line 481
    .restart local v2    # "alphanumeric":Z
    :cond_17
    if-eqz v2, :cond_18

    if-nez v8, :cond_18

    .line 482
    const v12, 0x7f0c01f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 485
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 486
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_19

    const v12, 0x7f0c01f5

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_19
    const v12, 0x7f0c01f0

    goto :goto_7

    .line 490
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 602
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 605
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 609
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x1c

    return v0
.end method

.method public handleNext()V
    .locals 5

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v2, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 496
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_3

    .line 501
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    if-nez v0, :cond_2

    .line 503
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 504
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 518
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 519
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 507
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_2

    .line 508
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_1

    .line 511
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 512
    .local v1, "tmp":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    move-object v2, v1

    .line 513
    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 515
    :cond_5
    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 365
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 369
    :cond_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 664
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 547
    :goto_0
    return-void

    .line 534
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 538
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 539
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 540
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_back_twice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x7f1200f7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 220
    const/4 v1, 0x4

    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 224
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 225
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 228
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 231
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 234
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 237
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 240
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 244
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 245
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setHasOptionsMenu(Z)V

    .line 246
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 559
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 563
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 616
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 618
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 619
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 620
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 621
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 622
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 348
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 349
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 354
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 613
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 258
    const v8, 0x7f1200f7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 259
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v8, 0x7f1200f8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 261
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const/high16 v8, 0x40000

    iget v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x50000

    iget v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x60000

    iget v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 266
    const v8, 0x7f1200f9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 267
    const v8, 0x7f1200f6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 268
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 269
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    new-instance v8, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v9}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 271
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    iget v12, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 273
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 275
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 279
    const v8, 0x7f1200f5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 280
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 282
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 283
    .local v2, "currentType":I
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v9, :cond_5

    .end local v2    # "currentType":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 287
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "confirm_credentials"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 289
    .local v1, "confirmCredentials":Z
    const-string v8, "password"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 290
    const-string v8, "has_challenge"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 292
    const-string v8, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 293
    if-nez p2, :cond_6

    .line 294
    sget-object v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 295
    if-eqz v1, :cond_1

    .line 296
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v9, 0x3a

    const v10, 0x7f0c01c5

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    .line 316
    :cond_1
    :goto_3
    instance-of v8, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 317
    check-cast v5, Lcom/android/settings_ex/SettingsActivity;

    .line 318
    .local v5, "sa":Lcom/android/settings_ex/SettingsActivity;
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_9

    const v3, 0x7f0c04db

    .line 320
    .local v3, "id":I
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 321
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    .end local v3    # "id":I
    .end local v5    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 263
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "confirmCredentials":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 275
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 283
    .restart local v2    # "currentType":I
    :cond_5
    const/16 v2, 0x12

    goto :goto_2

    .line 301
    .end local v2    # "currentType":I
    .restart local v1    # "confirmCredentials":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v8, "first_pin"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 302
    const-string v8, "ui_stage"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "state":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 304
    invoke-static {v6}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 305
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 308
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 309
    const-string v8, "current_password"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 313
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "save_and_finish_worker"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    goto :goto_3

    .line 318
    .end local v6    # "state":Ljava/lang/String;
    .restart local v5    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_9
    const v3, 0x7f0c04dd

    goto :goto_4
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 525
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 529
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 382
    .local v0, "previousStage":Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 383
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 387
    if-eq v0, p1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    return-void
.end method
