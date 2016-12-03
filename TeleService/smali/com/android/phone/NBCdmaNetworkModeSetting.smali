.class public Lcom/android/phone/NBCdmaNetworkModeSetting;
.super Landroid/app/Activity;
.source "NBCdmaNetworkModeSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBCdmaNetworkModeSetting$MyPositiveButtonOnClickListener;,
        Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mpDialogDisableData:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCdmaNetworkModeSetting$1;-><init>(Lcom/android/phone/NBCdmaNetworkModeSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NBCdmaNetworkModeSetting;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->handleSetEvdoType(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NBCdmaNetworkModeSetting;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->handleGetEvdoType(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NBCdmaNetworkModeSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NBCdmaNetworkModeSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->showProgressDialog()V

    return-void
.end method

.method private handleGetEvdoType(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "resultValue":I
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    new-instance v1, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v1, "builder":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    const v3, 0x7f0b0365

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v3, 0x7f0a0043

    add-int/lit8 v4, v2, -0x1

    new-instance v5, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;

    invoke-direct {v5, p0, v6}, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;-><init>(Lcom/android/phone/NBCdmaNetworkModeSetting;Lcom/android/phone/NBCdmaNetworkModeSetting$1;)V

    invoke-virtual {v1, v3, v4, v5}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v3, 0x7f0b008f

    new-instance v4, Lcom/android/phone/NBCdmaNetworkModeSetting$MyPositiveButtonOnClickListener;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/NBCdmaNetworkModeSetting$MyPositiveButtonOnClickListener;-><init>(Lcom/android/phone/NBCdmaNetworkModeSetting;Lcom/android/phone/NBCdmaNetworkModeSetting$1;)V

    invoke-virtual {v1, v3, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/phone/app/AlertDialog;->show()V

    goto :goto_0

    .end local v1    # "builder":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private handleSetEvdoType(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0367

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0366

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/NBCdmaNetworkModeSetting;->requestWindowFeature(I)Z

    const v1, 0x7f040034

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->setContentView(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/RIL;

    .local v0, "cm":Lcom/android/internal/telephony/RIL;
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->getCommonData(ILandroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->showProgressDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
