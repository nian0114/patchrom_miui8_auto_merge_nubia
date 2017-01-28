.class public Lcom/android/server/am/AmSmartShowFuncsWrapper;
.super Ljava/lang/Object;
.source "AmSmartShowFuncsWrapper.java"

# interfaces
.implements Lcom/android/server/am/IAmSmartShowFuncs;


# instance fields
.field final mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field public mWithoutActivityController:Z

.field public mWithoutAppEvent:Z

.field public mWithoutMultiWindow:Z

.field public mWithoutSmartConfiguration:Z

.field public mWithoutSmartData:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/IAmSmartShowFuncs;)V
    .locals 1
    .param p1, "funcs"    # Lcom/android/server/am/IAmSmartShowFuncs;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutAppEvent:Z

    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartConfiguration:Z

    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutActivityController:Z

    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartData:Z

    iput-object p1, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    return-void
.end method


# virtual methods
.method public activityStateChangedLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutAppEvent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->activityStateChangedLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public appCrashedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->appCrashedLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public computeStackFocusLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->computeStackFocusLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0
.end method

.method public createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ar"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActiveServices;
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getConfigurationLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigurationLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->getConfigurationLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigurationLocked(Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getConfigurationLocked(Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getProcessRecordLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/IAmSmartShowFuncs;->getProcessRecordLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method public getStackLocked(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->getStackLocked(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackSupervisor(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getStackSupervisor(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->initActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public interceptResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->interceptResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFloatingStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->isFloatingStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFrontStackLocked(Lcom/android/server/am/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->isFrontStackLocked(Lcom/android/server/am/ActivityStack;)I

    move-result v0

    goto :goto_0
.end method

.method public moveHomeStackLocked(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "reasonStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IAmSmartShowFuncs;->moveHomeStackLocked(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method public removeStackLocked(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->removeStackLocked(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public resumeHomeActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->resumeHomeActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "userLeaving"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldAddToRecentLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldAddToRecentLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldChangeFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldChangeFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldEnterIntoStoppingLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldEnterIntoStoppingLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldForceStopPackageLocked(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldForceStopPackageLocked(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldMoveHomeStackLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldMoveHomeStackLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    return v0
.end method

.method public shouldRemoveTaskLocked(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 1
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldRemoveTaskLocked(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldUpdateConfigurationLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldUpdateConfigurationLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    goto :goto_0
.end method

.method public stackCreated(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "stackId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->stackCreated(II)V

    :cond_0
    return-void
.end method

.method public stackRemoved(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "stackId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->stackRemoved(II)V

    :cond_0
    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutActivityController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/server/am/IAmSmartShowFuncs;->startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    goto :goto_0
.end method

.method public startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;
    .param p11, "startFlags"    # I
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "componentSpecified"    # Z
    .param p14, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutActivityController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    invoke-interface/range {v0 .. v14}, Lcom/android/server/am/IAmSmartShowFuncs;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p11, "config"    # Landroid/content/res/Configuration;
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutActivityController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    invoke-interface/range {v0 .. v13}, Lcom/android/server/am/IAmSmartShowFuncs;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    goto :goto_0
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->startFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public stopFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->stopFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public tryReuseTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "toBeReused"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toBeStarted"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IAmSmartShowFuncs;->tryReuseTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationFromEnsureConfigurationLocked(Lcom/android/server/am/ActivityRecord;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromEnsureConfigurationLocked(Lcom/android/server/am/ActivityRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public updateConfigurationFromRealStartActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromRealStartActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationFromResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationFromSetRequestedOrientationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "requestedOrientation"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromSetRequestedOrientationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationLocked(Landroid/content/res/Configuration;I)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationLocked(Landroid/content/res/Configuration;I)V

    :cond_1
    return-void
.end method

.method public withoutActivityController()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutActivityController:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutActivityController()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutAppEvent()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutAppEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutAppEvent()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutMultiWindow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutMultiWindow()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutSmartConfiguration()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartConfiguration:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutSmartConfiguration()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutSmartData()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartData:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutSmartData()Z

    move-result v0

    goto :goto_0
.end method
