.class Lcn/nubia/server/policy/SmartFaceManager$3;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;


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
    iput-object p1, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSmartFace()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->onStop()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$1000(Lcn/nubia/server/policy/SmartFaceManager;)V

    return-void
.end method

.method public dismissSmartFaceScreen()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$700(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyScreentOn()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$700(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setEverSmartFaceNearFlag()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleSetFlag()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$800(Lcn/nubia/server/policy/SmartFaceManager;)V

    return-void
.end method

.method public setNeedTurnOffScreen(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->setNeedTurnOffScreen(Z)V
    invoke-static {v0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;Z)V

    return-void
.end method

.method public showSmartFaceLatticeScreen()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$700(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showSmartFaceScreen()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$700(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateRotation(Z)V
    .locals 2
    .param p1, "oriention"    # Z

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$700(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
