.class public Lcom/android/phone/NBQCMBNController;
.super Ljava/lang/Object;
.source "NBQCMBNController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;,
        Lcom/android/phone/NBQCMBNController$DealHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/NBQCMBNController;


# instance fields
.field private final AUTO_SELECT_DELAY:I

.field private final INTENT_SELECT_DONE:Ljava/lang/String;

.field public final INTENT_SERIVCE_READY:Ljava/lang/String;

.field public final MBN_CSFB:Ljava/lang/String;

.field public final MBN_SRLTE:Ljava/lang/String;

.field private final RETRY_MAX:I

.field private final SUB_ONE:I

.field private final SUB_TWO:I

.field private mActiveMbns:[Ljava/lang/String;

.field private mAlreadyUpdateMBN:Z

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mConfigIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

.field private mFailOver:Z

.field private mGetMBNRetryTimes:I

.field private mMBNConfigIdUpdateRegistrants:Landroid/os/RegistrantList;

.field private mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "qualcomm.intent.action.QCRIL_SERVICE_READY"

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->INTENT_SERIVCE_READY:Ljava/lang/String;

    const-string v3, "Commercial-SRLTE-DSDS-CT"

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->MBN_SRLTE:Ljava/lang/String;

    const-string v3, "Default-CSFB"

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->MBN_CSFB:Ljava/lang/String;

    const-string v3, "qualcomm.intent.action.ACTION_PDC_DATA_SELECT_CONFIGS_RECEIVED"

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->INTENT_SELECT_DONE:Ljava/lang/String;

    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/phone/NBQCMBNController;->AUTO_SELECT_DELAY:I

    iput v7, p0, Lcom/android/phone/NBQCMBNController;->RETRY_MAX:I

    iput v4, p0, Lcom/android/phone/NBQCMBNController;->SUB_ONE:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/phone/NBQCMBNController;->SUB_TWO:I

    iput-boolean v4, p0, Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z

    iput-boolean v4, p0, Lcom/android/phone/NBQCMBNController;->mFailOver:Z

    new-instance v3, Lcom/android/phone/NBQCMBNController$1;

    invoke-direct {v3, p0}, Lcom/android/phone/NBQCMBNController$1;-><init>(Lcom/android/phone/NBQCMBNController;)V

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    new-instance v3, Lcom/android/phone/NBQCMBNController$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NBQCMBNController$2;-><init>(Lcom/android/phone/NBQCMBNController;)V

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "deal"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/phone/NBQCMBNController$DealHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/phone/NBQCMBNController$DealHandler;-><init>(Lcom/android/phone/NBQCMBNController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/NBQCMBNController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v3, v4, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    new-instance v3, Lcom/android/phone/NBQCMBNStateMachine;

    const-string v4, "MBNState"

    iget-object v5, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    iget-object v6, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/NBQCMBNStateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v3}, Lcom/android/phone/NBQCMBNStateMachine;->start()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mConfigIdMap:Ljava/util/HashMap;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/phone/NBQCMBNController;->mMBNConfigIdUpdateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    iput v7, p0, Lcom/android/phone/NBQCMBNController;->mGetMBNRetryTimes:I

    const-string v3, "qualcomm.intent.action.ACTION_PDC_DATA_SELECT_CONFIGS_RECEIVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.phone.action.SET.NETWORK.AUTOMATIC"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v5, 0x6

    invoke-interface {v3, v4, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBQCMBNController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NBQCMBNController;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NBQCMBNController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBQCMBNController;->handlerSetAutomatic()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/NBQCMBNController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNController;->handlerRTChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/NBQCMBNController;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBQCMBNController;->getAvailableConfigs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/NBQCMBNController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNController;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/NBQCMBNController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mConfigIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/NBQCMBNController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBQCMBNController;->notifyMBNConfigIdUpdated()V

    return-void
.end method

.method static synthetic access$1610(Lcom/android/phone/NBQCMBNController;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    iget v0, p0, Lcom/android/phone/NBQCMBNController;->mGetMBNRetryTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/NBQCMBNController;->mGetMBNRetryTimes:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/NBQCMBNController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/NBQCMBNController;->mFailOver:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/NBQCMBNController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/NBQCMBNController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NBQCMBNController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNController;->handlerAutoSelectDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NBQCMBNController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNController;->setNetworkSelectionModeAutomatic(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NBQCMBNController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBQCMBNController;->activateMbnCodeAuto(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/phone/NBQCMBNController;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/NBQCMBNController;)Lcom/android/phone/NBQCMBNStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NBQCMBNController;)Lcom/android/phone/NBQCMBNController$DealHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NBQCMBNController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNController;->handlerSelectMbnDone(Landroid/content/Intent;)V

    return-void
.end method

.method private activateMbnCodeAuto(Ljava/lang/String;I)V
    .locals 6
    .param p1, "needed"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "info":Ljava/lang/String;
    const-string v3, "srlte"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "Commercial-SRLTE-DSDS-CT"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCMBNController;->getConfigIDByInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configID":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2, v5}, Lcom/android/phone/NBQCMBNController;->activeModemConfig(Ljava/lang/String;IZ)V

    :goto_1
    return-void

    .end local v0    # "configID":Ljava/lang/String;
    :cond_0
    const-string v1, "Default-CSFB"

    goto :goto_0

    .restart local v0    # "configID":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p2, v5, p1}, Lcom/android/phone/NBQCMBNController$DealHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/phone/NBQCMBNController$DealHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private activeByReboot(Ljava/lang/String;I)V
    .locals 2
    .param p1, "needMbn"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBQCMBNController;->activateMbnCodeAuto(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->deactiveModemConfig(I)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/NBQCMBNController$DealHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private activeBySSR()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    array-length v3, v4

    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "NBQCMBNController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acitve mbn info sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/android/phone/NBQCMBNController;->queryConfigId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configID":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v4}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x8000

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v4}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .end local v0    # "configID":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getAvailableConfigs()[Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetAvailableConfigs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfigInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string v1, "NBQCMBNController"

    const-string v2, "configID is null, getConfigInfo failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetMetaInfoForConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    goto :goto_0
.end method

.method private getErro(Landroid/content/Intent;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "active"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, "result":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .local v1, "err":I
    return v1
.end method

.method public static getInstance()Lcom/android/phone/NBQCMBNController;
    .locals 3

    .prologue
    const-class v1, Lcom/android/phone/NBQCMBNController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBQCMBNController;->sInstance:Lcom/android/phone/NBQCMBNController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "NBQCMBNController was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/phone/NBQCMBNController;->sInstance:Lcom/android/phone/NBQCMBNController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private handlerAutoSelectDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "slotId":I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    const-string v2, "NBQCMBNController"

    const-string v3, "automatic network selection: failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/NBQCMBNController$DealHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/NBQCMBNController$DealHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "NBQCMBNController"

    const-string v3, "automatic network selection: succeeded!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlerRTChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v4, "phone"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "phoneId":I
    const-string v4, "phoneName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "phoneName":Ljava/lang/String;
    const-string v4, "NBQCMBNController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlerRTChanged phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v4

    if-ne v2, v4, :cond_0

    const-string v4, "CDMA"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/16 v5, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/NBQCMBNController$DealHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "onCompleted":Landroid/os/Message;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .end local v0    # "onCompleted":Landroid/os/Message;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method private handlerSelectMbnDone(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const v4, 0x8003

    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNController;->getErro(Landroid/content/Intent;)I

    move-result v0

    .local v0, "err":I
    const-string v1, "NBQCMBNController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->isEmpty([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/android/phone/NBQCMBNController;->activeBySSR()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/NBQCMBNController$DealHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private handlerSetAutomatic()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    .local v0, "primarySlot":I
    invoke-direct {p0, v0}, Lcom/android/phone/NBQCMBNController;->setNetworkSelectionModeAutomatic(I)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/phone/NBQCMBNController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBQCMBNController;->sInstance:Lcom/android/phone/NBQCMBNController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBQCMBNController;

    invoke-direct {v0, p0}, Lcom/android/phone/NBQCMBNController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NBQCMBNController;->sInstance:Lcom/android/phone/NBQCMBNController;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyMBNConfigIdUpdated()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mMBNConfigIdUpdateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private queryConfigId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mConfigIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/NBQCMBNController$DealHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public activeModemConfig(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I
    .param p3, "isManual"    # Z

    .prologue
    if-nez p1, :cond_0

    const-string v1, "NBQCMBNController"

    const-string v2, "configID is null, activeModemConfig failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getActiveMbnInfo()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBQCMBNController;->getActiveModemConfig()Ljava/lang/String;

    move-result-object v0

    .local v0, "configID":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/NBQCMBNController;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "configInfo":Ljava/lang/String;
    const-string v2, "NBQCMBNController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMbnInfo configID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "configInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getActiveMbnInfo(I)Ljava/lang/String;
    .locals 5
    .param p1, "sub"    # I

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "configID":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/NBQCMBNController;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "configInfo":Ljava/lang/String;
    const-string v2, "NBQCMBNController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMbnInfo sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", configID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", configInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getActiveModemConfig()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "config1":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "config2":Ljava/lang/String;
    const-string v2, "NBQCMBNController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .end local v0    # "config1":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "config1":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getConfigIDByInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBQCMBNController;->getAvailableConfigs()[Ljava/lang/String;

    move-result-object v2

    .local v2, "configs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "mbn":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "config":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/NBQCMBNController;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "standard":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "standard":Ljava/lang/String;
    :cond_0
    return-object v5

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "config":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "standard":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isFailOverMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBQCMBNController;->mFailOver:Z

    return v0
.end method

.method public isMBNConfigIdUpdated()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z

    return v0
.end method

.method public isQcRilHookReady()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->QcRilHookServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reBind(Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .prologue
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/phone/NBQCMBNController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    :cond_0
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine;

    const-string v1, "MBNState"

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/NBQCMBNStateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-virtual {v0}, Lcom/android/phone/NBQCMBNStateMachine;->start()V

    return-void
.end method

.method public reboot()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/NBQCMBNController$DealHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public registerMBNConfigIdUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/phone/NBQCMBNController;->mMBNConfigIdUpdateRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mMBNConfigIdUpdateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-boolean v1, p0, Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public selectMBNByReboot(Ljava/lang/String;I)V
    .locals 4
    .param p1, "needMbn"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    const-string v1, "sys.shutdown.requested"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "isShutDownInProgress":Ljava/lang/String;
    const-string v1, "NBQCMBNController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needMbn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subMask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isShutDownInProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBQCMBNController;->activeByReboot(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public selectMBNBySSR([Ljava/lang/String;)V
    .locals 4
    .param p1, "mbns"    # [Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "NBQCMBNController"

    const-string v2, "active mbn is in progress, ignore it!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    const-string v1, "sys.shutdown.requested"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "isShutDownInProgress":Ljava/lang/String;
    const-string v1, "NBQCMBNController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveMbns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isShutDownInProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBQCMBNController;->activeBySSR()V

    goto :goto_0
.end method

.method public unregisterMBNConfigIdUpdated(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBQCMBNController;->mMBNConfigIdUpdateRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController;->mMBNConfigIdUpdateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
