.class Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;
.super Lcom/android/internal/util/State;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreLoopDownState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 471
    const-string v0, "FitActionStateMachine"

    const-string v1, "enter PreLoopDownState"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 476
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/edgegesture/EdgeGesture;

    .line 477
    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    const-string v2, "FitActionStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v4}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v2, "FitActionStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gesture : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 489
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 481
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handleLoopSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1200(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 484
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handleLoopSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1300(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
