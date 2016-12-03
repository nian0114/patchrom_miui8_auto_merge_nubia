.class public Lcn/nubia/server/policy/edge/ActionStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final STATISTICS_SINGLETAP_FAIL:I = 0x0

.field private static final STATISTICS_SINGLETAP_SUC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FitActionStateMachine"


# instance fields
.field private mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

.field private mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mContext:Landroid/content/Context;

.field private mCurrentEdgeGesture:Lcn/nubia/edgegesture/EdgeGesture;

.field private final mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

.field private final mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private final mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

.field private final mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

.field private final mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

.field private final mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

.field private final mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

.field private final mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

.field private final mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

.field private final mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

.field private final mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

.field private final mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;Lcn/nubia/server/policy/edge/OnActionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settings"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p4, "listener"    # Lcn/nubia/server/policy/edge/OnActionListener;

    .prologue
    .line 55
    const-string v0, "FitActionStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 38
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    .line 39
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    .line 40
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    .line 41
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    .line 42
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    .line 43
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    .line 44
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    .line 45
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    .line 46
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    .line 47
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    .line 48
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    .line 49
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    .line 57
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    .line 58
    iput-object p4, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

    .line 59
    iput-object p3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 60
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 62
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 66
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 77
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->registerPhoneCallStateListener()V

    .line 78
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->registerGlobalActionForPowerKey()V

    .line 79
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->registerContentObserver()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendCancelMessageForInterrupt()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/ActionStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleSingleSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleSingleCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleLoopSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleLoopSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePrePressSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleInwardSlide(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/server/policy/edge/ActionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->insideSlide(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePressCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePrePressLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/policy/edge/ActionStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->singleTap(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/ActionStateMachine;)Lcn/nubia/server/policy/edge/OnActionListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/ActionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->isLauncherSlide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePreSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;
    .param p2, "x2"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleSlide(Lcn/nubia/edgegesture/EdgeGesture;Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePress(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleClick(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePreLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDoubleClick(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 225
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_double_click"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->isHomeApplicationAndFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 229
    :cond_0
    return-void
.end method

.method private handleDoubleSlide(Lcn/nubia/edgegesture/EdgeGesture;Z)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;
    .param p2, "fromIdle"    # Z

    .prologue
    .line 204
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v2, "nubia_edge_double_side_move"

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 208
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v1

    const/16 v2, 0x2001

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 209
    .local v0, "up":Z
    :goto_0
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "adjust_brightness_only"

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/server/policy/edge/StatisticsCollector;->doubleSideMove(Landroid/content/Context;ZLjava/lang/String;)V

    .line 212
    .end local v0    # "up":Z
    :cond_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDoubleSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 279
    return-void
.end method

.method private handleInwardSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 296
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_in_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 303
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 300
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0
.end method

.method private handleLoopSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 273
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 274
    return-void
.end method

.method private handleLoopSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 262
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 269
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 266
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0
.end method

.method private handlePreLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 235
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x3005

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handlePrePressLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 312
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 314
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x4006

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handlePrePressSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 283
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 286
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x4004

    if-ne v0, v1, :cond_2

    .line 287
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handlePreSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 190
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->takeScreenShot(Z)V

    .line 193
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 194
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x1005

    if-ne v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handlePress(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_in_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 219
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 221
    :cond_1
    return-void
.end method

.method private handlePressCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 307
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 308
    return-void
.end method

.method private handleSingleCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 257
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 258
    return-void
.end method

.method private handleSingleSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 245
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->updateGesture(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 247
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 252
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 253
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 250
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0
.end method

.method private insideSlide(Z)V
    .locals 3
    .param p1, "successful"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_in_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    .line 168
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/StatisticsCollector;->insideMove(Landroid/content/Context;)V

    .line 169
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleTap(Landroid/content/Context;I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleTap(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private isLauncherSlide()Z
    .locals 6

    .prologue
    .line 323
    const-string v2, "content://cn.nubia.launcher.settings/favorites"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 324
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "launcherFit"

    const-string v4, "isShow"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 325
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 326
    const-string v2, "isShow"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 328
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 184
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCurrentEdgeGesture:Lcn/nubia/edgegesture/EdgeGesture;

    .line 185
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/OnActionListener;->onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 186
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine$3;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;Landroid/os/Handler;)V

    .line 124
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    return-void
.end method

.method private registerGlobalActionForPowerKey()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/policy/edge/ActionStateMachine$2;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$2;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method private registerPhoneCallStateListener()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcn/nubia/server/policy/edge/ActionStateMachine$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$1;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 96
    return-void
.end method

.method private sendCancelMessageForInterrupt()V
    .locals 6

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCurrentEdgeGesture:Lcn/nubia/edgegesture/EdgeGesture;

    .line 131
    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 155
    :sswitch_0
    const-string v2, "FitActionStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/edgegesture/GestureAction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for interrupt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v2, 0x1003

    invoke-virtual {v0, v2}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 157
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 134
    :sswitch_1
    const-string v2, "FitActionStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/edgegesture/GestureAction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for interrupt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "content://cn.nubia.launcher.settings/favorites"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "launcherFit"

    const-string v4, "hide"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    .line 143
    .end local v1    # "uri":Landroid/net/Uri;
    :sswitch_2
    const-string v2, "FitActionStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/edgegesture/GestureAction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for interrupt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/16 v2, 0x4003

    invoke-virtual {v0, v2}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 145
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    :sswitch_3
    const-string v2, "FitActionStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/edgegesture/GestureAction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for interrupt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/16 v2, 0x3003

    invoke-virtual {v0, v2}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 151
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x1005 -> :sswitch_0
        0x1006 -> :sswitch_0
        0x3005 -> :sswitch_3
        0x3006 -> :sswitch_3
        0x4002 -> :sswitch_2
        0x4004 -> :sswitch_2
        0x4005 -> :sswitch_2
        0x4006 -> :sswitch_2
        0x4007 -> :sswitch_2
        0x5001 -> :sswitch_1
    .end sparse-switch
.end method

.method private singleTap(I)V
    .locals 2
    .param p1, "success"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleTap(Landroid/content/Context;I)V

    .line 181
    :cond_0
    return-void
.end method
