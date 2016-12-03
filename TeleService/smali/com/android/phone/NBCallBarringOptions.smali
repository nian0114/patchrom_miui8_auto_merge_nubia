.class public Lcom/android/phone/NBCallBarringOptions;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBCallBarringOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/settings/fdn/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBCallBarringOptions$SetOptionCompleteHandler;,
        Lcom/android/phone/NBCallBarringOptions$GetAllCBOptionsCompleteHandler;
    }
.end annotation


# instance fields
.field private mButtonCancelAll:Lcom/android/phone/settings/fdn/EditPinPreference;

.field private mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

.field private mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

.field private mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

.field private mCBDataStale:Z

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private final mGetAllCBOptionsComplete:Landroid/os/Handler;

.field private mIncomingState:I

.field private mIsBusyDialogAvailable:Z

.field private mNewPsw:Ljava/lang/String;

.field private mOutgoingState:I

.field private mPassword:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mSetIncoming:I

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSetOutgoing:I

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    iput v1, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mCBDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIsBusyDialogAvailable:Z

    new-instance v0, Lcom/android/phone/NBCallBarringOptions$GetAllCBOptionsCompleteHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCallBarringOptions$GetAllCBOptionsCompleteHandler;-><init>(Lcom/android/phone/NBCallBarringOptions;)V

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/NBCallBarringOptions$SetOptionCompleteHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCallBarringOptions$SetOptionCompleteHandler;-><init>(Lcom/android/phone/NBCallBarringOptions;)V

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method private UnReasonablePSW(Ljava/lang/String;)Z
    .locals 2
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/NBCallBarringOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;

    .prologue
    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/NBCallBarringOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->queryAllCBOptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NBCallBarringOptions;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->handleGetAllOptionComplete(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NBCallBarringOptions;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->cancelAllCallBarring(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NBCallBarringOptions;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->setOutgoingOrIncoming(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NBCallBarringOptions;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->resetDialogState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NBCallBarringOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->changeCBPsw()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NBCallBarringOptions;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallBarringOptions;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->handleSetOptionComplete(Landroid/os/Message;)V

    return-void
.end method

.method private cancelAllCallBarring(Ljava/lang/String;)V
    .locals 5
    .param p1, "tmpPsw"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->showDialogSafely(I)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x12c

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private changeCBPsw()V
    .locals 6

    .prologue
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->showDialogSafely(I)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->requestChangeCbPsw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->resetDialogState(I)V

    return-void
.end method

.method private changePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "tmpPsw"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0b037f

    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->handleSetOutgoingOrIncoming(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->UnReasonablePSW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/phone/NBCallBarringOptions;->mPassword:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->UnReasonablePSW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->reenterPassword(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createAlertDialog(I)Lcn/nubia/commonui/phone/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f0b0102

    const v3, 0x7f0b00f7

    .local v3, "titleId":I
    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    sparse-switch p1, :sswitch_data_0

    const v2, 0x7f0b00fc

    .local v2, "msgId":I
    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/NBCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    return-object v1

    .end local v1    # "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    .end local v2    # "msgId":I
    :sswitch_0
    const v2, 0x7f0b00fb

    .restart local v2    # "msgId":I
    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v2    # "msgId":I
    :sswitch_1
    const v2, 0x7f0b0101

    .restart local v2    # "msgId":I
    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method private createProgressDialog(I)Lcn/nubia/commonui/phone/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    new-instance v0, Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/phone/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v0, "dialog":Lcn/nubia/commonui/phone/app/ProgressDialog;
    const v1, 0x7f0b00f4

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setIndeterminate(Z)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    iput-boolean v2, p0, Lcom/android/phone/NBCallBarringOptions;->mIsBusyDialogAvailable:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setCancelable(Z)V

    const v1, 0x7f0b00f9

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    const v1, 0x7f0b00f8

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method

.method private dismissBusyDialog()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->removeDialog(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIsBusyDialogAvailable:Z

    :cond_0
    return-void
.end method

.method private getBarringFacilityString(I)Ljava/lang/String;
    .locals 1
    .param p1, "facility"    # I

    .prologue
    const-string v0, ""

    .local v0, "facilityStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "AO"

    goto :goto_0

    :pswitch_1
    const-string v0, "OI"

    goto :goto_0

    :pswitch_2
    const-string v0, "OX"

    goto :goto_0

    :pswitch_3
    const-string v0, "AI"

    goto :goto_0

    :pswitch_4
    const-string v0, "IR"

    goto :goto_0

    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getDialogMessage()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b037e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCancelAllCallBarring(Ljava/lang/String;)V
    .locals 4
    .param p1, "tmpPsw"    # Ljava/lang/String;

    .prologue
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSubId:I

    new-instance v2, Lcom/android/phone/NBCallBarringOptions$3;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/NBCallBarringOptions$3;-><init>(Lcom/android/phone/NBCallBarringOptions;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/phone/NBPhoneUtils;->requestEnableDataDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    .local v0, "isShow":Z
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->cancelAllCallBarring(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleChangeCBPsw()V
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSubId:I

    new-instance v2, Lcom/android/phone/NBCallBarringOptions$6;

    invoke-direct {v2, p0}, Lcom/android/phone/NBCallBarringOptions$6;-><init>(Lcom/android/phone/NBCallBarringOptions;)V

    new-instance v3, Lcom/android/phone/NBCallBarringOptions$7;

    invoke-direct {v3, p0}, Lcom/android/phone/NBCallBarringOptions$7;-><init>(Lcom/android/phone/NBCallBarringOptions;)V

    invoke-static {p0, v1, v2, v3}, Lcom/android/phone/NBPhoneUtils;->requestEnableDataDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    .local v0, "isShow":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->changeCBPsw()V

    :cond_0
    return-void
.end method

.method private handleGetAllOptionComplete(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x1f4

    const/16 v3, 0x64

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/android/phone/NBCallBarringOptions;->removeDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NBCallBarringOptions;->handleGetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v1

    .local v1, "status":I
    if-eq v1, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/phone/NBCallBarringOptions;->removeDialog(I)V

    const-string v2, "NBCallBarringOptions"

    const-string v3, "EXCEPTION_ERROR!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->queryCallBarringOption(Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleGetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "reason"    # I

    .prologue
    const/16 v2, 0x12c

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, "NBCallBarringOptions"

    const-string v2, "handleGetCBMessage: Error getting CB enable state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const-string v3, "NBCallBarringOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCBMessage: Error during set call barring, reason: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v3, 0x0

    aget v0, v1, v3

    .local v0, "cbState":I
    if-nez v0, :cond_4

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    if-ne v1, p2, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    :cond_2
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    if-ne v1, p2, :cond_3

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    :cond_3
    :goto_1
    const/16 v1, 0x64

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p2}, Lcom/android/phone/NBCallBarringOptions;->setCBReason(I)V

    goto :goto_1

    :cond_5
    const-string v1, "NBCallBarringOptions"

    const-string v3, "handleGetCBMessage: Error getting CB state, unexpected value."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method private handleQueryAllCBOptions()V
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSubId:I

    new-instance v2, Lcom/android/phone/NBCallBarringOptions$1;

    invoke-direct {v2, p0}, Lcom/android/phone/NBCallBarringOptions$1;-><init>(Lcom/android/phone/NBCallBarringOptions;)V

    new-instance v3, Lcom/android/phone/NBCallBarringOptions$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NBCallBarringOptions$2;-><init>(Lcom/android/phone/NBCallBarringOptions;)V

    invoke-static {p0, v1, v2, v3}, Lcom/android/phone/NBPhoneUtils;->requestEnableDataDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    .local v0, "isShow":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->queryAllCBOptions()V

    :cond_0
    return-void
.end method

.method private handleSetOptionComplete(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0b0155

    const v2, 0x7f0b00fb

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->dismissBusyDialog()V

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->finish()V

    invoke-virtual {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->syncUiWithState()V

    invoke-virtual {p0, v3}, Lcom/android/phone/NBCallBarringOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->setCBComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->dismissBusyDialog()V

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/NBCallBarringOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSetOutgoingOrIncoming(Ljava/lang/String;)V
    .locals 4
    .param p1, "tmpPsw"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->UnReasonablePSW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSubId:I

    new-instance v2, Lcom/android/phone/NBCallBarringOptions$4;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/NBCallBarringOptions$4;-><init>(Lcom/android/phone/NBCallBarringOptions;Ljava/lang/String;)V

    new-instance v3, Lcom/android/phone/NBCallBarringOptions$5;

    invoke-direct {v3, p0}, Lcom/android/phone/NBCallBarringOptions$5;-><init>(Lcom/android/phone/NBCallBarringOptions;)V

    invoke-static {p0, v1, v2, v3}, Lcom/android/phone/NBPhoneUtils;->requestEnableDataDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    .local v0, "isShow":Z
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->setOutgoingOrIncoming(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x63

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "button_outgoing_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    const-string v0, "button_incoming_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    const-string v0, "SETOUTGOING_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    const-string v0, "SETINCOMING_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    const-string v0, "DIALOGSTATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    const-string v0, "CBDATASTALE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mCBDataStale:Z

    const-string v0, "ISBUSYDIALOGAVAILABLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIsBusyDialogAvailable:Z

    const-string v0, "PASSWORD_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPassword:Ljava/lang/String;

    const-string v0, "NEW_PSW_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    const-string v0, "ERROR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mCBDataStale:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIsBusyDialogAvailable:Z

    iput-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    goto :goto_0
.end method

.method private queryAllCBOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->showDialogSafely(I)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AO"

    const-string v2, ""

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private queryCallBarringOption(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "OI"

    const-string v2, ""

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v6, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "OX"

    const-string v2, ""

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v6, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AI"

    const-string v2, ""

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v6, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "IR"

    const-string v2, ""

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-static {v3, v6, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iput-boolean v5, p0, Lcom/android/phone/NBCallBarringOptions;->mCBDataStale:Z

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->syncUiWithState()V

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->removeDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reenterPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "tmpPsw"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0380

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->handleChangeCBPsw()V

    goto :goto_0
.end method

.method private resetDialogState(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    iput p1, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/fdn/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCBComplete(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v2, 0x63

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->dismissBusyDialog()V

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    :cond_1
    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    iput v0, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->syncUiWithState()V

    const v0, 0x7f0b0155

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCBReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setOutgoingOrIncoming(Ljava/lang/String;)V
    .locals 6
    .param p1, "tmpPsw"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x63

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {p0, v3}, Lcom/android/phone/NBCallBarringOptions;->showDialogSafely(I)V

    iget v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    if-eq v3, v5, :cond_2

    iget v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    iget v4, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    if-ltz v3, :cond_0

    .local v1, "lockState":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->getBarringFacilityString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "facility":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x190

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v1, p1, v3}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->resetDialogState(I)V

    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "lockState":Z
    :goto_3
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    .restart local v1    # "lockState":Z
    :cond_1
    iget v2, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    goto :goto_1

    .end local v1    # "lockState":Z
    :cond_2
    iget v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    iget v4, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    if-ltz v3, :cond_3

    .restart local v1    # "lockState":Z
    :goto_4
    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->getBarringFacilityString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "facility":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "lockState":Z
    :cond_3
    move v1, v2

    goto :goto_4

    .restart local v1    # "lockState":Z
    :cond_4
    iget v2, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    goto :goto_5

    .end local v1    # "lockState":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->dismissBusyDialog()V

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    const-string v2, "NBCallBarringOptions"

    const-string v3, "Call barring state error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setScreenEnable()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NBCallBarringOptions;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method private showCancelDialog()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonCancelAll:Lcom/android/phone/settings/fdn/EditPinPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/fdn/EditPinPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonCancelAll:Lcom/android/phone/settings/fdn/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b037e

    invoke-virtual {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/fdn/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonCancelAll:Lcom/android/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/fdn/EditPinPreference;->showPinDialog()V

    return-void
.end method

.method private showDialogSafely(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NBCallBarringOptions"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showPswDialog()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->getDialogMessage()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/fdn/EditPinPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/fdn/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/fdn/EditPinPreference;->showPinDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private syncUiWithState()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f080017

    invoke-virtual {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getSubIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSubId:I

    iget v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSubId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getPhoneId(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mPhoneId:I

    iget v2, p0, Lcom/android/phone/NBCallBarringOptions;->mPhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getPhoneFromPhoneId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "NBCallBarringOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call Barring Options, subscription="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/NBCallBarringOptions;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_outgoing_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "button_incoming_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "button_cancel_all_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/fdn/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonCancelAll:Lcom/android/phone/settings/fdn/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonCancelAll:Lcom/android/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/fdn/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/settings/fdn/EditPinPreference$OnPinEnteredListener;)V

    const-string v2, "button_change_psw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/fdn/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/fdn/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/settings/fdn/EditPinPreference$OnPinEnteredListener;)V

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->initFromBundle(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->onCreateDialog(I)Lcn/nubia/commonui/phone/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Lcn/nubia/commonui/phone/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->createProgressDialog(I)Lcn/nubia/commonui/phone/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x190

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallBarringOptions;->createAlertDialog(I)Lcn/nubia/commonui/phone/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToLastLevelSetting(Landroid/app/Activity;I)V

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToTopLevelSetting(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->setScreenEnable()V

    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPinEntered(Lcom/android/phone/settings/fdn/EditPinPreference;Z)V
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/settings/fdn/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/16 v1, 0x63

    if-nez p2, :cond_1

    iput v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    iput v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->resetDialogState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/phone/settings/fdn/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .local v0, "tmpPsw":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/phone/settings/fdn/EditPinPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonCancelAll:Lcom/android/phone/settings/fdn/EditPinPreference;

    if-ne p1, v1, :cond_4

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBCallBarringOptions;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->UnReasonablePSW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showCancelDialog()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->handleCancelAllCallBarring(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonChangePSW:Lcom/android/phone/settings/fdn/EditPinPreference;

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->changePassword(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .local v0, "newStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    invoke-direct {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->resetDialogState(I)V

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    :goto_0
    return v1

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/phone/NBCallBarringOptions;->resetDialogState(I)V

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->showPswDialog()V

    goto :goto_0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->setScreenEnable()V

    iget-boolean v0, p0, Lcom/android/phone/NBCallBarringOptions;->mCBDataStale:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBCallBarringOptions;->handleQueryAllCBOptions()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "NBCallBarringOptions"

    const-string v1, "onResume: airplane mode on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallBarringOptions;->showDialogSafely(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBCallBarringOptions;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonOutgoing:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mButtonIncoming:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "NBCallBarringOptions"

    const-string v1, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "button_outgoing_key"

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mOutgoingState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "button_incoming_key"

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIncomingState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SETOUTGOING_KEY"

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSetOutgoing:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SETINCOMING_KEY"

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mSetIncoming:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DIALOGSTATE_KEY"

    iget v1, p0, Lcom/android/phone/NBCallBarringOptions;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CBDATASTALE_KEY"

    iget-boolean v1, p0, Lcom/android/phone/NBCallBarringOptions;->mCBDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ISBUSYDIALOGAVAILABLE_KEY"

    iget-boolean v1, p0, Lcom/android/phone/NBCallBarringOptions;->mIsBusyDialogAvailable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PASSWORD_KEY"

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NEW_PSW_KEY"

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mNewPsw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ERROR_KEY"

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
