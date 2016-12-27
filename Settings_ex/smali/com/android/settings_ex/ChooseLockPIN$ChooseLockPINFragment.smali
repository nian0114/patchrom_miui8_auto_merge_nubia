.class public Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockPIN.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPINFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

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

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 142
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLength:I

    .line 143
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMaxLength:I

    .line 144
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLetters:I

    .line 145
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinUpperCase:I

    .line 146
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLowerCase:I

    .line 147
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinSymbols:I

    .line 148
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNumeric:I

    .line 149
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNonLetter:I

    .line 152
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    .line 154
    sget-object v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 169
    new-instance v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 570
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 573
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 575
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "ChooseLockPIN"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 676
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->setNextEnabled(Z)V

    .line 678
    new-instance v0, Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockPIN$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    .line 679
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    const-string v3, "save_and_finish_worker"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 685
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChallenge:J

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 592
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    if-nez v8, :cond_0

    move v0, v6

    .line 593
    .local v0, "canInput":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "password":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 595
    .local v2, "length":I
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-nez v8, :cond_1

    const/4 v8, 0x4

    if-ne v2, v8, :cond_1

    .line 596
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 597
    .local v3, "mesg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 633
    .end local v3    # "mesg":Landroid/os/Message;
    :goto_1
    return-void

    .end local v0    # "canInput":Z
    .end local v2    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :cond_0
    move v0, v7

    .line 592
    goto :goto_0

    .line 602
    .restart local v0    # "canInput":Z
    .restart local v2    # "length":I
    .restart local v5    # "password":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    sget-object v9, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    if-ne v8, v9, :cond_6

    .line 603
    iget v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLength:I

    if-ge v2, v8, :cond_4

    .line 604
    const/4 v4, 0x0

    .line 605
    .local v4, "msg":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 607
    const v8, 0x7f0c01e9

    new-array v6, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {p0, v8, v6}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 614
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->setNextEnabled(Z)V

    .line 631
    .end local v4    # "msg":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    iget v6, v6, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->buttonText:I

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->setNextText(I)V

    .line 632
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    goto :goto_1

    .line 610
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 611
    const v6, 0x7f0c0ba1

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 618
    .end local v4    # "msg":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 620
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->setNextEnabled(Z)V

    goto :goto_3

    .line 623
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f0c01eb

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 624
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->setNextEnabled(Z)V

    goto :goto_3

    .line 628
    .end local v1    # "error":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    iget v8, v8, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->alphaHint:I

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 629
    if-eqz v0, :cond_8

    if-lez v2, :cond_8

    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->setNextEnabled(Z)V

    goto :goto_3

    .line 628
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    iget v8, v8, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->numericHint:I

    goto :goto_4

    :cond_8
    move v6, v7

    .line 629
    goto :goto_5
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLength:I

    if-ge v13, v14, :cond_1

    .line 420
    const/4 v7, 0x0

    .line 421
    .local v7, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_0

    .line 422
    const v13, 0x7f0c01e9

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLength:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 516
    .end local v7    # "msg":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 424
    .restart local v7    # "msg":Ljava/lang/String;
    :cond_0
    const v13, 0x7f0c0ba1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 429
    .end local v7    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMaxLength:I

    if-le v13, v14, :cond_3

    .line 430
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_2

    const v13, 0x7f0c01ed

    :goto_1
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMaxLength:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const v13, 0x7f0c01ee

    goto :goto_1

    .line 434
    :cond_3
    const/4 v5, 0x0

    .line 435
    .local v5, "letters":I
    const/4 v9, 0x0

    .line 436
    .local v9, "numbers":I
    const/4 v6, 0x0

    .line 437
    .local v6, "lowercase":I
    const/4 v11, 0x0

    .line 438
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 439
    .local v12, "uppercase":I
    const/4 v8, 0x0

    .line 440
    .local v8, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_9

    .line 441
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 443
    .local v3, "c":C
    const/16 v13, 0x20

    if-lt v3, v13, :cond_4

    const/16 v13, 0x7f

    if-le v3, v13, :cond_5

    .line 444
    :cond_4
    const v13, 0x7f0c01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 446
    :cond_5
    const/16 v13, 0x30

    if-lt v3, v13, :cond_6

    const/16 v13, 0x39

    if-gt v3, v13, :cond_6

    .line 447
    add-int/lit8 v9, v9, 0x1

    .line 448
    add-int/lit8 v8, v8, 0x1

    .line 440
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 449
    :cond_6
    const/16 v13, 0x41

    if-lt v3, v13, :cond_7

    const/16 v13, 0x5a

    if-gt v3, v13, :cond_7

    .line 450
    add-int/lit8 v5, v5, 0x1

    .line 451
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 452
    :cond_7
    const/16 v13, 0x61

    if-lt v3, v13, :cond_8

    const/16 v13, 0x7a

    if-gt v3, v13, :cond_8

    .line 453
    add-int/lit8 v5, v5, 0x1

    .line 454
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 456
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 457
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 460
    .end local v3    # "c":C
    :cond_9
    const/high16 v13, 0x20000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-eq v13, v14, :cond_a

    const/high16 v13, 0x30000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_d

    .line 462
    :cond_a
    if-gtz v5, :cond_b

    if-lez v11, :cond_c

    .line 465
    :cond_b
    const v13, 0x7f0c01ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 468
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v10

    .line 469
    .local v10, "sequence":I
    const/high16 v13, 0x30000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_18

    const/4 v13, 0x3

    if-le v10, v13, :cond_18

    .line 471
    const v13, 0x7f0c01f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 473
    .end local v10    # "sequence":I
    :cond_d
    const/high16 v13, 0x60000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_13

    .line 474
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLetters:I

    if-ge v5, v13, :cond_e

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130002

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLetters:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLetters:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 478
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNumeric:I

    if-ge v9, v13, :cond_f

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130005

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNumeric:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNumeric:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 482
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLowerCase:I

    if-ge v6, v13, :cond_10

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130003

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLowerCase:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 486
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinUpperCase:I

    if-ge v12, v13, :cond_11

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130004

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinUpperCase:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 490
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinSymbols:I

    if-ge v11, v13, :cond_12

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130006

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinSymbols:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinSymbols:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 494
    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNonLetter:I

    if-ge v8, v13, :cond_18

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130007

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNonLetter:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 500
    :cond_13
    const/high16 v13, 0x40000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_15

    const/4 v1, 0x1

    .line 502
    .local v1, "alphabetic":Z
    :goto_4
    const/high16 v13, 0x50000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_16

    const/4 v2, 0x1

    .line 504
    .local v2, "alphanumeric":Z
    :goto_5
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 505
    const v13, 0x7f0c01f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 500
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_4

    .line 502
    .restart local v1    # "alphabetic":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_5

    .line 507
    .restart local v2    # "alphanumeric":Z
    :cond_17
    if-eqz v2, :cond_18

    if-nez v9, :cond_18

    .line 508
    const v13, 0x7f0c01f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 511
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 512
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_19

    const v13, 0x7f0c01f5

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_19
    const v13, 0x7f0c01f0

    goto :goto_6

    .line 516
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 638
    sget-object v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->refreshDotsImage(I)V

    .line 644
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateUi()V

    .line 645
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 649
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 345
    const/16 v0, 0x1c

    return v0
