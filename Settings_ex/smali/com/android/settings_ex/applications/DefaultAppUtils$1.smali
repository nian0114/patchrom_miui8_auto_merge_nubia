.class final Lcom/android/settings_ex/applications/DefaultAppUtils$1;
.super Ljava/lang/Object;
.source "DefaultAppUtils.java"

# interfaces
.implements Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterrupt()V
    .locals 4

    .prologue
    .line 89
    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils;->sThreadLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils;->mCallBack:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$500()Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;-><init>(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    # setter for: Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$402(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    .line 91
    const-string v0, "DefaultAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start new thread in onInterrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$400()Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$400()Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$400()Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->start()V

    .line 95
    :cond_0
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
