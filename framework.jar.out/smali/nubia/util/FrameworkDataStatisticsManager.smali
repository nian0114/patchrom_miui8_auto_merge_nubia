.class public Lnubia/util/FrameworkDataStatisticsManager;
.super Ljava/lang/Object;
.source "FrameworkDataStatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/util/FrameworkDataStatisticsManager$StartOnce;,
        Lnubia/util/FrameworkDataStatisticsManager$OnPause;,
        Lnubia/util/FrameworkDataStatisticsManager$OnResume;,
        Lnubia/util/FrameworkDataStatisticsManager$OnPageEnd;,
        Lnubia/util/FrameworkDataStatisticsManager$OnPageStart;,
        Lnubia/util/FrameworkDataStatisticsManager$OpenActivityDurationTrack;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEventValue;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEvent3;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEvent2WithStartOnce;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEventWithStartOnce;,
        Lnubia/util/FrameworkDataStatisticsManager$OnEvent;,
        Lnubia/util/FrameworkDataStatisticsManager$SetSessionContinueMillis;,
        Lnubia/util/FrameworkDataStatisticsManager$SetDebugMode;,
        Lnubia/util/FrameworkDataStatisticsManager$EnableEncrypt;,
        Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;,
        Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;
    }
.end annotation


# static fields
.field private static final BIND_DURATION_TIME:J = 0x2bf20L

.field private static final FRAMEWORKDATASTATISTICSSERVICE_CLASS:Ljava/lang/String; = "cn.nubia.frameworkdatastatisticsservice.FrameworkDataStatisticsService"

.field private static final FRAMEWORKDATASTATISTICSSERVICE_PACKAGE:Ljava/lang/String; = "cn.nubia.frameworkdatastatisticsservice"

.field private static final HANDLE_SERVICE_RUNNABLE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final UNBIND_SERVICE:I = 0x1

.field private static volatile sInstance:Lnubia/util/FrameworkDataStatisticsManager;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

.field private volatile mIsValidService:Z

.field private volatile mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

