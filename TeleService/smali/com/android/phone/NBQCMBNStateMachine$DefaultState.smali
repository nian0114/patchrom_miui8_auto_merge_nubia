.class Lcom/android/phone/NBQCMBNStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "NBQCMBNStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCMBNStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/phone/NBQCMBNStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBQCMBNStateMachine;
    .param p2, "x1"    # Lcom/android/phone/NBQCMBNStateMachine$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;-><init>(Lcom/android/phone/NBQCMBNStateMachine;)V

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
    const/4 v0, 0x0

    .local v0, "handled":Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v1, v0

    .end local v0    # "handled":Z
    .local v1, "handled":I
    :goto_1
    return v1

    .end local v1    # "handled":I
    .restart local v0    # "handled":Z
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .restart local v1    # "handled":I
    goto :goto_1

    .end local v1    # "handled":I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    iget-object v3, p0, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    # getter for: Lcom/android/phone/NBQCMBNStateMachine;->mDeactiveState:Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;
    invoke-static {v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$000(Lcom/android/phone/NBQCMBNStateMachine;)Lcom/android/phone/NBQCMBNStateMachine$DeactiveState;

    move-result-object v3

    # invokes: Lcom/android/phone/NBQCMBNStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/phone/NBQCMBNStateMachine;->access$100(Lcom/android/phone/NBQCMBNStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v2, p0, Lcom/android/phone/NBQCMBNStateMachine$DefaultState;->this$0:Lcom/android/phone/NBQCMBNStateMachine;

    const v3, 0x8001

    iget v4, p1, Landroid/os/Message;->arg1:I

    const v5, 0x8000

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/phone/NBQCMBNStateMachine;->sendMessage(IIILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8000
        :pswitch_0
    .end packed-switch
.end method
