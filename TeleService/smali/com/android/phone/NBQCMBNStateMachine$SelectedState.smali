.class Lcom/android/phone/NBQCMBNStateMachine$SelectedState;
.super Lcom/android/internal/util/State;
.source "NBQCMBNStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCMBNStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p2, "x1"    # Lcom/android/phone/NBQCMBNStateMachine$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .local v0, "handled":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    # getter for: Lcom/android/phone/NBQCMBNStateMachine;->mActivatingState:Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;
    invoke-static {v2}, Lcom/android/phone/NBQCMBNStateMachine;->access$1300(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$ActivatingState;

    move-result-object v2

    # invokes: Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/phone/NBQCMBNStateMachine;->access$1400(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectedState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    # getter for: Lcom/android/phone/NBQCMBNStateMachine;->mDefaultState:Lcom/android/phone/NBQCMBNStateMachine$DefaultState;
    invoke-static {v2}, Lcom/android/phone/NBQCMBNStateMachine;->access$1500(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$DefaultState;

    move-result-object v2

    # invokes: Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/phone/NBQCMBNStateMachine;->access$1600(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8003
        :pswitch_0
    .end packed-switch
.end method
