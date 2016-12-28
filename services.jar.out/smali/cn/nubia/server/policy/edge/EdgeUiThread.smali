.class public Lcn/nubia/server/policy/edge/EdgeUiThread;
.super Landroid/os/HandlerThread;
.source "EdgeUiThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcn/nubia/server/policy/edge/EdgeUiThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v0, "edge.ui"

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .prologue
    sget-object v0, Lcn/nubia/server/policy/edge/EdgeUiThread;->sInstance:Lcn/nubia/server/policy/edge/EdgeUiThread;

    if-nez v0, :cond_0

    new-instance v0, Lcn/nubia/server/policy/edge/EdgeUiThread;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/EdgeUiThread;-><init>()V

    sput-object v0, Lcn/nubia/server/policy/edge/EdgeUiThread;->sInstance:Lcn/nubia/server/policy/edge/EdgeUiThread;

    sget-object v0, Lcn/nubia/server/policy/edge/EdgeUiThread;->sInstance:Lcn/nubia/server/policy/edge/EdgeUiThread;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/EdgeUiThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/nubia/server/policy/edge/EdgeUiThread;->sInstance:Lcn/nubia/server/policy/edge/EdgeUiThread;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/EdgeUiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/server/policy/edge/EdgeUiThread;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Lcn/nubia/server/policy/edge/EdgeUiThread;
    .locals 2

    .prologue
    const-class v1, Lcn/nubia/server/policy/edge/EdgeUiThread;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/nubia/server/policy/edge/EdgeUiThread;->ensureThreadLocked()V

    sget-object v0, Lcn/nubia/server/policy/edge/EdgeUiThread;->sInstance:Lcn/nubia/server/policy/edge/EdgeUiThread;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    const-class v1, Lcn/nubia/server/policy/edge/EdgeUiThread;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/nubia/server/policy/edge/EdgeUiThread;->ensureThreadLocked()V

    sget-object v0, Lcn/nubia/server/policy/edge/EdgeUiThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
