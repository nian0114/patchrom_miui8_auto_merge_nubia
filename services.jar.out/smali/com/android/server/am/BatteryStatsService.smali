.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    }
.end annotation


# static fields
.field private static final COMPLETED_PROPERTY:Ljava/lang/String; = "sys.boot_completed"

.field private static final LOGS_SWITCH:Ljava/lang/String; = "persist.power.logs.switch"

.field private static final OFF_MAX_LEVEL:Ljava/lang/String; = "persist.power.logs.off.level"

.field private static final OFF_MAX_TIME:Ljava/lang/String; = "persist.power.logs.off.time"

.field private static final ON_MAX_LEVEL:Ljava/lang/String; = "persist.power.logs.on.level"

.field private static final ON_MAX_TIME:Ljava/lang/String; = "persist.power.logs.on.time"

.field private static final OVER_LIMIT_TIME:Ljava/lang/String; = "persist.power.logs.limit.time"

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field final UPDATE_ALL:I

.field final UPDATE_BT:I

.field final UPDATE_CPU:I

.field final UPDATE_RADIO:I

.field final UPDATE_WIFI:I

.field private gpsHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private final mExternalStatsLock:Ljava/lang/Object;

.field final mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

.field private mLastBatteryLevel:I

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field

.field private mLastPlugType:I

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field

.field private offHasSend:Z

.field private offLastTime:J

.field private offLimitTime:J

.field private offSumLevel:I

.field private offSumTime:J

.field private onHasSend:Z

.field private onLastTime:J

.field private onLimitTime:J

.field private onSumLevel:I

.field private onSumTime:J


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 13
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 173
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 92
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_CPU:I

    .line 93
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_WIFI:I

    .line 94
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_RADIO:I

    .line 95
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_BT:I

    .line 96
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_ALL:I

    .line 1058
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    .line 1274
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    .line 1281
    new-instance v1, Landroid/net/wifi/WifiActivityEnergyInfo;

    move-wide v5, v2

    move-wide v7, v2

    move-wide v9, v2

    move-wide v11, v2

    invoke-direct/range {v1 .. v12}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1470
    iput-boolean v4, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    .line 1471
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    .line 1472
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    .line 1473
    iput v4, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    .line 1474
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offLimitTime:J

    .line 1476
    iput-boolean v4, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    .line 1477
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    .line 1478
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    .line 1479
    iput v4, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    .line 1480
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onLimitTime:J

    .line 1482
    iput v4, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    .line 1483
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    .line 176
    new-instance v1, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    .line 179
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 180
    return-void
.end method

