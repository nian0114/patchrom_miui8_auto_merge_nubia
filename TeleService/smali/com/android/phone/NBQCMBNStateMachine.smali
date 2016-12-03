.class public final Lcom/android/phone/NBQCMBNStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "NBQCMBNStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBQCMBNStateMachine$1;,
        Lcom/android/phone/NBQCMBNStateMachine$RetryState;,
        Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;,
        Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;,
        Lcom/android/phone/NBQCMBNStateMachine$SelectedState;,
        Lcom/android/phone/NBQCMBNStateMachine$SelectingState;,
        Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;,
        Lcom/android/phone/NBQCMBNStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mActivatedState:Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;

.field private mActivatingState:Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;

.field private mActiveSubMask:I

.field private mDeactiveState:Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;

.field private mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mRetryState:Lcom/android/phone/NBQCMBNStateMachine$RetryState;

.field private mSelectedState:Lcom/android/phone/NBQCMBNStateMachine$SelectedState;

.field private mSelectingState:Lcom/android/phone/NBQCMBNStateMachine$SelectingState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/NBQCMBNStateMachine;->sCmdToString:[Ljava/lang/String;

    sget-object v0, Lcom/android/phone/NBQCMBNStateMachine;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MSG_ACTIVE_CONFIG"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/phone/NBQCMBNStateMachine;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "MSG_DEACTIVE_CONFIG"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/phone/NBQCMBNStateMachine;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "MSG_SELECTING"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/phone/NBQCMBNStateMachine;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "MSG_SELECT_DONE"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/phone/NBQCMBNStateMachine;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "MSG_RETRY_SELECT"

    aput-object v2, v0, v1

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rilHook"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDeactiveState:Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mSelectingState:Lcom/android/phone/NBQCMBNStateMachine$SelectingState;

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mSelectedState:Lcom/android/phone/NBQCMBNStateMachine$SelectedState;

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActivatingState:Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActivatedState:Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;

    new-instance v0, Lcom/android/phone/NBQCMBNStateMachine$RetryState;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBQCMBNStateMachine$RetryState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mRetryState:Lcom/android/phone/NBQCMBNStateMachine$RetryState;

    iput-object p3, p0, Lcom/android/phone/NBQCMBNStateMachine;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBQCMBNStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDeactiveState:Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mSelectingState:Lcom/android/phone/NBQCMBNStateMachine$SelectingState;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mSelectedState:Lcom/android/phone/NBQCMBNStateMachine$SelectedState;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActivatingState:Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActivatedState:Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mRetryState:Lcom/android/phone/NBQCMBNStateMachine$RetryState;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBQCMBNStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDeactiveState:Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$RetryState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mRetryState:Lcom/android/phone/NBQCMBNStateMachine$RetryState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActivatingState:Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$DefaultState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActivatedState:Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/NBQCMBNStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->activateMbnConfig(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$SelectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mSelectingState:Lcom/android/phone/NBQCMBNStateMachine$SelectingState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NBQCMBNStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActiveSubMask:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/NBQCMBNStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/phone/NBQCMBNStateMachine;->mActiveSubMask:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/NBQCMBNStateMachine;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBQCMBNStateMachine;->selectMbnConfig(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$SelectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mSelectedState:Lcom/android/phone/NBQCMBNStateMachine$SelectedState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private activateMbnConfig(I)Z
    .locals 2
    .param p1, "subMask"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilActivateConfig(I)Z

    move-result v0

    return v0
.end method

.method private selectMbnConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSelectConfig(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deactiveModemConfig(I)V
    .locals 2
    .param p1, "subMask"    # I

    .prologue
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigsBySub(I)Z

    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigsBySub(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigsBySub(I)Z

    goto :goto_0
.end method

.method public recoverState()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBQCMBNStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method
