.class Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;
.super Ljava/lang/Object;
.source "SchPwrWakeLock.java"


# static fields
.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string v1, "SchPwrWakeLock"

    const-string v2, "Acquiring screen on and cpu wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v1, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 24
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "SchPwrOnOff"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    sget-object v1, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 30
    const/4 v1, 0x1

    const-string v2, "ShutdownActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    sget-object v1, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 32
    sget-object v1, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static isScreenOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 50
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method static releaseCpuWakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    sget-object v0, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "SchPwrWakeLock"

    const-string v1, "Releasing screen on wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 39
    sput-object v2, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "SchPwrWakeLock"

    const-string v1, "Releasing cpu wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 44
    sput-object v2, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    :cond_1
    return-void
.end method
