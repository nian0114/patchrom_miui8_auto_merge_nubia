.class public Lcom/android/settings_ex/IccLockSettings;
.super Lcn/nubia/commonui/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings_ex/EditPinPreference;

.field private mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 113
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$1;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$2;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRetryCounter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 552
    if-ltz p2, :cond_0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0de2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "displayMsg":Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 560
    .end local v0    # "displayMsg":Ljava/lang/String;
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0393

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;II)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "requestType"    # I
    .param p3, "attemptsRemaining"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const v3, 0x7f0c0ddd

    .line 426
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_8

    .line 427
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "exception":Ljava/lang/Throwable;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 429
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 431
    if-ne p2, v5, :cond_1

    .line 432
    const v1, 0x7f0c0ddb

    .line 436
    .local v1, "id":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 477
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v1    # "id":I
    :cond_0
    :goto_1
    return-void

    .line 434
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f0c0ddc

    .restart local v1    # "id":I
    goto :goto_0

    .line 438
    .end local v1    # "id":I
    :cond_2
    if-ne p2, v5, :cond_6

    .line 439
    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_4

    .line 440
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 441
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0dde

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 451
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 452
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 457
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0ddf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 463
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_7

    .line 464
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 468
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0391

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 474
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :cond_8
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 475
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private iccLockChanged(Ljava/lang/Throwable;I)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 481
    if-nez p1, :cond_1

    .line 482
    iget-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0de0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 494
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 495
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    .line 496
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 497
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0de1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 491
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ex/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    goto :goto_1
.end method

.method private iccPinChanged(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 500
    if-eqz p1, :cond_0

    .line 501
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ex/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    .line 508
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 509
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0392

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 535
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 537
    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 545
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 546
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 549
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f0c038e

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 318
    const-string v0, ""

    .line 319
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 339
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 344
    return-void

    .line 321
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0389

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c038a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 327
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 417
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 418
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 513
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 515
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 168
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/PhoneWindow;

    const v5, 0x7f0e0065

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 170
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->finish()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const v4, 0x7f080066

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/IccLockSettings;->addPreferencesFromResource(I)V

    .line 177
    const-string v4, "sim_pin"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/EditPinPreference;

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    .line 178
    const-string v4, "sim_toggle"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    .line 179
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    if-eqz p1, :cond_2

    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 184
    const-string v4, "dialogPin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 185
    const-string v4, "dialogError"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 186
    const-string v4, "enableState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 189
    iget v4, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    .line 206
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 212
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 215
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 216
    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 221
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, v6}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :pswitch_0
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 195
    :pswitch_1
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 196
    const-string v4, "newPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->finish()V

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onPause()V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    return-void
.end method

.method public onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 347
    if-nez p2, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 388
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c038f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 356
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 359
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 365
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 366
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 367
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 372
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 373
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 379
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 380
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 381
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 383
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 397
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 401
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/nubia/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 402
    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 403
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 408
    :goto_0
    return v0

    .line 404
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    if-ne p1, v2, :cond_1

    .line 405
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onResume()V

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 289
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
