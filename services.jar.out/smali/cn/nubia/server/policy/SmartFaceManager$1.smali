.class Lcn/nubia/server/policy/SmartFaceManager$1;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/SmartFaceManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleShow()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$000(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleShowLattice()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$100(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleDismiss()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$200(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleNotifyScreenOn()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$300(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    const/4 v1, 0x1

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleUpdateRotation(Z)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/SmartFaceManager;->access$400(Lcn/nubia/server/policy/SmartFaceManager;Z)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleTurnOffScreen()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$500(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
