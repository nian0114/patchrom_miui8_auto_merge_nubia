.class public interface abstract Lcom/android/server/am/IAmSmartShowFuncs;
.super Ljava/lang/Object;
.source "IAmSmartShowFuncs.java"


# virtual methods
.method public abstract activityStateChangedLocked(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract appCrashedLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract computeStackFocusLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActiveServices;
.end method

.method public abstract getConfigurationLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;
.end method

.method public abstract getConfigurationLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;
.end method

.method public abstract getConfigurationLocked(Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;
.end method

.method public abstract getProcessRecordLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/am/ProcessRecord;
.end method

.method public abstract getStackLocked(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getStackSupervisor(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;
.end method

.method public abstract initActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract interceptResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isFloatingStack(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract isFrontStackLocked(Lcom/android/server/am/ActivityStack;)I
.end method

.method public abstract moveHomeStackLocked(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract removeStackLocked(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract resumeHomeActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)I
.end method

.method public abstract resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;Z)Z
.end method

.method public abstract shouldAddToRecentLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract shouldChangeFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract shouldEnterIntoStoppingLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract shouldForceStopPackageLocked(Ljava/lang/String;I)Z
.end method

.method public abstract shouldMoveHomeStackLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract shouldRemoveTaskLocked(Lcom/android/server/am/TaskRecord;Z)Z
.end method

.method public abstract shouldUpdateConfigurationLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
.end method

.method public abstract stackCreated(II)V
.end method

.method public abstract stackRemoved(II)V
.end method

.method public abstract startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
.end method

.method public abstract startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
.end method

.method public abstract startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
.end method

.method public abstract startFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract stopFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract tryReuseTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I
.end method

.method public abstract updateConfigurationFromEnsureConfigurationLocked(Lcom/android/server/am/ActivityRecord;)Landroid/content/res/Configuration;
.end method

.method public abstract updateConfigurationFromRealStartActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract updateConfigurationFromResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)I
.end method

.method public abstract updateConfigurationFromSetRequestedOrientationLocked(Lcom/android/server/am/ActivityRecord;I)Z
.end method

.method public abstract updateConfigurationLocked(Landroid/content/res/Configuration;I)V
.end method

.method public abstract withoutActivityController()Z
.end method

.method public abstract withoutAppEvent()Z
.end method

.method public abstract withoutMultiWindow()Z
.end method

.method public abstract withoutSmartConfiguration()Z
.end method

.method public abstract withoutSmartData()Z
.end method