.end method

.method public handleNext()V
    .locals 4

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    if-eqz v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChosenPassword:Ljava/lang/String;

    .line 522
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    if-ne v2, v3, :cond_3

    .line 527
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    if-nez v0, :cond_2

    .line 529
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mFirstPin:Ljava/lang/String;

    .line 530
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    sget-object v2, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V

    .line 545
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 546
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    if-ne v2, v3, :cond_2

    .line 534
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mFirstPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->startSaveAndFinish()V

    goto :goto_1

    .line 537
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 538
    .local v1, "tmp":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    .line 540
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_5
    sget-object v2, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 383
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 387
    :cond_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 381
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
    .line 691
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 692
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 700
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 567
    :goto_0
    return-void

    .line 561
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->handleNext()V

    goto :goto_0

    .line 565
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 559
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
    .line 215
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockPIN;

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    .line 224
    const/4 v1, 0x4

    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLength:I

    .line 228
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMaxLength:I

    .line 229
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLetters:I

    .line 232
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinUpperCase:I

    .line 235
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinLowerCase:I

    .line 238
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNumeric:I

    .line 241
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinSymbols:I

    .line 244
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordMinNonLetter:I

    .line 248
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 249
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->setHasOptionsMenu(Z)V

    .line 250
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const v0, 0x7f04004d

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
    .line 579
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->handleNext()V

    .line 583
    const/4 v0, 0x1

    .line 585
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
    .line 656
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 666
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 658
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 659
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 660
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 661
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 662
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 366
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 367
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 372
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 653
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-super/range {p0 .. p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 262
    const v12, 0x7f1200f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCancelButton:Landroid/widget/Button;

    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v12, 0x7f1200f8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mNextButton:Landroid/widget/Button;

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_0

    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_0

    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_6

    :cond_0
    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    .line 270
    const v12, 0x7f1200f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 271
    const v12, 0x7f1200f6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 272
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-nez v12, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    const/16 v16, 0x4

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setClickable(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    new-instance v12, Lcom/android/internal/widget/TextViewInputDisabler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v12, v13}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 281
    .local v2, "activity":Landroid/app/Activity;
    new-instance v12, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v12, v2, v13, v14}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v13, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 286
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-nez v12, :cond_3

    .line 287
    const v12, 0x7f120102

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/widget/DigitalKeyboardView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    .line 288
    const v12, 0x7f120103

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 289
    .local v3, "btnPanel":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 290
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_2
    const v12, 0x7f120101

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 293
    .local v8, "pinInputView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mDigitalView:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    const v14, 0x7f1202c0

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setView(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 297
    .end local v3    # "btnPanel":Landroid/view/View;
    .end local v8    # "pinInputView":Landroid/view/View;
    :cond_3
    const v12, 0x7f1200f5

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v12}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    .line 301
    .local v5, "currentType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_8

    .end local v5    # "currentType":I
    :goto_2
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 305
    .local v7, "intent":Landroid/content/Intent;
    const-string v12, "confirm_credentials"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 307
    .local v4, "confirmCredentials":Z
    const-string v12, "password"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCurrentPassword:Ljava/lang/String;

    .line 308
    const-string v12, "has_challenge"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHasChallenge:Z

    .line 310
    const-string v12, "challenge"

    const-wide/16 v14, 0x0

    invoke-virtual {v7, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChallenge:J

    .line 311
    if-nez p2, :cond_9

    .line 312
    sget-object v12, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V

    .line 313
    if-eqz v4, :cond_4

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v13, 0x3a

    const v14, 0x7f0c01c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    .line 334
    :cond_4
    :goto_3
    instance-of v12, v2, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v12, :cond_5

    move-object v9, v2

    .line 335
    check-cast v9, Lcom/android/settings_ex/SettingsActivity;

    .line 336
    .local v9, "sa":Lcom/android/settings_ex/SettingsActivity;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_c

    const v6, 0x7f0c04db

    .line 338
    .local v6, "id":I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 339
    .local v11, "title":Ljava/lang/CharSequence;
    invoke-virtual {v9, v11}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    .end local v6    # "id":I
    .end local v9    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_5
    return-void

    .line 267
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v4    # "confirmCredentials":Z
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 283
    .restart local v2    # "activity":Landroid/app/Activity;
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 301
    .restart local v5    # "currentType":I
    :cond_8
    const/16 v5, 0x12

    goto :goto_2

    .line 319
    .end local v5    # "currentType":I
    .restart local v4    # "confirmCredentials":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v12, "first_pin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mFirstPin:Ljava/lang/String;

    .line 320
    const-string v12, "ui_stage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, "state":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 322
    invoke-static {v10}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V

    .line 326
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v12, :cond_b

    .line 327
    const-string v12, "current_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mCurrentPassword:Ljava/lang/String;

    .line 331
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    const-string v13, "save_and_finish_worker"

    invoke-virtual {v12, v13}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;

    goto :goto_3

    .line 336
    .end local v10    # "state":Ljava/lang/String;
    .restart local v9    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_c
    const v6, 0x7f0c04dd

    goto :goto_4
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 552
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 556
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 400
    .local v0, "previousStage":Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 401
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateUi()V

    .line 405
    if-eq v0, p1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    return-void
.end method
