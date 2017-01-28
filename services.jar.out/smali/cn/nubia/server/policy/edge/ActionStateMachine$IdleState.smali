.class Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    const-string v0, "FitActionStateMachine"

    const-string v1, "enter IdleState"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # getter for: Lcn/nubia/server/policy/edge/ActionStateMachine;->mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$300(Lcn/nubia/server/policy/edge/ActionStateMachine;)Lcn/nubia/server/policy/edge/OnActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/OnActionListener;->onEnterIdleState()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/edgegesture/EdgeGesture;

    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    const-string v2, "FitActionStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v4}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gesture : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->sysd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->isLauncherSlide()Z
    invoke-static {v2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$400(Lcn/nubia/server/policy/edge/ActionStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FitActionStateMachine"

    const-string v3, "Launcher is slide now!"

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->sysw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePreSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleSlide(Lcn/nubia/edgegesture/EdgeGesture;Z)V
    invoke-static {v2, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePress(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$700(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleClick(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1005 -> :sswitch_0
        0x1006 -> :sswitch_0
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x4002 -> :sswitch_2
        0x6001 -> :sswitch_3
    .end sparse-switch
.end method
