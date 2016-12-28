.class final Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;
.super Lnubia/os/IApplicationManager$Stub;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ApplicationManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Lnubia/os/IApplicationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "serviceClassName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationPushController;->allowApp3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowBackgroundSyncToRun()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/SyncController;->allowBackgroundSyncToRun()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppPartialWakelock(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppWakeupAlarm(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/MotionDozeController;->isControlledByMotionDoze(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkBlocked(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityStackRemoved(I)V
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "momo"

    const-string v1, "noteActivityStackRemoved"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteActivityStackRemoved(I)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteActivityStackRemoved(I)V

    :cond_1
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteAppTransitionAnimation(Z)V

    :cond_0
    return-void
.end method

.method public noteMagicBookAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteMagicBookAnimation(Z)V

    :cond_0
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "momo"

    const-string v1, "notePausingActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/CABCController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "momo"

    const-string v1, "noteRemovingProcess"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/MotionDozeController;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "momo"

    const-string v1, "noteResumedAppDie"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/CABCController;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "momo"

    const-string v1, "noteResumingActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/CABCController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "momo"

    const-string v1, "noteStartingProcess"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/MotionDozeController;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 1
    .param p1, "expanding"    # Z

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteStatusBarExpanding(Z)V

    :cond_0
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "momo"

    const-string v1, "noteStoppingActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