.method static synthetic access$000(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1035
    add-int/lit8 p2, p2, 0x1

    .line 1036
    array-length v0, p3

    if-lt p2, v0, :cond_1

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    const-string v0, "--enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    move p2, v1

    .line 1054
    .end local p2    # "i":I
    :goto_1
    return p2

    .line 1037
    .restart local p2    # "i":I
    :cond_0
    const-string v0, "--disable"

    goto :goto_0

    .line 1041
    :cond_1
    const-string v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 1044
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1045
    :cond_3
    const-string v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1047
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 1048
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1050
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    move p2, v1

    .line 1052
    goto :goto_1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1009
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    const-string v0, "  [--checkin] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const-string v0, "  --c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method private getProperty(Ljava/lang/String;I)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 1579
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1580
    .local v0, "value":I
    const-string v1, "BatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logs property name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return v0
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .prologue
    .line 212
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_0

    .line 213
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 217
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 215
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 216
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 217
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    goto :goto_0
.end method

.method private isTime2Send(J)Z
    .locals 7
    .param p1, "limitTime"    # J

    .prologue
    .line 1585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1586
    .local v0, "maxSendTime":J
    const-string v4, "persist.power.logs.limit.time"

    const/16 v5, 0x48

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 1587
    .local v2, "overLimitTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1588
    :cond_0
    const/4 v4, 0x1

    .line 1590
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private offReset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1565
    const-string v0, "BatteryStatsService"

    const-string v1, "sendIntent offReset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    .line 1567
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    .line 1568
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    .line 1569
    return-void
.end method

.method private offScreenChange(I)V
    .locals 10
    .param p1, "level"    # I

    .prologue
    .line 1517
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1518
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    .line 1522
    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    sub-int/2addr v4, p1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    .line 1523
    const-string v1, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIntent offSumTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",offSumLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",offpercent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    iget v5, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    int-to-long v8, v5

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",offHasSend ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const-string v1, "persist.power.logs.off.time"

    const/16 v4, 0xf0

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 1526
    .local v2, "offMaxTime":J
    const-string v1, "persist.power.logs.off.level"

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v0

    .line 1527
    .local v0, "offMaxLevel":I
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    if-ge v1, v0, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    int-to-long v6, v1

    div-long/2addr v4, v6

    int-to-long v6, v0

    div-long v6, v2, v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 1529
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    if-nez v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offLimitTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/BatteryStatsService;->isTime2Send(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1530
    const-string v1, "BatteryStatsService"

    const-string v4, "sendIntent offsend success"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offLimitTime:J

    .line 1532
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    .line 1533
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1534
    const-string v1, "off"

    invoke-direct {p0, v1}, Lcom/android/server/am/BatteryStatsService;->sendLogBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onReset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1572
    const-string v0, "BatteryStatsService"

    const-string v1, "sendIntent onReset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    .line 1574
    iput-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    .line 1575
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    .line 1576
    return-void
.end method

.method private onScreenChange(I)V
    .locals 10
    .param p1, "level"    # I

    .prologue
    .line 1541
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1542
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    .line 1546
    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    sub-int/2addr v4, p1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    .line 1547
    const-string v1, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIntent onSumTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",onSumLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",onpercent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    iget v5, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    int-to-long v8, v5

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",onHasSend = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const-string v1, "persist.power.logs.on.time"

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 1550
    .local v2, "onMaxTime":J
    const-string v1, "persist.power.logs.on.level"

    const/16 v4, 0xa

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v0

    .line 1551
    .local v0, "onMaxLevel":I
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    if-ge v1, v0, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    int-to-long v6, v1

    div-long/2addr v4, v6

    int-to-long v6, v0

    div-long v6, v2, v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 1553
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    if-nez v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onLimitTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/BatteryStatsService;->isTime2Send(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1554
    const-string v1, "BatteryStatsService"

    const-string v4, "sendIntent onsend success"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->onLimitTime:J

    .line 1556
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    .line 1557
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1558
    const-string v1, "on"

    invoke-direct {p0, v1}, Lcom/android/server/am/BatteryStatsService;->sendLogBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1381
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1382
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 1383
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    .line 1385
    .local v1, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1386
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1388
    :cond_0
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth energy data is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .end local v1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    .prologue
    .line 1286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v15, :cond_0

    .line 1287
    const-string v15, "wifi"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 1289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v15, :cond_0

    .line 1290
    const/4 v5, 0x0

    .line 1376
    :goto_0
    return-object v5

    .line 1297
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    .line 1298
    .local v4, "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1299
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_1

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_1

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_1

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-gez v15, :cond_2

    .line 1301
    :cond_1
    const-string v15, "BatteryStatsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reported WiFi energy data is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v5, 0x0

    goto :goto_0

    .line 1305
    :cond_2
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v0, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v22, v0

    sub-long v16, v20, v22

    .line 1306
    .local v16, "timePeriodMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v8, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1307
    .local v8, "lastIdleMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v12, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1308
    .local v12, "lastTxMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v10, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1309
    .local v10, "lastRxMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v6, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1313
    .local v6, "lastEnergy":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1314
    .local v5, "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 1315
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v15

    iput v15, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 1318
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1319
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v10

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1325
    const-wide/16 v20, 0x0

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v8

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1326
    const-wide/16 v20, 0x0

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1329
    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_3

    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-gez v15, :cond_4

    .line 1333
    :cond_3
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1334
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1335
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1336
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1338
    const-string v15, "BatteryStatsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_4
    const-wide/16 v2, 0x2ee

    .line 1343
    .local v2, "SAMPLE_ERROR_MILLIS":J
    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v22, v0

    add-long v18, v20, v22

    .line 1345
    .local v18, "totalTimeMs":J
    const-wide/16 v20, 0x2ee

    add-long v20, v20, v16

    cmp-long v15, v18, v20

    if-lez v15, :cond_5

    .line 1346
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v15, "Total time "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1349
    const-string v15, " is longer than sample period "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1351
    const-string v15, ".\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    const-string v15, "Previous WiFi snapshot: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "idle="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-static {v8, v9, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1354
    const-string v15, " rx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    invoke-static {v10, v11, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1356
    const-string v15, " tx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-static {v12, v13, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1358
    const-string v15, " e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1359
    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    const-string v15, "Current WiFi snapshot: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "idle="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1362
    const-string v15, " rx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1364
    const-string v15, " tx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1366
    const-string v15, " e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1367
    const-string v15, "BatteryStatsService"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1373
    .end local v2    # "SAMPLE_ERROR_MILLIS":J
    .end local v4    # "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v5    # "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v6    # "lastEnergy":J
    .end local v8    # "lastIdleMs":J
    .end local v10    # "lastRxMs":J
    .end local v12    # "lastTxMs":J
    .end local v16    # "timePeriodMs":J
    .end local v18    # "totalTimeMs":J
    :catch_0
    move-exception v15

    .line 1376
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private sendIntentByLevel(II)V
    .locals 6
    .param p1, "plugType"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1486
    const-string v2, "sys.boot_completed"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1487
    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    if-eq v2, p1, :cond_3

    .line 1488
    :cond_0
    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-eq v2, p2, :cond_6

    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-le v2, p2, :cond_6

    .line 1489
    const-string v2, "persist.power.logs.switch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v1

    .line 1490
    .local v1, "logSwitch":I
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn()Z

    move-result v0

    .line 1491
    .local v0, "isScreenOn":Z
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIntent  screen on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",logSwitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    if-eqz v0, :cond_4

    .line 1493
    if-eq v1, v5, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1494
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1495
    invoke-direct {p0, p2}, Lcom/android/server/am/BatteryStatsService;->onScreenChange(I)V

    .line 1510
    .end local v0    # "isScreenOn":Z
    .end local v1    # "logSwitch":I
    :cond_2
    :goto_0
    iput p2, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    .line 1511
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    .line 1514
    :cond_3
    return-void

    .line 1498
    .restart local v0    # "isScreenOn":Z
    .restart local v1    # "logSwitch":I
    :cond_4
    if-eq v1, v5, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1499
    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1500
    invoke-direct {p0, p2}, Lcom/android/server/am/BatteryStatsService;->offScreenChange(I)V

    goto :goto_0

    .line 1503
    .end local v0    # "isScreenOn":Z
    .end local v1    # "logSwitch":I
    :cond_6
    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-eq v2, p2, :cond_7

    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-lt v2, p2, :cond_8

    :cond_7
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    if-nez v2, :cond_2

    .line 1505
    :cond_8
    iput-boolean v4, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    .line 1506
    iput-boolean v4, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    .line 1507
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1508
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    goto :goto_0
.end method

.method private sendLogBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1594
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 1595
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1607
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 258
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public computeBatteryTimeRemaining()J
    .locals 6

    .prologue
    .line 341
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    .line 343
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .end local v0    # "time":J
    :cond_0
    monitor-exit v3

    return-wide v0

    .line 344
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public computeChargeTimeRemaining()J
    .locals 6

    .prologue
    .line 348
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 349
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    .line 350
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .end local v0    # "time":J
    :cond_0
    monitor-exit v3

    return-wide v0

    .line 351
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 29
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1101
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump BatteryStats from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    const/4 v9, 0x0

    .line 1110
    .local v9, "flags":I
    const/16 v27, 0x0

    .line 1111
    .local v27, "useCheckinFormat":Z
    const/16 v24, 0x0

    .line 1112
    .local v24, "isRealCheckin":Z
    const/16 v25, 0x0

    .line 1113
    .local v25, "noOutput":Z
    const/16 v28, 0x0

    .line 1114
    .local v28, "writeData":Z
    const-wide/16 v10, -0x1

    .line 1115
    .local v10, "historyStart":J
    const/16 v17, -0x1

    .line 1116
    .local v17, "reqUid":I
    if-eqz p3, :cond_14

    .line 1117
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v20

    if-ge v0, v6, :cond_14

    .line 1118
    aget-object v4, p3, v20

    .line 1119
    .local v4, "arg":Ljava/lang/String;
    const-string v6, "--checkin"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1120
    const/16 v27, 0x1

    .line 1121
    const/16 v24, 0x1

    .line 1117
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1122
    :cond_2
    const-string v6, "--history"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1123
    or-int/lit8 v9, v9, 0x8

    goto :goto_2

    .line 1124
    :cond_3
    const-string v6, "--history-start"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1125
    or-int/lit8 v9, v9, 0x8

    .line 1126
    add-int/lit8 v20, v20, 0x1

    .line 1127
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v20

    if-lt v0, v6, :cond_4

    .line 1128
    const-string v6, "Missing time argument for --history-since"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1132
    :cond_4
    aget-object v6, p3, v20

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1133
    const/16 v28, 0x1

    goto :goto_2

    .line 1134
    :cond_5
    const-string v6, "-c"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1135
    const/16 v27, 0x1

    .line 1136
    or-int/lit8 v9, v9, 0x10

    goto :goto_2

    .line 1137
    :cond_6
    const-string v6, "--charged"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1138
    or-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 1139
    :cond_7
    const-string v6, "--daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1140
    or-int/lit8 v9, v9, 0x4

    goto :goto_2

    .line 1141
    :cond_8
    const-string v6, "--reset"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1143
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1144
    const-string v6, "Battery stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    const/16 v25, 0x1

    .line 1146
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    const-string v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1146
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1148
    :cond_9
    const-string v6, "--write"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1149
    const-string v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1151
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1152
    const-string v6, "Battery stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    const/16 v25, 0x1

    .line 1154
    monitor-exit v7

    goto/16 :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1155
    :cond_a
    const-string v6, "--new-daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1156
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1157
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1158
    const-string v6, "New daily stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    const/16 v25, 0x1

    .line 1160
    monitor-exit v7

    goto/16 :goto_2

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 1161
    :cond_b
    const-string v6, "--read-daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1162
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1163
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1164
    const-string v6, "Last daily stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    const/16 v25, 0x1

    .line 1166
    monitor-exit v7

    goto/16 :goto_2

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v6

    .line 1167
    :cond_c
    const-string v6, "--enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1168
    :cond_d
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v20

    .line 1169
    if-ltz v20, :cond_0

    .line 1172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1174
    :cond_e
    const-string v6, "--disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1175
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v20

    .line 1176
    if-ltz v20, :cond_0

    .line 1179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    :cond_10
    const-string v6, "-h"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1182
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 1184
    :cond_11
    const-string v6, "-a"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1185
    or-int/lit8 v9, v9, 0x20

    goto/16 :goto_2

    .line 1186
    :cond_12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_13

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_13

    .line 1187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 1193
    :cond_13
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v17

    goto/16 :goto_2

    .line 1195
    :catch_0
    move-exception v12

    .line 1196
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 1203
    .end local v4    # "arg":Ljava/lang/String;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v20    # "i":I
    :cond_14
    if-nez v25, :cond_0

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1209
    .local v22, "ident":J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1210
    or-int/lit8 v9, v9, 0x40

    .line 1213
    :cond_15
    const-string v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1215
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    if-ltz v17, :cond_16

    .line 1221
    and-int/lit8 v6, v9, 0xa

    if-nez v6, :cond_16

    .line 1222
    or-int/lit8 v9, v9, 0x2

    .line 1224
    and-int/lit8 v9, v9, -0x11

    .line 1228
    :cond_16
    if-eqz v27, :cond_1a

    .line 1229
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 1230
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v24, :cond_18

    .line 1233
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v13, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v13

    .line 1234
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->exists()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result v6

    if-eqz v6, :cond_17

    .line 1236
    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v26

    .line 1237
    .local v26, "raw":[B
    if-eqz v26, :cond_17

    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v21

    .line 1239
    .local v21, "in":Landroid/os/Parcel;
    const/4 v6, 0x0

    move-object/from16 v0, v26

    array-length v7, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1240
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1241
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v14, 0x0

    invoke-direct {v5, v6, v7, v14}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 1243
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1244
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    .line 1245
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1248
    :try_start_9
    monitor-exit v13

    goto/16 :goto_0

    .line 1255
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v21    # "in":Landroid/os/Parcel;
    .end local v26    # "raw":[B
    :catchall_4
    move-exception v6

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v6

    .line 1215
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_5
    move-exception v6

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1250
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v6

    move-object v12, v6

    .line 1251
    .local v12, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_a
    const-string v6, "BatteryStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure reading checkin file "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v14}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_17
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1257
    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1258
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1259
    .end local v17    # "reqUid":I
    if-eqz v28, :cond_19

    .line 1260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1262
    :cond_19
    monitor-exit v7

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v6

    .line 1264
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1265
    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move/from16 v16, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1266
    if-eqz v28, :cond_1b

    .line 1267
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1269
    :cond_1b
    monitor-exit v7

    goto/16 :goto_0

    :catchall_7
    move-exception v6

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v6

    .line 1250
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_2
    move-exception v6

    move-object v12, v6

    goto :goto_3
.end method

.method public enforceCallingPermission()V
    .locals 5

    .prologue
    .line 940
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryStat([I)[Landroid/os/Bundle;
    .locals 24
    .param p1, "uids"    # [I

    .prologue
    .line 1061
    const-string v6, "wakelock"

    .line 1062
    .local v6, "WAKELOCK":Ljava/lang/String;
    const-string v5, "gps_time"

    .line 1063
    .local v5, "GPS_TIME":Ljava/lang/String;
    const-string v4, "gps_count"

    .line 1064
    .local v4, "GPS_COUNT":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    const/16 v21, 0x3e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1065
    new-instance v20, Ljava/lang/SecurityException;

    const-string v21, "uid is not allow"

    invoke-direct/range {v20 .. v21}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1067
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v15, v0, [Landroid/os/Bundle;

    .line 1068
    .local v15, "result":[Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 1069
    .local v17, "which":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1070
    .local v10, "nowRealtime":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    aget v21, p1, v7

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v16

    .line 1072
    .local v16, "u":Landroid/os/BatteryStats$Uid;
    if-eqz v16, :cond_4

    .line 1073
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    aput-object v20, v15, v7

    .line 1075
    const-wide/16 v18, 0x0

    .line 1076
    .local v18, "wakelockTime":J
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v14

    .line 1077
    .local v14, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v14, :cond_3

    .line 1078
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1079
    .local v13, "pidBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 1080
    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1081
    .local v9, "key":I
    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Pid;

    .line 1082
    .local v12, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v0, v12, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-wide/from16 v22, v0

    iget v0, v12, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    move/from16 v20, v0

    if-lez v20, :cond_1

    iget-wide v0, v12, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    :goto_2
    add-long v18, v22, v20

    .line 1084
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1079
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1082
    :cond_1
    const-wide/16 v20, 0x0

    goto :goto_2

    .line 1086
    .end local v9    # "key":I
    .end local v12    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_2
    aget-object v20, v15, v7

    const-string v21, "wakelock"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1090
    .end local v8    # "j":I
    .end local v13    # "pidBundle":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    move-object/from16 v20, v0

    aget v21, p1, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1091
    aget-object v21, v15, v7

    const-string v22, "gps_count"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    move-object/from16 v20, v0

    aget v23, p1, v7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    .end local v14    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v18    # "wakelockTime":J
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1095
    .end local v16    # "u":Landroid/os/BatteryStats$Uid;
    :cond_5
    return-object v15
.end method

.method public getStatistics()[B
    .locals 5

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 305
    .local v1, "out":Landroid/os/Parcel;
    const-string v2, "get-stats"

    const/16 v3, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 306
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 308
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 310
    .local v0, "data":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    return-object v0

    .line 308
    .end local v0    # "data":[B
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BATTERY_STATS"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 320
    .local v2, "out":Landroid/os/Parcel;
    const-string v4, "get-stats"

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 321
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 322
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 325
    .local v0, "data":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 327
    :try_start_1
    const-string v4, "battery-stats"

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 330
    :goto_0
    return-object v3

    .line 323
    .end local v0    # "data":[B
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 328
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public initPowerManagement()V
    .locals 2

    .prologue
    .line 196
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 197
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V

    .line 199
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 200
    return-void
.end method

.method public isCharging()Z
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnBattery()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 398
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;I)V

    .line 400
    monitor-exit v1

    .line 401
    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteAlarmStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 391
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;I)V

    .line 393
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 433
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 436
    monitor-exit v12

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 547
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V

    .line 549
    monitor-exit v1

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteDeviceIdleMode(ZLjava/lang/String;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 870
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ZLjava/lang/String;I)V

    .line 872
    monitor-exit v1

    .line 873
    return-void

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 356
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 358
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFlashlightOff(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 660
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V

    .line 662
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFlashlightOn(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 653
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V

    .line 655
    monitor-exit v1

    .line 656
    return-void

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 754
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 756
    monitor-exit v1

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 796
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 761
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 763
    monitor-exit v1

    .line 764
    return-void

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 803
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 805
    monitor-exit v1

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 540
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteJobFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 384
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;I)V

    .line 386
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 377
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 379
    monitor-exit v1

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 2
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 554
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerState(IJ)V

    .line 556
    monitor-exit v1

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 854
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 856
    monitor-exit v1

    .line 857
    return-void

    .line 856
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteNetworkStatsEnabled()V
    .locals 2

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 862
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkStatsEnabledLocked()V

    .line 864
    monitor-exit v1

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePackageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 877
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;I)V

    .line 879
    monitor-exit v1

    .line 880
    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 884
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V

    .line 886
    monitor-exit v1

    .line 887
    return-void

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 582
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 584
    monitor-exit v1

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneOff()V
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 568
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneOn()V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 561
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 563
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 575
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 577
    monitor-exit v1

    .line 578
    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 589
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 590
    .local v0, "simState":I
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 592
    monitor-exit v2

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 270
    monitor-exit v1

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteProcessState(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStateLocked(Ljava/lang/String;II)V

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteResetAudio()V
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 639
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 641
    monitor-exit v1

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteResetCamera()V
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 681
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V

    .line 683
    monitor-exit v1

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteResetFlashlight()V
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 688
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V

    .line 690
    monitor-exit v1

    .line 691
    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteResetVideo()V
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 646
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 648
    monitor-exit v1

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 519
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 521
    monitor-exit v1

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 504
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 511
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 512
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 514
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    return-void

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteStartAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 611
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 613
    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 667
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartGps(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 477
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 478
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGpsLocked(I)V

    .line 480
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 481
    .local v1, "temp":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 482
    .local v0, "count":I
    if-eqz v1, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    :cond_0
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 486
    const/4 v0, 0x0

    .line 488
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 489
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    monitor-exit v3

    .line 492
    return-void

    .line 491
    .end local v0    # "count":I
    .end local v1    # "temp":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public noteStartSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 449
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 451
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 625
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 627
    monitor-exit v1

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 406
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 409
    monitor-exit v12

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 423
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 426
    monitor-exit v7

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 618
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 620
    monitor-exit v1

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 674
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V

    .line 676
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopGps(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 496
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGpsLocked(I)V

    .line 498
    monitor-exit v1

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 456
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 458
    monitor-exit v1

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 632
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 634
    monitor-exit v1

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 414
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v10

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 417
    monitor-exit v10

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 442
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 444
    monitor-exit v6

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 370
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 363
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 365
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteUserActivity(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 526
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 528
    monitor-exit v1

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteVibratorOff(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 470
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteVibratorOn(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 463
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 465
    monitor-exit v1

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 533
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V

    .line 535
    monitor-exit v1

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 824
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 826
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 831
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 833
    monitor-exit v1

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 789
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 791
    monitor-exit v1

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 846
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 848
    monitor-exit v1

    .line 849
    return-void

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 782
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 784
    monitor-exit v1

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 838
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 840
    monitor-exit v1

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiOff()V
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 604
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 606
    monitor-exit v1

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiOn()V
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 597
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 599
    monitor-exit v1

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiRadioPowerState(IJ)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 699
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-eq p1, v1, :cond_0

    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-ne p1, v1, :cond_2

    :cond_0
    const-string v0, "active"

    .line 704
    .local v0, "type":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi-data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleWifiSync(Ljava/lang/String;)V

    .line 706
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJ)V

    .line 707
    monitor-exit v2

    .line 708
    return-void

    .line 701
    :cond_2
    const-string v0, "inactive"

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .locals 2
    .param p1, "newRssi"    # I

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 747
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 749
    monitor-exit v1

    .line 750
    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 712
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 714
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 719
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 721
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStarted(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 768
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 770
    monitor-exit v1

    .line 771
    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 810
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 812
    monitor-exit v1

    .line 813
    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStopped(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 775
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 777
    monitor-exit v1

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 817
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 819
    monitor-exit v1

    .line 820
    return-void

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 733
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 735
    monitor-exit v1

    .line 736
    return-void

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 726
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 728
    monitor-exit v1

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 2
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 740
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 742
    monitor-exit v1

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLowPowerModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 184
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    .line 187
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfile(Lcom/android/internal/os/PowerProfile;)V

    .line 188
    const-string v0, "batterystats"

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 252
    monitor-exit v1

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleWriteToDisk()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendEmptyMessage(I)Z

    .line 242
    return-void
.end method

.method public setBatteryState(IIIIII)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 900
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    move-object v1, p0

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIII)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->post(Ljava/lang/Runnable;)Z

    .line 923
    invoke-direct {p0, p3, p4}, Lcom/android/server/am/BatteryStatsService;->sendIntentByLevel(II)V

    .line 925
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "shutdown"

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 206
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateExternalStats(Ljava/lang/String;I)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    .prologue
    .line 1409
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1413
    monitor-exit v10

    .line 1458
    :goto_0
    return-void

    .line 1420
    :cond_0
    const/4 v9, 0x0

    .line 1421
    .local v9, "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 1422
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v9

    .line 1425
    :cond_1
    const/4 v0, 0x0

    .line 1426
    .local v0, "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_2

    .line 1429
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1432
    :cond_2
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1434
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1435
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v1, :cond_3

    .line 1436
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v6, 0xe

    const/4 v8, 0x0

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 1440
    :cond_3
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    .line 1441
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    .line 1442
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 1445
    :cond_4
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_5

    .line 1446
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    .line 1449
    :cond_5
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_6

    .line 1450
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1453
    :cond_6
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_7

    .line 1454
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1456
    :cond_7
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1457
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .end local v0    # "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    .end local v9    # "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1456
    .restart local v0    # "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v9    # "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
