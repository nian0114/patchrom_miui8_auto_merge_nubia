.class public Lcn/nubia/server/policy/smartface/util/PowerCtrl;
.super Ljava/lang/Object;
.source "PowerCtrl.java"


# static fields
.field private static volatile sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;


# instance fields
.field private mPowerManager:Landroid/os/PowerManager;

.field private mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x10000006

    const-string v2, "show smartface"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/util/PowerCtrl;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    if-nez v0, :cond_1

    const-class v1, Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    if-nez v0, :cond_0

    new-instance v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public goToSleep()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const-class v1, Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public turnOnScreen()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method
