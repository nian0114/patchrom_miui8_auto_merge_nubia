.class Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;
.super Lcom/android/internal/util/State;
.source "NBQCMBNStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCMBNStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p2, "x1"    # Lcom/android/phone/NBQCMBNStateMachine$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine$ActivatedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    # getter for: Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;
    invoke-static {v1}, Lcom/android/phone/NBQCMBNStateMachine;->access$1500(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    move-result-object v1

    # invokes: Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/phone/NBQCMBNStateMachine;->access$2300(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V

    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    return-void
.end method
