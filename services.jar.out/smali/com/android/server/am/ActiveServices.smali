.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;
    }
.end annotation


# static fields
.field static final BG_START_TIMEOUT:I = 0x3a98

.field private static final DEBUG_DELAYED_SERVICE:Z = false

.field private static final DEBUG_DELAYED_STARTS:Z = false

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static final LOG_SERVICE_START_STOP:Z = false

.field static final MAX_SERVICE_INACTIVITY:I = 0x1b7740

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field static final SERVICE_MIN_RESTART_TIME_BETWEEN:I = 0x2710

.field private static final SERVICE_RESCHEDULE:Z

.field static final SERVICE_RESET_RUN_DURATION:I = 0xea60

.field static final SERVICE_RESTART_DURATION:I = 0x3e8

.field static final SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastAnrDump:Ljava/lang/String;

.field final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field final mMaxStartingBackground:I

.field private mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "ro.am.reschedule_service"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 169
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 282
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "maxBg":I
    :try_start_0
    const-string v1, "ro.config.max_starting_bg"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 288
    :goto_0
    if-lez v0, :cond_0

    .end local v0    # "maxBg":I
    :goto_1
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 292
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    .line 294
    return-void

    .line 288
    .restart local v0    # "maxBg":I
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .prologue
    .line 1894
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1899
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1903
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_0
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 1912
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1913
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1914
    .local v0, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1915
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1918
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 1920
    :try_start_0
    iget-object v10, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1921
    :catch_0
    move-exception v3

    .line 1922
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure disconnecting service "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " to connection "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1912
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1930
    .end local v0    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_3

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_3

    .line 1931
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_3

    .line 1932
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    .line 1935
    .local v5, "ibr":Lcom/android/server/am/IntentBindRecord;
    iget-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v10, :cond_2

    .line 1937
    const/4 v10, 0x0

    :try_start_1
    const-string v11, "bring down unbind"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1938
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1939
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1940
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v11, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v10, p1, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1931
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1942
    :catch_1
    move-exception v3

    .line 1943
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when unbinding service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_4

    .line 1952
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 1958
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v10}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v7

    .line 1959
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1962
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 1965
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .restart local v4    # "i":I
    :goto_5
    if-ltz v4, :cond_5

    .line 1966
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, p1, :cond_4

    .line 1967
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1965
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 1972
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1973
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1974
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1975
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1978
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 1979
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1981
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_6

    .line 1982
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v11

    monitor-enter v11

    .line 1983
    :try_start_2
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 1984
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1985
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v10, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1986
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_6

    .line 1987
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1989
    const/4 v10, 0x0

    :try_start_3
    const-string v11, "destroy"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1990
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 1992
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1993
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2008
    :cond_6
    :goto_6
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 2009
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    .line 2012
    :cond_7
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v10, v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v10, :cond_8

    .line 2013
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 2016
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 2017
    .local v6, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2018
    .local v8, "now":J
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v10, :cond_9

    .line 2019
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2020
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 2021
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v10, :cond_9

    .line 2022
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 2023
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2027
    :cond_9
    invoke-virtual {v7, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    .line 2028
    return-void

    .line 1984
    .end local v6    # "memFactor":I
    .end local v8    # "now":J
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1994
    :catch_2
    move-exception v3

    .line 1995
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when destroying service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1997
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_6
.end method

.method private final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    .locals 15
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 1587
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 1588
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1589
    const/4 v14, 0x0

    .line 1699
    :goto_0
    return-object v14

    .line 1592
    :cond_0
    if-nez p4, :cond_1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 1594
    const/4 v14, 0x0

    goto :goto_0

    .line 1601
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1602
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1603
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1607
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_3

    .line 1609
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1610
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1615
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is stopped"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1620
    .local v14, "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_0

    .line 1627
    .end local v14    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/4 v10, 0x1

    .line 1636
    .local v10, "isolated":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1639
    .local v3, "procName":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 1640
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 1643
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v12, :cond_6

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_6

    .line 1645
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v12, v2, v4, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1646
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v12, v1}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1647
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1630
    .end local v3    # "procName":Ljava/lang/String;
    .end local v10    # "isolated":Z
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v13

    .line 1631
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1635
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 1648
    .restart local v3    # "procName":Ljava/lang/String;
    .restart local v10    # "isolated":Z
    .restart local v12    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_1
    move-exception v13

    .line 1649
    .local v13, "e":Landroid/os/TransactionTooLargeException;
    throw v13

    .line 1650
    .end local v13    # "e":Landroid/os/TransactionTooLargeException;
    :catch_2
    move-exception v13

    .line 1651
    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when starting service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1669
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_3
    if-nez v12, :cond_9

    .line 1670
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    const-string v7, "service"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    if-nez v12, :cond_8

    .line 1672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": process is bad"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1676
    .restart local v14    # "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_0

    .line 1664
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "msg":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .restart local v12    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_3

    .line 1680
    :cond_8
    if-eqz v10, :cond_9

    .line 1681
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1685
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1686
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    :cond_a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v2, :cond_b

    .line 1691
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1692
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_b

    .line 1695
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1699
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1629
    .end local v3    # "procName":Ljava/lang/String;
    .end local v10    # "isolated":Z
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1298
    .local v0, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v3, :cond_2

    .line 1299
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 1300
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v2

    .line 1301
    .local v2, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v2, :cond_0

    .line 1302
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-virtual {v2, v5, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 1304
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    .line 1305
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v4, p2

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 1307
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1308
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1315
    .end local v2    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 1316
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 1317
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 1318
    return-void

    .line 1311
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_1

    .line 1312
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 1313
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 1564
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v2, :cond_1

    .line 1567
    const/4 v1, 0x0

    .line 1568
    .local v1, "stillTracking":Z
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1569
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-ne v2, v3, :cond_2

    .line 1570
    const/4 v1, 0x1

    .line 1574
    :cond_0
    if-nez v1, :cond_1

    .line 1575
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    .line 1577
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1580
    .end local v0    # "i":I
    .end local v1    # "stillTracking":Z
    :cond_1
    return-void

    .line 1568
    .restart local v0    # "i":I
    .restart local v1    # "stillTracking":Z
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .param p5, "killProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 2322
    const/4 v0, 0x0

    .line 2323
    .local v0, "didSomething":Z
    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2324
    invoke-virtual {p6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 2325
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v2, v4

    .line 2329
    .local v2, "sameComponent":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    if-nez p3, :cond_1

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_7

    .line 2331
    :cond_1
    if-nez p4, :cond_4

    move v0, v4

    .line 2350
    .end local v0    # "didSomething":Z
    .end local v2    # "sameComponent":Z
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_2
    return v0

    .line 2325
    .restart local v0    # "didSomething":Z
    .restart local v3    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2334
    .restart local v2    # "sameComponent":Z
    :cond_4
    const/4 v0, 0x1

    .line 2335
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Force stopping service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    .line 2337
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean p5, v5, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2338
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_5

    .line 2339
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2342
    :cond_5
    iput-object v8, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2343
    iput-object v8, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2344
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 2345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 2347
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2323
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .prologue
    .line 3112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3113
    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3114
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "SERVICE "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3115
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3116
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3117
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3118
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3120
    :goto_0
    if-eqz p6, :cond_0

    .line 3121
    invoke-virtual {p4, p3, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3123
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3124
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    .line 3125
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Client:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 3128
    :try_start_1
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3130
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v3, v4, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 3131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v2, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3134
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3142
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_1
    :goto_1
    return-void

    .line 3119
    :cond_2
    :try_start_4
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3123
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 3134
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3136
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v0

    .line 3137
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Failure while dumping the service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3139
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .prologue
    .line 1143
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1144
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_0

    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 2
    .param p1, "callingUser"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 310
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    .line 312
    .restart local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    :cond_0
    return-object v0
.end method

.method private final isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1874
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_1

    .line 1886
    :cond_0
    :goto_0
    return v0

    .line 1879
    :cond_1
    if-nez p2, :cond_2

    .line 1880
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 1882
    :cond_2
    if-nez p3, :cond_0

    .line 1886
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1714
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 1715
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1720
    :cond_0
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1721
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 1723
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1724
    .local v9, "newService":Z
    const-string v0, "create"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1725
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1726
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1728
    const/4 v6, 0x0

    .line 1737
    .local v6, "created":Z
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1738
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 1739
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1740
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1741
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1742
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v5, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v0, p1, v1, v3, v5}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 1745
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1746
    const/4 v6, 0x1

    .line 1752
    if-nez v6, :cond_2

    .line 1754
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 1755
    .local v8, "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1758
    if-eqz v9, :cond_1

    .line 1759
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1760
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1761
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v0, :cond_1

    .line 1769
    :cond_1
    if-nez v8, :cond_2

    .line 1770
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 1775
    .end local v8    # "inDestroying":Z
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1777
    invoke-direct {p0, p2, v4, v11}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1782
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1783
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    :cond_3
    invoke-direct {p0, p1, p3, v11}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1789
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_4

    .line 1791
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1792
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1795
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_5

    .line 1797
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1798
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_5

    .line 1801
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1804
    :cond_5
    return-void

    .line 1739
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1747
    :catch_0
    move-exception v7

    .line 1748
    .local v7, "e":Landroid/os/DeadObjectException;
    :try_start_5
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application dead when creating service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1750
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1752
    .end local v7    # "e":Landroid/os/DeadObjectException;
    :catchall_1
    move-exception v0

    if-nez v6, :cond_7

    .line 1754
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 1755
    .restart local v8    # "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1758
    if-eqz v9, :cond_6

    .line 1759
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1760
    iput-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1761
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v1, :cond_6

    .line 1769
    :cond_6
    if-nez v8, :cond_7

    .line 1770
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 1772
    .end local v8    # "inDestroying":Z
    :cond_7
    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"    # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"    # Z
    .param p4, "rebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1322
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return v2

    .line 1326
    :cond_1
    iget-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-eqz v4, :cond_2

    if-eqz p4, :cond_4

    :cond_2
    iget-object v4, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1328
    :try_start_0
    const-string v4, "bind"

    invoke-direct {p0, p1, p3, v4}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1329
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1330
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v4, p1, v5, p4, v6}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 1332
    if-nez p4, :cond_3

    .line 1333
    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1335
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1336
    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    move v2, v3

    .line 1351
    goto :goto_0

    .line 1337
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1341
    .local v1, "inDestroying":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1342
    throw v0

    .line 1343
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v1    # "inDestroying":Z
    :catch_1
    move-exception v0

    .line 1346
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1347
    .restart local v1    # "inDestroying":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_0
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 1704
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1705
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 1706
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1710
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    return-void

    .line 1704
    .restart local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 27
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "createIfNeeded"    # Z
    .param p8, "callingFromFg"    # Z

    .prologue
    .line 1174
    const/16 v22, 0x0

    .line 1178
    .local v22, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "service"

    const/4 v10, 0x0

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p6

    .line 1181
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v25

    .line 1182
    .local v25, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 1183
    .local v18, "comp":Landroid/content/ComponentName;
    if-eqz v18, :cond_f

    .line 1184
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1186
    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    if-nez v3, :cond_0

    .line 1187
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1188
    .local v7, "filter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1190
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    if-nez v3, :cond_8

    .line 1192
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v9, 0x400

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-interface {v4, v0, v1, v9, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v23

    .line 1196
    .local v23, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v23, :cond_1

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1198
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v8, :cond_2

    .line 1199
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " U="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": not found"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v4, 0x0

    .line 1289
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    return-object v4

    .line 1196
    .restart local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1203
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .local v6, "name":Landroid/content/ComponentName;
    if-lez p6, :cond_4

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v9, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p5

    invoke-virtual {v4, v0, v9}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1209
    const/16 p6, 0x0

    .line 1210
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v25

    .line 1212
    :cond_3
    new-instance v24, Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 1214
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v24, "sInfo":Landroid/content/pm/ServiceInfo;
    sget-boolean v4, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v4, :cond_6

    .line 1215
    if-nez p6, :cond_7

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, v24

    .line 1224
    .end local v24    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_4
    :goto_3
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1225
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    if-nez v22, :cond_e

    if-eqz p7, :cond_e

    .line 1226
    :try_start_1
    new-instance v7, Landroid/content/Intent$FilterComparison;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1228
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    new-instance v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    .line 1229
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    const/4 v5, 0x0

    .line 1230
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v26

    .line 1231
    .local v26, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v26
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1232
    :try_start_2
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v9, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v5

    .line 1235
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1236
    :try_start_3
    new-instance v3, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 v9, p8

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1237
    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :try_start_4
    invoke-virtual {v10, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 1238
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v19, v4, -0x1

    .local v19, "i":I
    :goto_4
    if-ltz v19, :cond_8

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ServiceRecord;

    .line 1244
    .local v21, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v9, :cond_5

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1242
    :cond_5
    add-int/lit8 v19, v19, -0x1

    goto :goto_4

    .line 1220
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v19    # "i":I
    .end local v21    # "pr":Lcom/android/server/am/ServiceRecord;
    .end local v26    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v24    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    move-object/from16 v8, v24

    .local v8, "sInfo":Ljava/lang/Object;
    goto/16 :goto_3

    .line 1235
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "sInfo":Ljava/lang/Object;
    .end local v24    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v26    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1250
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v26    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catch_0
    move-exception v4

    move-object/from16 v3, v22

    .line 1254
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_8
    :goto_5
    if-eqz v3, :cond_d

    .line 1255
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v0, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v16, v0

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-eqz v4, :cond_a

    .line 1258
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v4, :cond_9

    .line 1259
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " that is not exported from uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not exported from uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1266
    :cond_9
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " requires "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1271
    :cond_a
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v4, :cond_b

    if-eqz p3, :cond_b

    .line 1272
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v20

    .line 1273
    .local v20, "opCode":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move/from16 v0, v20

    move/from16 v1, p5

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_b

    .line 1275
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Appop Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " requires appop "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1283
    .end local v20    # "opCode":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v13, p1

    move/from16 v14, p5

    move/from16 v15, p4

    move-object/from16 v16, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1285
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1287
    :cond_c
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1289
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1250
    :catch_1
    move-exception v4

    goto/16 :goto_5

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_e
    move-object/from16 v3, v22

    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_5

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_f
    move-object/from16 v3, v22

    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_0
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 26
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    .prologue
    .line 1356
    const/4 v5, 0x0

    .line 1358
    .local v5, "canceled":Z
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v19

    .line 1359
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1360
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 1361
    .local v6, "cur":Lcom/android/server/am/ServiceRecord;
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Attempting to schedule restart of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " when found in map: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/16 v20, 0x0

    .line 1497
    .end local v6    # "cur":Lcom/android/server/am/ServiceRecord;
    :goto_0
    return v20

    .line 1366
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1368
    .local v12, "now":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_12

    .line 1370
    const-wide/16 v10, 0x3e8

    .line 1371
    .local v10, "minDuration":J
    const-wide/32 v16, 0xea60

    .line 1375
    .local v16, "resetTime":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1376
    .local v4, "N":I
    if-lez v4, :cond_8

    .line 1377
    add-int/lit8 v7, v4, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_7

    .line 1378
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1379
    .local v18, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 1380
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1377
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1382
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 1384
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    move-wide/from16 v22, v0

    sub-long v8, v20, v22

    .line 1386
    .local v8, "dur":J
    const-wide/16 v20, 0x2

    mul-long v8, v8, v20

    .line 1387
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_4

    .line 1395
    :cond_4
    cmp-long v20, v10, v8

    if-gez v20, :cond_5

    move-wide v10, v8

    .line 1396
    :cond_5
    cmp-long v20, v16, v8

    if-gez v20, :cond_1

    move-wide/from16 v16, v8

    goto :goto_2

    .line 1398
    .end local v8    # "dur":J
    :cond_6
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Canceling start item "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1403
    .end local v18    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1406
    .end local v7    # "i":I
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1407
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_9

    .line 1414
    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_f

    .line 1415
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1416
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1434
    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    add-long v20, v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1435
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_b

    .line 1448
    :cond_b
    const/4 v15, 0x0

    .line 1449
    .local v15, "repeat":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v7, v20, -0x1

    .restart local v7    # "i":I
    :goto_4
    if-ltz v7, :cond_c

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 1451
    .local v14, "r2":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    if-eq v14, v0, :cond_11

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x2710

    sub-long v22, v22, v24

    cmp-long v20, v20, v22

    if-ltz v20, :cond_11

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x2710

    add-long v22, v22, v24

    cmp-long v20, v20, v22

    if-gez v20, :cond_11

    .line 1455
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x2710

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1456
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1457
    const/4 v15, 0x1

    .line 1461
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    :cond_c
    if-nez v15, :cond_b

    .line 1472
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 1473
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 1478
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1483
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Scheduling restart of crashed service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_e

    .line 1494
    :cond_e
    const/16 v20, 0x7553

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move/from16 v20, v5

    .line 1497
    goto/16 :goto_0

    .line 1423
    .restart local v4    # "N":I
    .restart local v10    # "minDuration":J
    .restart local v16    # "resetTime":J
    :cond_f
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v16

    cmp-long v20, v12, v20

    if-lez v20, :cond_10

    .line 1424
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1425
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_3

    .line 1427
    :cond_10
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x4

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1428
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v10

    if-gez v20, :cond_a

    .line 1429
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_3

    .line 1449
    .restart local v7    # "i":I
    .restart local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .restart local v15    # "repeat":Z
    :cond_11
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 1466
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1467
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1468
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1469
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto/16 :goto_5
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .param p3, "oomAdjusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 1808
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1809
    .local v6, "N":I
    if-nez v6, :cond_1

    .line 1870
    :cond_0
    return-void

    .line 1813
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1814
    const/4 v7, 0x0

    .line 1817
    .local v7, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1820
    .local v10, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    if-gt v6, v11, :cond_1

    .line 1827
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 1828
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    iget v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 1830
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v0, :cond_3

    .line 1831
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    .line 1834
    :cond_3
    const-string v0, "start"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1835
    if-nez p3, :cond_4

    .line 1836
    const/4 p3, 0x1

    .line 1837
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1839
    :cond_4
    const/4 v4, 0x0

    .line 1840
    .local v4, "flags":I
    iget v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v0, v11, :cond_5

    .line 1841
    or-int/lit8 v4, v4, 0x2

    .line 1843
    :cond_5
    iget v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v0, :cond_6

    .line 1844
    or-int/lit8 v4, v4, 0x1

    .line 1846
    :cond_6
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v2, v10, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v3, v10, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1860
    .end local v4    # "flags":I
    .end local v10    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :goto_0
    if-eqz v7, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1863
    .local v9, "inDestroying":Z
    invoke-direct {p0, p1, v9, v9}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1864
    instance-of v0, v7, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 1865
    check-cast v7, Landroid/os/TransactionTooLargeException;

    .end local v7    # "caughtException":Ljava/lang/Exception;
    throw v7

    .line 1847
    .end local v9    # "inDestroying":Z
    .restart local v7    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v8

    .line 1850
    .local v8, "e":Landroid/os/TransactionTooLargeException;
    move-object v7, v8

    .line 1858
    goto :goto_0

    .line 1851
    .end local v8    # "e":Landroid/os/TransactionTooLargeException;
    :catch_1
    move-exception v8

    .line 1854
    .local v8, "e":Landroid/os/RemoteException;
    move-object v7, v8

    .line 1858
    goto :goto_0

    .line 1855
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 1856
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    move-object v7, v8

    goto :goto_0
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"    # Z
    .param p3, "finishing"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2205
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2206
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v1, :cond_5

    .line 2207
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    .line 2210
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2211
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2212
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 2215
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2225
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2228
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2229
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2231
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 2233
    :cond_2
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2234
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v1, :cond_3

    .line 2235
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 2237
    if-eqz p3, :cond_3

    .line 2238
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, p1, v6}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 2239
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2242
    :cond_3
    if-eqz p3, :cond_5

    .line 2243
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_4

    .line 2244
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2246
    :cond_4
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2249
    :cond_5
    return-void

    .line 2216
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_0

    .line 2218
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 2219
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_7

    .line 2220
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    goto :goto_0

    .line 2218
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2188
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v1, :cond_0

    .line 2189
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 2190
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2191
    .local v2, "now":J
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 2192
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 2193
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2195
    .end local v0    # "memFactor":I
    .end local v2    # "now":J
    :cond_0
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2196
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 554
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 546
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 548
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 552
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 553
    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1546
    if-nez p3, :cond_0

    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1547
    const/4 v1, 0x0

    .line 1560
    :goto_0
    return v1

    .line 1552
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1553
    .local v0, "removed":Z
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_2

    .line 1554
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1556
    :cond_2
    if-eqz v0, :cond_3

    .line 1557
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1559
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1560
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .locals 9
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"    # Z

    .prologue
    const/4 v7, 0x0

    .line 737
    if-eqz p2, :cond_1

    iget-object v8, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_1

    .line 738
    iget-object v8, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v7

    .line 745
    :cond_1
    const/4 v0, 0x0

    .line 746
    .local v0, "anyClientActivities":Z
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_6

    if-nez v0, :cond_6

    .line 747
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 748
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "conni":I
    :goto_2
    if-ltz v2, :cond_5

    if-nez v0, :cond_5

    .line 749
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 750
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "cri":I
    :goto_3
    if-ltz v4, :cond_4

    .line 751
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 752
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_3

    .line 750
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 756
    :cond_3
    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 757
    const/4 v0, 0x1

    .line 748
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 746
    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "cri":I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 763
    .end local v2    # "conni":I
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_6
    iget-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-eq v0, v8, :cond_0

    .line 764
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    .line 765
    if-eqz p3, :cond_7

    .line 766
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v0, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 768
    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z

    .prologue
    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "anyForeground":Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 709
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 710
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_1

    .line 711
    const/4 v0, 0x1

    .line 715
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 716
    return-void

    .line 708
    .restart local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2253
    const/4 v1, 0x0

    .line 2255
    .local v1, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2256
    const/4 v4, 0x0

    .line 2258
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 2259
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    move-object v4, v0

    .line 2260
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_1

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2258
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2265
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2266
    add-int/lit8 v3, v3, -0x1

    .line 2267
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 2269
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 2270
    const/4 v1, 0x1

    .line 2271
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2276
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2279
    :catch_0
    move-exception v2

    .line 2280
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in new application when starting service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2282
    throw v2

    .line 2289
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 2291
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 2292
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 2293
    .restart local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_3

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2291
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2297
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2298
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2301
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    return v1
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 27
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 780
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v13, :cond_0

    .line 781
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when binding service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 787
    :cond_0
    const/4 v11, 0x0

    .line 788
    .local v11, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_1

    .line 789
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 790
    if-nez v11, :cond_1

    .line 791
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding with unknown activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v4, 0x0

    .line 1010
    :goto_0
    return v4

    .line 796
    :cond_1
    const/4 v15, 0x0

    .line 797
    .local v15, "clientLabel":I
    const/4 v14, 0x0

    .line 799
    .local v14, "clientIntent":Landroid/app/PendingIntent;
    const/16 v18, 0x0

    .line 800
    .local v18, "fromJobScheduler":Z
    const/16 v19, 0x0

    .line 801
    .local v19, "fromSyncManager":Z
    const/16 v26, 0x0

    .line 803
    .local v26, "syncReason":I
    :try_start_0
    const-string v4, "NUBIA_FROM_JOBSCHEDULER"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 805
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    .line 806
    .local v24, "serviceAction":Ljava/lang/String;
    if-eqz v24, :cond_4

    const-string v4, "android.content.SyncAdapter"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v19, 0x1

    .line 808
    :goto_1
    const-string v4, "NUBIA_SYNCMANAGER_REASON"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 814
    .end local v24    # "serviceAction":Ljava/lang/String;
    :goto_2
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    .line 819
    :try_start_1
    const-string v4, "android.intent.extra.client_intent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/PendingIntent;

    move-object v14, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 822
    :goto_3
    if-eqz v14, :cond_2

    .line 823
    const-string v4, "android.intent.extra.client_label"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 824
    if-eqz v15, :cond_2

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p3

    .line 833
    :cond_2
    const/high16 v4, 0x8000000

    and-int v4, v4, p6

    if-eqz v4, :cond_3

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v6, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_3
    iget v4, v13, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    .line 840
    .local v10, "callerFg":Z
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v22

    .line 843
    .local v22, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v22, :cond_6

    .line 844
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 806
    .end local v10    # "callerFg":Z
    .end local v22    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v24    # "serviceAction":Ljava/lang/String;
    :cond_4
    const/16 v19, 0x0

    goto :goto_1

    .line 809
    .end local v24    # "serviceAction":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 810
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 838
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 846
    .restart local v10    # "callerFg":Z
    .restart local v22    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_6
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v4, :cond_7

    .line 847
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 849
    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v23, v0

    .line 852
    .local v23, "s":Lcom/android/server/am/ServiceRecord;
    sget-boolean v4, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->ENABLE:Z

    if-eqz v4, :cond_9

    .line 853
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnubia/os/ApplicationManager$Trigger;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 855
    sget-boolean v4, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 856
    const-string v4, "ApplicationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevent a push service bind start, pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 866
    :cond_9
    if-eqz v23, :cond_c

    if-eqz v13, :cond_c

    .line 867
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target_pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target_process = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindService caller Pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callerApp.pkgList ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", service_name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_a

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v5, "cn.nubia."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_a

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_a

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 880
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forbid starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 884
    :cond_a
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_c

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_c

    .line 885
    if-eqz v18, :cond_b

    .line 886
    const-string v4, "ActivityManager"

    const-string v5, "from job scheduler"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    const-string v7, "JobScheduler"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 889
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromJobScheduler forbid starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 894
    :cond_b
    if-eqz v19, :cond_c

    const/16 v4, 0x3e8

    move/from16 v0, v26

    if-eq v0, v4, :cond_c

    .line 895
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from sync manager syncReason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    const-string v7, "SyncManager"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 898
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromSyncManager forbid starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 906
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 909
    .local v20, "origId":J
    :try_start_2
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 914
    :cond_d
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_e

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 916
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    if-nez v4, :cond_e

    .line 918
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v25

    .line 919
    .local v25, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v25, :cond_e

    .line 920
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 926
    .end local v25    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 929
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v3

    .line 930
    .local v3, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v2, Lcom/android/server/am/ConnectionRecord;

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v15

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    .line 933
    .local v2, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 934
    .local v12, "binder":Landroid/os/IBinder;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 935
    .local v16, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v16, :cond_f

    .line 936
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :cond_f
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 941
    if-eqz v11, :cond_11

    .line 942
    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-nez v4, :cond_10

    .line 943
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v11, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 945
    :cond_10
    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_11
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 948
    iget v4, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_12

    .line 949
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 951
    :cond_12
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_13

    .line 952
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 954
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v16, Ljava/util/ArrayList;

    .line 955
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v16, :cond_14

    .line 956
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_14
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_15

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v10, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_15

    .line 964
    const/4 v4, 0x0

    .line 1007
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 968
    :cond_15
    :try_start_3
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_18

    .line 969
    const/high16 v4, 0x8000000

    and-int v4, v4, p6

    if-eqz v4, :cond_16

    .line 970
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 973
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v4, :cond_17

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v4, :cond_1a

    :cond_17
    const/4 v4, 0x1

    :goto_5
    iget-object v7, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 983
    :cond_18
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1b

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1b

    .line 987
    :try_start_4
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v4, v5, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 997
    :goto_6
    :try_start_5
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v4, :cond_19

    .line 998
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v10, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 1004
    :cond_19
    :goto_7
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1007
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1010
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 973
    :cond_1a
    const/4 v4, 0x0

    goto :goto_5

    .line 988
    :catch_1
    move-exception v17

    .line 989
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure sending service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 1007
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v12    # "binder":Landroid/os/IBinder;
    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1000
    .restart local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v12    # "binder":Landroid/os/IBinder;
    .restart local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1b
    :try_start_7
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v4, :cond_19

    .line 1001
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v10, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 820
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v10    # "callerFg":Z
    .end local v12    # "binder":Landroid/os/IBinder;
    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v20    # "origId":J
    .end local v22    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v23    # "s":Lcom/android/server/am/ServiceRecord;
    :catch_2
    move-exception v4

    goto/16 :goto_3
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "evenPersistent"    # Z
    .param p5, "killProcess"    # Z
    .param p6, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZZZ)Z"
        }
    .end annotation

    .prologue
    .line 2355
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 2357
    .local v7, "didSomething":Z
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2361
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 2362
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_3

    .line 2363
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move/from16 v4, p6

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 2365
    if-nez p6, :cond_1

    if-eqz v7, :cond_1

    .line 2366
    const/4 v0, 0x1

    .line 2384
    .end local v8    # "i":I
    :goto_1
    return v0

    .line 2362
    .restart local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2370
    .end local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2371
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v9, :cond_3

    .line 2372
    iget-object v6, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .local v6, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move/from16 v4, p6

    move v5, p5

    .line 2373
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    move-result v7

    .line 2378
    .end local v6    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 2379
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .restart local v8    # "i":I
    :goto_2
    if-ltz v8, :cond_4

    .line 2380
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2379
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 2382
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .end local v8    # "i":I
    :cond_5
    move v0, v7

    .line 2384
    goto :goto_1
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 10
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2388
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    .local v8, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 2390
    .local v6, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 2391
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2392
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2393
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2390
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2398
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_4

    .line 2399
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2400
    .restart local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    .line 2401
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2402
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": remove task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2398
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2405
    :cond_3
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2407
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 2411
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2412
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2419
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_4
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .prologue
    .line 3037
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3039
    .local v18, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3040
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v21

    .line 3041
    .local v21, "users":[I
    const-string v2, "all"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3042
    move-object/from16 v10, v21

    .local v10, "arr$":[I
    array-length v14, v10

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_a

    aget v20, v10, v13

    .line 3043
    .local v20, "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3044
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v19, :cond_1

    .line 3042
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3047
    :cond_1
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 3048
    .local v9, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 3049
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 3050
    .local v17, "r1":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3048
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3054
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v10    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_2
    if-eqz p3, :cond_5

    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 3056
    .local v11, "componentName":Landroid/content/ComponentName;
    :goto_2
    const/16 v16, 0x0

    .line 3057
    .local v16, "objectId":I
    if-nez v11, :cond_3

    .line 3060
    const/16 v2, 0x10

    :try_start_1
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    .line 3061
    const/16 p3, 0x0

    .line 3062
    const/4 v11, 0x0

    .line 3067
    :cond_3
    :goto_3
    move-object/from16 v10, v21

    .restart local v10    # "arr$":[I
    :try_start_2
    array-length v14, v10

    .restart local v14    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_4
    if-ge v13, v14, :cond_a

    aget v20, v10, v13

    .line 3068
    .restart local v20    # "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3069
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v19, :cond_6

    .line 3067
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 3054
    .end local v10    # "arr$":[I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "objectId":I
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 3072
    .restart local v10    # "arr$":[I
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "objectId":I
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "user":I
    :cond_6
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 3073
    .restart local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 3074
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 3075
    .restart local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    if-eqz v11, :cond_8

    .line 3076
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3077
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3073
    :cond_7
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 3079
    :cond_8
    if-eqz p3, :cond_9

    .line 3080
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3081
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3089
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v10    # "arr$":[I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "objectId":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    .end local v21    # "users":[I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3083
    .restart local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .restart local v10    # "arr$":[I
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "i":I
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "objectId":I
    .restart local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "user":I
    .restart local v21    # "users":[I
    :cond_9
    :try_start_3
    invoke-static/range {v17 .. v17}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    .line 3084
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3089
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v16    # "objectId":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_a
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3091
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 3092
    const/4 v2, 0x0

    .line 3103
    :goto_7
    return v2

    .line 3095
    :cond_b
    const/4 v15, 0x0

    .line 3096
    .local v15, "needSep":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_d

    .line 3097
    if-eqz v15, :cond_c

    .line 3098
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3100
    :cond_c
    const/4 v15, 0x1

    .line 3101
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 3096
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 3103
    :cond_d
    const/4 v2, 0x1

    goto :goto_7

    .line 3063
    .end local v10    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "needSep":Z
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "objectId":I
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 36
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 2790
    const/16 v18, 0x0

    .line 2791
    .local v18, "needSep":Z
    const/16 v22, 0x0

    .line 2793
    .local v22, "printedAnything":Z
    new-instance v17, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 2794
    .local v17, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 2796
    const-string v31, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 2799
    const-string v31, "  Last ANR service:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2803
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v30

    .line 2804
    .local v30, "users":[I
    move-object/from16 v7, v30

    .local v7, "arr$":[I
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    aget v29, v7, v14

    .line 2805
    .local v29, "user":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v27

    .line 2806
    .local v27, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/16 v19, 0x0

    .line 2807
    .local v19, "printed":Z
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    if-lez v31, :cond_e

    .line 2808
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2809
    .local v20, "nowReal":J
    const/16 v18, 0x0

    .line 2810
    const/16 v26, 0x0

    .local v26, "si":I
    :goto_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 2811
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2812
    .local v24, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 2810
    :cond_1
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 2815
    :cond_2
    if-eqz p7, :cond_3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2818
    :cond_3
    if-nez v19, :cond_5

    .line 2819
    if-eqz v22, :cond_4

    .line 2820
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2822
    :cond_4
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  User "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " active services:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    const/16 v19, 0x1

    .line 2825
    :cond_5
    const/16 v22, 0x1

    .line 2826
    if-eqz v18, :cond_6

    .line 2827
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2829
    :cond_6
    const-string v31, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2830
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2831
    if-eqz p5, :cond_8

    .line 2832
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2833
    const/16 v18, 0x1

    .line 2859
    :cond_7
    if-eqz p6, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    .line 2860
    const-string v31, "    Client:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2863
    :try_start_1
    new-instance v28, Lcom/android/internal/os/TransferPipe;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2865
    .local v28, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v31, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 2867
    const-string v31, "      "

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2870
    const-wide/16 v32, 0x7d0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2872
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2879
    .end local v28    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_3
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 2835
    :cond_8
    :try_start_4
    const-string v31, "    app="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2836
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2837
    const-string v31, "    created="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2838
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, v20

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2839
    const-string v31, " started="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2840
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move/from16 v31, v0

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2841
    const-string v31, " connections="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2842
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2843
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    if-lez v31, :cond_7

    .line 2844
    const-string v31, "    Connections:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    const/4 v10, 0x0

    .local v10, "conni":I
    :goto_4
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v10, v0, :cond_7

    .line 2846
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 2847
    .local v8, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_a

    .line 2848
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 2849
    .local v9, "conn":Lcom/android/server/am/ConnectionRecord;
    const-string v31, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2850
    iget-object v0, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2852
    const-string v31, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2853
    iget-object v0, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v23, v0

    .line 2854
    .local v23, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v31

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2854
    :cond_9
    const-string v31, "null"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 2845
    .end local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v23    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 2872
    .end local v8    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v10    # "conni":I
    .end local v13    # "i":I
    .restart local v28    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v31

    :try_start_5
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v31
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2874
    .end local v28    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v12

    .line 2875
    .local v12, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "      Failure while dumping the service: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 2923
    .end local v7    # "arr$":[I
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "printed":Z
    .end local v20    # "nowReal":J
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v26    # "si":I
    .end local v27    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v29    # "user":I
    .end local v30    # "users":[I
    :catch_1
    move-exception v12

    .line 2924
    .local v12, "e":Ljava/lang/Exception;
    const-string v31, "ActivityManager"

    const-string v32, "Exception in dumpServicesLocked"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2927
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_20

    .line 2928
    const/16 v19, 0x0

    .line 2929
    .restart local v19    # "printed":Z
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_1f

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2931
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_1b

    .line 2929
    :cond_c
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2876
    .end local v13    # "i":I
    .restart local v7    # "arr$":[I
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v20    # "nowReal":J
    .restart local v26    # "si":I
    .restart local v27    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v29    # "user":I
    .restart local v30    # "users":[I
    :catch_2
    move-exception v12

    .line 2877
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v31, "      Got a RemoteException while dumping the service"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2882
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_d
    or-int v18, v18, v19

    .line 2884
    .end local v20    # "nowReal":J
    .end local v26    # "si":I
    :cond_e
    const/16 v19, 0x0

    .line 2885
    const/16 v26, 0x0

    .restart local v26    # "si":I
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "SN":I
    :goto_9
    move/from16 v0, v26

    if-ge v0, v6, :cond_14

    .line 2886
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2887
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_10

    .line 2885
    :cond_f
    :goto_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 2890
    :cond_10
    if-eqz p7, :cond_11

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 2893
    :cond_11
    if-nez v19, :cond_13

    .line 2894
    if-eqz v22, :cond_12

    .line 2895
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2897
    :cond_12
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  User "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " delayed start services:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    const/16 v19, 0x1

    .line 2900
    :cond_13
    const/16 v22, 0x1

    .line 2901
    const-string v31, "  * Delayed start "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    .line 2903
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_14
    const/16 v19, 0x0

    .line 2904
    const/16 v26, 0x0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_b
    move/from16 v0, v26

    if-ge v0, v6, :cond_1a

    .line 2905
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2906
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 2904
    :cond_15
    :goto_c
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 2909
    :cond_16
    if-eqz p7, :cond_17

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 2912
    :cond_17
    if-nez v19, :cond_19

    .line 2913
    if-eqz v22, :cond_18

    .line 2914
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2916
    :cond_18
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  User "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " starting in background:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    const/16 v19, 0x1

    .line 2919
    :cond_19
    const/16 v22, 0x1

    .line 2920
    const-string v31, "  * Starting bg "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_c

    .line 2804
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2934
    .end local v6    # "SN":I
    .end local v7    # "arr$":[I
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v26    # "si":I
    .end local v27    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v29    # "user":I
    .end local v30    # "users":[I
    .restart local v13    # "i":I
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1b
    if-eqz p7, :cond_1c

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 2937
    :cond_1c
    const/16 v22, 0x1

    .line 2938
    if-nez v19, :cond_1e

    .line 2939
    if-eqz v18, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2940
    :cond_1d
    const/16 v18, 0x1

    .line 2941
    const-string v31, "  Pending services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const/16 v19, 0x1

    .line 2944
    :cond_1e
    const-string v31, "  * Pending "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2945
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2947
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1f
    const/16 v18, 0x1

    .line 2950
    .end local v13    # "i":I
    .end local v19    # "printed":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_27

    .line 2951
    const/16 v19, 0x0

    .line 2952
    .restart local v19    # "printed":Z
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_26

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2954
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_22

    .line 2952
    :cond_21
    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2957
    :cond_22
    if-eqz p7, :cond_23

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_21

    .line 2960
    :cond_23
    const/16 v22, 0x1

    .line 2961
    if-nez v19, :cond_25

    .line 2962
    if-eqz v18, :cond_24

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2963
    :cond_24
    const/16 v18, 0x1

    .line 2964
    const-string v31, "  Restarting services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    const/16 v19, 0x1

    .line 2967
    :cond_25
    const-string v31, "  * Restarting "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2968
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_e

    .line 2970
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_26
    const/16 v18, 0x1

    .line 2973
    .end local v13    # "i":I
    .end local v19    # "printed":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_2e

    .line 2974
    const/16 v19, 0x0

    .line 2975
    .restart local v19    # "printed":Z
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_2d

    .line 2976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2977
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_29

    .line 2975
    :cond_28
    :goto_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 2980
    :cond_29
    if-eqz p7, :cond_2a

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 2983
    :cond_2a
    const/16 v22, 0x1

    .line 2984
    if-nez v19, :cond_2c

    .line 2985
    if-eqz v18, :cond_2b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2986
    :cond_2b
    const/16 v18, 0x1

    .line 2987
    const-string v31, "  Destroying services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    const/16 v19, 0x1

    .line 2990
    :cond_2c
    const-string v31, "  * Destroy "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2991
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_10

    .line 2993
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_2d
    const/16 v18, 0x1

    .line 2996
    .end local v13    # "i":I
    .end local v19    # "printed":Z
    :cond_2e
    if-eqz p5, :cond_35

    .line 2997
    const/16 v19, 0x0

    .line 2998
    .restart local v19    # "printed":Z
    const/4 v15, 0x0

    .local v15, "ic":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v15, v0, :cond_35

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 3000
    .local v25, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_12
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_34

    .line 3001
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 3002
    .local v11, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v31, v0

    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v32, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_30

    .line 3000
    :cond_2f
    :goto_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 3005
    :cond_30
    if-eqz p7, :cond_31

    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2f

    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2f

    .line 3009
    :cond_31
    const/16 v22, 0x1

    .line 3010
    if-nez v19, :cond_33

    .line 3011
    if-eqz v18, :cond_32

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3012
    :cond_32
    const/16 v18, 0x1

    .line 3013
    const-string v31, "  Connection bindings to services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    const/16 v19, 0x1

    .line 3016
    :cond_33
    const-string v31, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3017
    const-string v31, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_13

    .line 2998
    .end local v11    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_34
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_11

    .line 3022
    .end local v13    # "i":I
    .end local v15    # "ic":I
    .end local v19    # "printed":Z
    .end local v25    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_35
    if-nez v22, :cond_36

    .line 3023
    const-string v31, "  (nothing)"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    :cond_36
    return-void
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2712
    .local v4, "userId":I
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 2713
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_2

    .line 2714
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2715
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2716
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2717
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 2718
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    .line 2723
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1    # "conni":I
    .end local v2    # "i":I
    :goto_2
    return-object v5

    .line 2716
    .restart local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "conni":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2714
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2723
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1    # "conni":I
    .end local v2    # "i":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method getRunningServiceInfoLocked(II)Ljava/util/List;
    .locals 14
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2660
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2663
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2664
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2666
    .local v2, "ident":J
    :try_start_0
    const-string v12, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v12, v9}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_2

    .line 2669
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v11

    .line 2670
    .local v11, "users":[I
    const/4 v8, 0x0

    .local v8, "ui":I
    :goto_0
    array-length v12, v11

    if-ge v8, v12, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_1

    .line 2671
    aget v12, v11, v8

    invoke-virtual {p0, v12}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2672
    .local v0, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_0

    .line 2673
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 2674
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2670
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2678
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_5

    .line 2679
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2680
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 2682
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 2683
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2686
    .end local v1    # "i":I
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "ui":I
    .end local v11    # "users":[I
    :cond_2
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2687
    .local v10, "userId":I
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2688
    .restart local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_3

    .line 2689
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 2690
    .restart local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2693
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_5

    .line 2694
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2695
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    iget v12, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v12, v10, :cond_4

    .line 2696
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 2698
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 2699
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2693
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2704
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "userId":I
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2707
    return-object v6

    .line 2704
    .end local v1    # "i":I
    :catchall_0
    move-exception v12

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    .prologue
    .line 300
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServices(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServices(I)Z
    .locals 4
    .param p1, "callingUser"    # I

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 305
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 24
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"    # Z

    .prologue
    .line 2423
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    and-int p2, p2, v19

    .line 2423
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2456
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_1
    if-ltz v13, :cond_1

    .line 2457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ConnectionRecord;

    .line 2458
    .local v16, "r":Lcom/android/server/am/ConnectionRecord;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2456
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 2460
    .end local v16    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2461
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->clear()V

    .line 2464
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_2
    if-ltz v13, :cond_a

    .line 2465
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 2466
    .local v18, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v20

    monitor-enter v20

    .line 2467
    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 2468
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2469
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 2470
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2472
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2473
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2474
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2475
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2480
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 2481
    .local v14, "numClients":I
    add-int/lit8 v7, v14, -0x1

    .local v7, "bindingi":I
    :goto_3
    if-ltz v7, :cond_9

    .line 2482
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/IntentBindRecord;

    .line 2485
    .local v6, "b":Lcom/android/server/am/IntentBindRecord;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 2486
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->received:Z

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2491
    iget-object v0, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    add-int/lit8 v5, v19, -0x1

    .local v5, "appi":I
    :goto_4
    if-ltz v5, :cond_8

    .line 2492
    iget-object v0, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 2494
    .local v15, "proc":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 2491
    :cond_4
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2468
    .end local v5    # "appi":I
    .end local v6    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v7    # "bindingi":I
    .end local v14    # "numClients":I
    .end local v15    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 2500
    .restart local v5    # "appi":I
    .restart local v6    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v7    # "bindingi":I
    .restart local v14    # "numClients":I
    .restart local v15    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    iget-object v0, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBindRecord;

    .line 2501
    .local v4, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v12, 0x0

    .line 2502
    .local v12, "hasCreate":Z
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .local v10, "conni":I
    :goto_6
    if-ltz v10, :cond_6

    .line 2503
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 2504
    .local v9, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x31

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 2506
    const/4 v12, 0x1

    .line 2510
    .end local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    if-nez v12, :cond_4

    goto :goto_5

    .line 2502
    .restart local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 2481
    .end local v4    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v10    # "conni":I
    .end local v12    # "hasCreate":Z
    .end local v15    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 2464
    .end local v5    # "appi":I
    .end local v6    # "b":Lcom/android/server/am/IntentBindRecord;
    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_2

    .line 2524
    .end local v7    # "bindingi":I
    .end local v14    # "numClients":I
    .end local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v17

    .line 2527
    .local v17, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_7
    if-ltz v13, :cond_13

    .line 2528
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 2532
    .restart local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 2533
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 2538
    :cond_b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    .line 2539
    .local v11, "curRec":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    if-eq v11, v0, :cond_d

    .line 2540
    if-eqz v11, :cond_c

    .line 2541
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Service "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in process "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not same as in map: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :cond_c
    :goto_8
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 2549
    :cond_d
    if-eqz p2, :cond_e

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_e

    .line 2551
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Service crashed "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " times, stopping: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const/16 v19, 0x7552

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2555
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_8

    .line 2556
    :cond_e
    if-eqz p2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/am/ActivityManagerService;->isUserRunningLocked(IZ)Z

    move-result v19

    if-nez v19, :cond_10

    .line 2557
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_8

    .line 2559
    :cond_10
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v8

    .line 2564
    .local v8, "canceled":Z
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    if-eqz v8, :cond_c

    .line 2565
    :cond_11
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_c

    .line 2566
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 2567
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 2568
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v19 .. v23}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2571
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v19

    if-nez v19, :cond_c

    .line 2573
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_8

    .line 2580
    .end local v8    # "canceled":Z
    .end local v11    # "curRec":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_13
    if-nez p2, :cond_17

    .line 2581
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->clear()V

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_9
    if-ltz v13, :cond_15

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ServiceRecord;

    .line 2586
    .local v16, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2589
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2584
    :cond_14
    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    .line 2592
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_a
    if-ltz v13, :cond_17

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ServiceRecord;

    .line 2594
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2592
    :cond_16
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 2602
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2603
    :cond_18
    :goto_b
    if-lez v13, :cond_19

    .line 2604
    add-int/lit8 v13, v13, -0x1

    .line 2605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 2606
    .restart local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_18

    .line 2607
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 2608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b

    .line 2613
    .end local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->clear()V

    .line 2614
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 2617
    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 2619
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 2620
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    .line 2621
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 2623
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 2624
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 2625
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 2626
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 2627
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 2628
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 2629
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 2630
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 2631
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_1

    .line 2632
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2634
    :cond_1
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_2

    .line 2635
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2637
    :cond_2
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_3

    .line 2638
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2640
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v5, :cond_4

    .line 2641
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2644
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_5

    .line 2645
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2646
    .local v2, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 2647
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 2648
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_6

    .line 2649
    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 2650
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 2655
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_5
    return-object v4

    .line 2646
    .restart local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .restart local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2644
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 593
    .local v10, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v11, 0x0

    .line 594
    .local v11, "ret":Landroid/os/IBinder;
    if-eqz v10, :cond_1

    .line 596
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v1, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    .line 604
    .local v9, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v9, :cond_1

    .line 605
    iget-object v11, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 609
    .end local v9    # "ib":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    return-object v11
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1501
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1542
    :goto_0
    return-void

    .line 1504
    :cond_0
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1510
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting service that is not needed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1514
    :cond_1
    :try_start_0
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-ne v3, v4, :cond_5

    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, "shouldDelay":Z
    const/4 v2, 0x0

    .line 1517
    .local v2, "top_rc":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1518
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_2

    .line 1519
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1521
    :cond_2
    if-eqz v2, :cond_3

    .line 1522
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1523
    const/4 v0, 0x1

    .line 1526
    :cond_3
    if-nez v0, :cond_4

    .line 1527
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    goto :goto_0

    .line 1539
    .end local v0    # "shouldDelay":Z
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "top_rc":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1533
    .restart local v0    # "shouldDelay":Z
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "top_rc":Lcom/android/server/am/ActivityRecord;
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1534
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    goto :goto_0

    .line 1537
    .end local v0    # "shouldDelay":Z
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "top_rc":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2306
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2307
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_2

    .line 2310
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing bringing down service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2312
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2313
    add-int/lit8 v0, v0, -0x1

    .line 2314
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2305
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2317
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1018
    .local v8, "origId":J
    if-eqz p1, :cond_3

    .line 1019
    :try_start_0
    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1021
    .local v5, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 1022
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    if-eqz v0, :cond_2

    iget-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v7, :cond_2

    .line 1023
    iput-object p3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 1024
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1025
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 1026
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "conni":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1027
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1028
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1029
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 1030
    .local v1, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v7, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5, v7}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 1028
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1041
    :cond_0
    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v7, v10, p3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1042
    :catch_0
    move-exception v4

    .line 1043
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure sending service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1054
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v6    # "i":I
    :catchall_0
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 1026
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "conni":I
    .restart local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v6    # "i":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1051
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v6    # "i":I
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x0

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1054
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1056
    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2032
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2033
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 2034
    .local v0, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 2035
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2036
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_0

    .line 2037
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2038
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2039
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2043
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, p3, :cond_1

    .line 2044
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    .line 2045
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2048
    :cond_1
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eq v6, p2, :cond_3

    .line 2049
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2050
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    .line 2051
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 2053
    :cond_2
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_3

    .line 2054
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x1

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 2057
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 2058
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_4

    .line 2059
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2060
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 2061
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;)V

    .line 2067
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 2068
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    :cond_5
    iget-boolean v6, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v6, :cond_9

    .line 2074
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v6, :cond_7

    .line 2077
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "unbind"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2078
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v6, v7, :cond_6

    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_6

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xb

    if-gt v6, v7, :cond_6

    .line 2083
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2085
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 2086
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 2089
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 2090
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    :cond_7
    :goto_0
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 2098
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    .line 2099
    .local v4, "hasAutoCreate":Z
    if-nez v4, :cond_8

    .line 2100
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_8

    .line 2101
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 2105
    :cond_8
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2108
    .end local v4    # "hasAutoCreate":Z
    :cond_9
    return-void

    .line 2091
    :catch_0
    move-exception v3

    .line 2092
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when unbinding service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2093
    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_0
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2774
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_1

    .line 2783
    :cond_0
    :goto_0
    return-void

    .line 2777
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2778
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2780
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2781
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x4e20

    add-long/2addr v4, v2

    :goto_1
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x30d40

    add-long/2addr v4, v2

    goto :goto_1
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 2111
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2112
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_4

    .line 2113
    if-ne p2, v7, :cond_2

    .line 2116
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 2117
    sparse-switch p4, :sswitch_data_0

    .line 2156
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown service start result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2121
    :sswitch_0
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2123
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 2159
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 2160
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 2178
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2179
    .local v2, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2180
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2185
    .end local v2    # "origId":J
    :goto_2
    return-void

    .line 2128
    :sswitch_1
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2129
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 2132
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 2140
    :sswitch_2
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v1

    .line 2141
    .local v1, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v1, :cond_0

    .line 2142
    iput v5, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 2143
    iget v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 2145
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 2152
    .end local v1    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :sswitch_3
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_0

    .line 2162
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 2166
    if-nez v0, :cond_3

    .line 2169
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2171
    :cond_3
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq v4, v7, :cond_1

    .line 2172
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service done with onDestroy, but executeNesting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    iput v7, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    goto :goto_1

    .line 2182
    :cond_4
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done executing unknown service from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 22
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2727
    const/4 v7, 0x0

    .line 2729
    .local v7, "anrMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2730
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_2

    .line 2731
    :cond_0
    monitor-exit v4

    .line 2771
    :cond_1
    :goto_0
    return-void

    .line 2733
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2734
    .local v14, "now":J
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x4e20

    :goto_1
    int-to-long v2, v2

    sub-long v10, v14, v2

    .line 2736
    .local v10, "maxTime":J
    const/16 v19, 0x0

    .line 2737
    .local v19, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v12, 0x0

    .line 2738
    .local v12, "nextTime":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_3

    .line 2739
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2740
    .local v17, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v2, v2, v10

    if-gez v2, :cond_5

    .line 2741
    move-object/from16 v19, v17

    .line 2748
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2749
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout executing service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    new-instance v18, Ljava/io/StringWriter;

    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    .line 2751
    .local v18, "sw":Ljava/io/StringWriter;
    new-instance v16, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2752
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2753
    const-string v2, "    "

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2754
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 2755
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 2756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    const-wide/32 v20, 0x6ddd00

    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executing service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2766
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "sw":Ljava/io/StringWriter;
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2768
    if-eqz v7, :cond_1

    .line 2769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2734
    .end local v8    # "i":I
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_4
    const v2, 0x30d40

    goto/16 :goto_1

    .line 2744
    .restart local v8    # "i":I
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_5
    :try_start_1
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v2, v2, v12

    if-lez v2, :cond_6

    .line 2745
    move-object/from16 v0, v17

    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2738
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2

    .line 2760
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2762
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x4e20

    add-long/2addr v2, v12

    :goto_4
    invoke-virtual {v5, v9, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_3

    .line 2766
    .end local v8    # "i":I
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .end local v14    # "now":J
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2763
    .restart local v8    # "i":I
    .restart local v9    # "msg":Landroid/os/Message;
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v14    # "now":J
    .restart local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_8
    const-wide/32 v2, 0x30d40

    add-long/2addr v2, v12

    goto :goto_4
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z

    .prologue
    .line 663
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 664
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 666
    .local v0, "origId":J
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 667
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v2, :cond_3

    .line 668
    if-eqz p3, :cond_4

    .line 669
    if-nez p4, :cond_0

    .line 670
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null notification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 672
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    :try_start_1
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v4, p3, :cond_1

    .line 673
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 674
    iput p3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 676
    :cond_1
    iget v4, p4, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p4, Landroid/app/Notification;->flags:I

    .line 677
    iput-object p4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 678
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 679
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 680
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 681
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 683
    :cond_2
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    return-void

    .line 685
    :cond_4
    :try_start_2
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_5

    .line 686
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 687
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5

    .line 688
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 689
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 692
    :cond_5
    if-eqz p5, :cond_6

    .line 693
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 694
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 695
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_0

    .line 696
    :cond_6
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 697
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .locals 8
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"    # Z
    .param p5, "addToStarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 501
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v2

    .line 502
    .local v2, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v2, :cond_0

    .line 503
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    iget-wide v6, p3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v2, v1, v4, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 505
    :cond_0
    iput-boolean v3, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 506
    iget-object v4, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4

    .line 507
    :try_start_0
    iget-object v5, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 508
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-direct {p0, p3, v4, p4, v3}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 511
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "!!"

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :goto_0
    return-object v3

    .line 508
    .end local v0    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 514
    .restart local v0    # "error":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_4

    if-eqz p5, :cond_4

    .line 515
    iget-object v4, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 516
    .local v1, "first":Z
    :goto_1
    iget-object v3, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3a98

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 525
    if-eqz v1, :cond_2

    .line 526
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V

    .line 532
    .end local v1    # "first":Z
    :cond_2
    :goto_2
    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 515
    goto :goto_1

    .line 528
    :cond_4
    if-eqz p4, :cond_2

    .line 529
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_2
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/ComponentName;
    .locals 23
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    .line 332
    .local v18, "callerPkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    if-eqz p1, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v17

    .line 334
    .local v17, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v17, :cond_0

    .line 335
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_0
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    .line 342
    .local v10, "callerFg":Z
    :goto_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    .line 349
    .end local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :goto_1
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v22

    .line 352
    .local v22, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v22, :cond_3

    .line 353
    const/4 v2, 0x0

    .line 496
    :goto_2
    return-object v2

    .line 340
    .end local v10    # "callerFg":Z
    .end local v22    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 345
    .end local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    const/4 v10, 0x1

    .restart local v10    # "callerFg":Z
    goto :goto_1

    .line 355
    .restart local v22    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_3
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_5

    .line 356
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "!"

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    :goto_3
    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_2

    :cond_4
    const-string v2, "private to package"

    goto :goto_3

    .line 360
    :cond_5
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 362
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget v3, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 363
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to start service with non-existent user! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v2, 0x0

    goto :goto_2

    .line 368
    :cond_6
    sget-boolean v2, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->ENABLE:Z

    if-eqz v2, :cond_8

    .line 369
    if-eqz v14, :cond_8

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnubia/os/ApplicationManager$Trigger;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 371
    sget-boolean v2, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 372
    const-string v2, "ApplicationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prevent a push service start , pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_7
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 380
    :cond_8
    if-eqz v14, :cond_d

    if-eqz v18, :cond_d

    .line 381
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target_pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target_process = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start service caller PID ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", UID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callerPkgList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/16 v20, 0x0

    .line 387
    .local v20, "isAllowStart":Z
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInCallerList(I)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-virtual {v2, v14}, Lcom/android/server/am/NubiaSelfStartUtil;->isInStartServiceList(Lcom/android/server/am/ServiceRecord;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 390
    :cond_9
    const/16 v20, 0x1

    .line 392
    :cond_a
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_b

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p5

    if-eq v0, v2, :cond_b

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    const-string v4, "startServiceLocked"

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 399
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forbid starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 403
    :cond_b
    const/16 v19, 0x0

    .line 404
    .local v19, "hasExtraAlarm":Z
    const/4 v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_c

    .line 406
    :try_start_0
    const-string v2, "android.intent.extra.ALARM_COUNT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 410
    :cond_c
    :goto_4
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_d

    if-eqz p2, :cond_d

    if-eqz v19, :cond_d

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    const-string v4, "startServiceLocked"

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 415
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forbid starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 421
    .end local v19    # "hasExtraAlarm":Z
    .end local v20    # "isAllowStart":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/4 v7, 0x0

    iget v8, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v3, p5

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;I)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    move-result-object v7

    .line 423
    .local v7, "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 426
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 427
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 428
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 429
    iget-object v8, v14, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v4, 0x0

    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v5

    move-object v3, v14

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget v2, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v12

    .line 433
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/16 v16, 0x0

    .line 434
    .local v16, "addToStarting":Z
    if-nez v10, :cond_12

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v3, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v21

    .line 436
    .local v21, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v21, :cond_f

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_13

    .line 449
    :cond_f
    iget-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_10

    .line 453
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 455
    :cond_10
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_11

    .line 457
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying start of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 460
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 463
    :cond_11
    const/16 v16, 0x1

    .end local v21    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_12
    :goto_5
    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move v15, v10

    .line 496
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_2

    .line 464
    .restart local v21    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_13
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_12

    .line 468
    const/16 v16, 0x1

    goto :goto_5

    .line 407
    .end local v7    # "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v16    # "addToStarting":Z
    .end local v21    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "hasExtraAlarm":Z
    .restart local v20    # "isAllowStart":Z
    :catch_0
    move-exception v2

    goto/16 :goto_4
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 562
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    if-nez v9, :cond_0

    .line 563
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v12

    .line 572
    .local v12, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v12, :cond_2

    .line 573
    iget-object v0, v12, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_1

    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 576
    .local v10, "origId":J
    :try_start_0
    iget-object v0, v12, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    const/4 v0, 0x1

    .line 585
    .end local v10    # "origId":J
    :goto_0
    return v0

    .line 578
    .restart local v10    # "origId":J
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 582
    .end local v10    # "origId":J
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    .line 616
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 617
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_2

    .line 618
    if-ltz p3, :cond_4

    .line 622
    invoke-virtual {v1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v4

    .line 623
    .local v4, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v4, :cond_1

    .line 624
    :cond_0
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 625
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 626
    .local v0, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 627
    if-ne v0, v4, :cond_0

    .line 633
    .end local v0    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v6

    if-eq v6, p3, :cond_3

    .line 658
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_2
    :goto_0
    return v5

    .line 637
    .restart local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 638
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopServiceToken startId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is last, but have "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remaining args"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_4
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    .line 645
    :try_start_0
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 646
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    iput-boolean v5, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 648
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_5

    .line 649
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 652
    :cond_5
    iput-boolean v5, v1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 654
    .local v2, "origId":J
    invoke-direct {p0, v1, v5, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 655
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 656
    const/4 v5, 0x1

    goto :goto_0

    .line 646
    .end local v2    # "origId":J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    .prologue
    .line 1098
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1100
    .local v6, "origId":J
    if-eqz p1, :cond_2

    .line 1101
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1103
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 1108
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1109
    .local v4, "inDestroying":Z
    if-eqz v0, :cond_1

    .line 1110
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_4

    if-nez v4, :cond_4

    .line 1113
    const/4 v5, 0x0

    .line 1114
    .local v5, "inFg":Z
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1115
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    iget-object v1, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1116
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_3

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    .line 1118
    const/4 v5, 0x1

    .line 1123
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_0
    const/4 v8, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0, v5, v8}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    .end local v3    # "i":I
    .end local v5    # "inFg":Z
    :cond_1
    :goto_1
    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, p1, v4, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1137
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "inDestroying":Z
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    return-void

    .line 1114
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "i":I
    .restart local v4    # "inDestroying":Z
    .restart local v5    # "inFg":Z
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1130
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "i":I
    .end local v5    # "inFg":Z
    :cond_4
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1137
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "inDestroying":Z
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1124
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "i":I
    .restart local v4    # "inDestroying":Z
    .restart local v5    # "inFg":Z
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 11
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1059
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1061
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1062
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v1, :cond_0

    .line 1063
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unbind failed: could not find connection for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    return v5

    .line 1068
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1070
    .local v2, "origId":J
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1071
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 1072
    .local v4, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1073
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2

    .line 1075
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not removed for binder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1079
    :cond_2
    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_1

    .line 1081
    iget v7, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v8, 0x8000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 1082
    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1083
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v7, :cond_3

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v7, :cond_5

    :cond_3
    move v7, v6

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1087
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1091
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .restart local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_5
    move v7, v5

    .line 1083
    goto :goto_2

    .line 1091
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v6

    .line 1094
    goto/16 :goto_0
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "clientProc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 719
    const/4 v3, 0x0

    .line 720
    .local v3, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 721
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 722
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 723
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 720
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    :cond_1
    if-nez v3, :cond_3

    .line 726
    new-instance v3, Landroid/util/ArraySet;

    .end local v3    # "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 730
    .restart local v3    # "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 731
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    goto :goto_1

    .line 727
    :cond_3
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 733
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    return-void
.end method
