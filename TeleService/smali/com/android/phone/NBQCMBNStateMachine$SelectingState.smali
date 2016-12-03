.class Lcom/android/phone/NBQCMBNStateMachine$SelectingState;
.super Lcom/android/internal/util/State;
.source "NBQCMBNStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCMBNStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p2, "x1"    # Lcom/android/phone/NBQCMBNStateMachine$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;)V

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
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .local v1, "handled":Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, "config":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/phone/NBQCMBNStateMachine;->mActiveSubMask:I
    invoke-static {v2, v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$602(Lcom/android/phone/NBQCMBNStateMachine;I)I

    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    # getter for: Lcom/android/phone/NBQCMBNStateMachine;->mActiveSubMask:I
    invoke-static {v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$600(Lcom/android/phone/NBQCMBNStateMachine;)I

    move-result v3

    # invokes: Lcom/android/phone/NBQCMBNStateMachine;->selectMbnConfig(Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$700(Lcom/android/phone/NBQCMBNStateMachine;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    # getter for: Lcom/android/phone/NBQCMBNStateMachine;->mSelectedState:Lcom/android/phone/NBQCMBNStateMachine$SelectedState;
    invoke-static {v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$800(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$SelectedState;

    move-result-object v3

    # invokes: Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$900(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    # getter for: Lcom/android/phone/NBQCMBNStateMachine;->mRetryState:Lcom/android/phone/NBQCMBNStateMachine$RetryState;
    invoke-static {v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$1000(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$RetryState;

    move-result-object v3

    # invokes: Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$1100(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$SelectingState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    const v3, 0x8004

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/phone/NBQCMBNStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8002
        :pswitch_0
    .end packed-switch
.end method