.field private mRunnableQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lnubia/util/FrameworkDataStatisticsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnubia/util/FrameworkDataStatisticsManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lnubia/util/FrameworkDataStatisticsManager;->sInstance:Lnubia/util/FrameworkDataStatisticsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    iput-object v3, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRunnableQ:Ljava/util/LinkedList;

    new-instance v1, Lnubia/util/FrameworkDataStatisticsManager$2;

    invoke-direct {v1, p0}, Lnubia/util/FrameworkDataStatisticsManager$2;-><init>(Lnubia/util/FrameworkDataStatisticsManager;)V

    iput-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lnubia/util/FrameworkDataStatisticsManager;->isValidRemoteService(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    iget-boolean v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRunnableQ:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lnubia/util/FrameworkDataStatisticsManager;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;-><init>(Lnubia/util/FrameworkDataStatisticsManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    new-instance v1, Lnubia/util/FrameworkDataStatisticsManager$StartOnce;

    invoke-direct {v1, v3}, Lnubia/util/FrameworkDataStatisticsManager$StartOnce;-><init>(Lnubia/util/FrameworkDataStatisticsManager$1;)V

    invoke-direct {p0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    :cond_0
    sget-object v1, Lnubia/util/FrameworkDataStatisticsManager;->TAG:Ljava/lang/String;

    const-string v2, "cn.nubia.frameworkdatastatisticsservice.FrameworkDataStatisticsService is valid Service!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lnubia/util/FrameworkDataStatisticsManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/util/FrameworkDataStatisticsManager;

    .prologue
    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->unBind()V

    return-void
.end method

.method static synthetic access$100(Lnubia/util/FrameworkDataStatisticsManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/util/FrameworkDataStatisticsManager;

    .prologue
    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->handleServiceRunnable()V

    return-void
.end method

.method static synthetic access$200(Lnubia/util/FrameworkDataStatisticsManager;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lnubia/util/FrameworkDataStatisticsManager;

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRunnableQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/util/FrameworkDataStatisticsManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/util/FrameworkDataStatisticsManager;

    .prologue
    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->scheduleNextRun()V

    return-void
.end method

.method static synthetic access$402(Lnubia/util/FrameworkDataStatisticsManager;Lnubia/util/IFrameworkDataStatisticsService;)Lnubia/util/IFrameworkDataStatisticsService;
    .locals 0
    .param p0, "x0"    # Lnubia/util/FrameworkDataStatisticsManager;
    .param p1, "x1"    # Lnubia/util/IFrameworkDataStatisticsService;

    .prologue
    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    return-object p1
.end method

.method private cancelUnbind()V
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->removeMessages(I)V

    return-void
.end method

.method private dealInvalidService()V
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRunnableQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->removeMessages(I)V

    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->removeMessages(I)V

    return-void
.end method

.method private doBind()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "isSuccess":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.frameworkdatastatisticsservice"

    const-string v3, "cn.nubia.frameworkdatastatisticsservice.FrameworkDataStatisticsService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lnubia/util/FrameworkDataStatisticsManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnubia/util/FrameworkDataStatisticsManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lnubia/util/FrameworkDataStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnubia/util/FrameworkDataStatisticsManager;->isValidRemoteService(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    sget-object v2, Lnubia/util/FrameworkDataStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind to Remote Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public static getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lnubia/util/FrameworkDataStatisticsManager;->sInstance:Lnubia/util/FrameworkDataStatisticsManager;

    if-nez v0, :cond_1

    const-class v1, Lnubia/util/FrameworkDataStatisticsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnubia/util/FrameworkDataStatisticsManager;->sInstance:Lnubia/util/FrameworkDataStatisticsManager;

    if-nez v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager;

    invoke-direct {v0, p0}, Lnubia/util/FrameworkDataStatisticsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnubia/util/FrameworkDataStatisticsManager;->sInstance:Lnubia/util/FrameworkDataStatisticsManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lnubia/util/FrameworkDataStatisticsManager;->sInstance:Lnubia/util/FrameworkDataStatisticsManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleRunnaleQ()V
    .locals 2

    .prologue
    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRunnableQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;

    .local v0, "r":Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->cancelUnbind()V

    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRunnableQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->scheduleNextRun()V

    :goto_0
    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->tryRun(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->scheduleUnbind()V

    goto :goto_0
.end method

.method private handleServiceRunnable()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->handleRunnaleQ()V

    :goto_0
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->dealInvalidService()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager;->doBind()Z

    goto :goto_0
.end method

.method private static haveCommonSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName1"    # Ljava/lang/String;
    .param p2, "packageName2"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lnubia/util/FrameworkDataStatisticsManager;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "sign1":Ljava/lang/String;
    invoke-static {p0, p2}, Lnubia/util/FrameworkDataStatisticsManager;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "sign2":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static haveService(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidRemoteService(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.frameworkdatastatisticsservice"

    const-string v2, "cn.nubia.frameworkdatastatisticsservice.FrameworkDataStatisticsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->haveService(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.nubia.frameworkdatastatisticsservice"

    invoke-static {p0, v0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->haveCommonSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V
    .locals 2
    .param p1, "r"    # Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    new-instance v1, Lnubia/util/FrameworkDataStatisticsManager$1;

    invoke-direct {v1, p0, p1}, Lnubia/util/FrameworkDataStatisticsManager$1;-><init>(Lnubia/util/FrameworkDataStatisticsManager;Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleNextRun()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->removeMessages(I)V

    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private scheduleUnbind()V
    .locals 4

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mHandler:Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private tryRun(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V
    .locals 2
    .param p1, "r"    # Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;

    .prologue
    :try_start_0
    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    invoke-interface {p1, v1}, Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;->run(Lnubia/util/IFrameworkDataStatisticsService;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/DeadObjectException;
    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnubia/util/FrameworkDataStatisticsManager;->isValidRemoteService(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnubia/util/FrameworkDataStatisticsManager;->isValidRemoteService(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unBind()V
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lnubia/util/FrameworkDataStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "The client is already unbindService cn.nubia.frameworkdatastatisticsservice.FrameworkDataStatisticsService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enableEncrypt(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$EnableEncrypt;

    invoke-direct {v0, p1}, Lnubia/util/FrameworkDataStatisticsManager$EnableEncrypt;-><init>(Z)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public isBindSuccess()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent;

    invoke-direct {v0, p1}, Lnubia/util/FrameworkDataStatisticsManager$OnEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;

    invoke-direct {v0, p1, p2}, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3;

    invoke-direct {v0, p1, p2}, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onEventValue(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValue;

    invoke-direct {v0, p1, p2, p3}, Lnubia/util/FrameworkDataStatisticsManager$OnEventValue;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;

    invoke-direct {v0, p1, p2, p3}, Lnubia/util/FrameworkDataStatisticsManager$OnEventValueWithStartOnce;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onEventWithStartOnce(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEventWithStartOnce;

    invoke-direct {v0, p1}, Lnubia/util/FrameworkDataStatisticsManager$OnEventWithStartOnce;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onEventWithStartOnce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2WithStartOnce;

    invoke-direct {v0, p1, p2}, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2WithStartOnce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onEventWithStartOnce(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;

    invoke-direct {v0, p1, p2}, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onPageEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnPageEnd;

    invoke-direct {v0, p1}, Lnubia/util/FrameworkDataStatisticsManager$OnPageEnd;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnPageStart;

    invoke-direct {v0, p1}, Lnubia/util/FrameworkDataStatisticsManager$OnPageStart;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnPause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$OnPause;-><init>(Lnubia/util/FrameworkDataStatisticsManager$1;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OnResume;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$OnResume;-><init>(Lnubia/util/FrameworkDataStatisticsManager$1;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public openActivityDurationTrack(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$OpenActivityDurationTrack;

    invoke-direct {v0, p1}, Lnubia/util/FrameworkDataStatisticsManager$OpenActivityDurationTrack;-><init>(Z)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$SetDebugMode;

    invoke-direct {v0, p1}, Lnubia/util/FrameworkDataStatisticsManager$SetDebugMode;-><init>(Z)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public setSessionContinueMillis(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$SetSessionContinueMillis;

    invoke-direct {v0, p1, p2}, Lnubia/util/FrameworkDataStatisticsManager$SetSessionContinueMillis;-><init>(J)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method

.method public startOnce()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager;->mIsValidService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/util/FrameworkDataStatisticsManager$StartOnce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager$StartOnce;-><init>(Lnubia/util/FrameworkDataStatisticsManager$1;)V

    invoke-direct {p0, v0}, Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V

    :cond_0
    return-void
.end method
