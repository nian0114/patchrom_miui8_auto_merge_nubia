.class public final Lcn/nubia/server/appmgmt/ApplicationManagerService;
.super Lcn/nubia/server/NubiaSystemService;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;
    }
.end annotation


# static fields
.field private static final DATA_SCHEME:Ljava/lang/String; = "package"

.field private static final DATA_SSP:Ljava/lang/String; = "cn.nubia.security2"

.field private static final FILE_PATH:Ljava/lang/String; = "data/system/rom_version.txt"

.field public static final TAG:Ljava/lang/String; = "ApplicationManagerService"


# instance fields
.field private mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

.field private mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

.field private mCABCController:Lcn/nubia/server/appmgmt/CABCController;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

.field private mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

.field private final mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

.field private mSyncController:Lcn/nubia/server/appmgmt/SyncController;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationManagerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    .line 109
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->updateAllControllersData()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private createAllControllers()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationPushController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 83
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 84
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/CABCController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    .line 85
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/SyncController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    .line 86
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 87
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .line 88
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/MotionDozeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 89
    return-void
.end method

.method private dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 287
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump meminfo from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void

    .line 295
    :cond_1
    const/4 v1, 0x0

    .line 296
    .local v1, "opti":I
    :cond_2
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 297
    aget-object v0, p3, v1

    .line 298
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 302
    const-string v2, "-list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpListArray(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 304
    :cond_3
    const-string v2, "-debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpDebug(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method private dumpDebug(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 332
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "ApplicationManagerService has already set to debug status"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    .line 336
    const-string v0, "set to debug successful,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 311
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 317
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 320
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SyncController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 323
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 326
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v0, :cond_5

    .line 327
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 329
    :cond_5
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    const-string v1, "cn.nubia.security2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 124
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method private updateAllControllersData()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->updateNubiaData()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->updateNubiaData()V

    .line 98
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/CABCController;->updateNubiaData()V

    .line 101
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->updateNubiaData()V

    .line 104
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->updateNubiaData()V

    .line 107
    :cond_4
    return-void
.end method

.method private updateDataForFota()V
    .locals 6

    .prologue
    .line 128
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->getBuildString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "currentVersion":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "data/system/rom_version.txt"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    const-string v3, "data/system/rom_version.txt"

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "oldVersion":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    const-string v3, "ApplicationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fota update rom version from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v3, "data/system/rom_version.txt"

    invoke-static {v3, v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->updateAllControllersData()V

    .line 144
    .end local v2    # "oldVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v3, "ApplicationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fota from no version to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v3, "data/system/rom_version.txt"

    invoke-static {v3, v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->updateAllControllersData()V

    goto :goto_0
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "nubia.application.manager"

    return-object v0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->getBuildType()I

    move-result v0

    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    if-ne v0, v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->createAllControllers()V

    .line 72
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->registerReceiver()V

    .line 73
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->updateDataForFota()V

    goto :goto_0
.end method
