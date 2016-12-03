.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z = true

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mDeadline:J

.field private mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private final mKeyguardPackage:Ljava/lang/String;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 97
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 98
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 99
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDeadline:J

    .line 136
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    .line 857
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    .line 154
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 157
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 158
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 159
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 160
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDeadline:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    return-object v0
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    return-void
.end method

.method private addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 373
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 633
    const-string v4, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 635
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 636
    .local v0, "pid":I
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    :cond_0
    :goto_0
    return v2

    .line 639
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 640
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not a current user or profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 641
    goto :goto_0

    .line 643
    :cond_2
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; permission denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 646
    goto :goto_0

    .line 648
    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 649
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 650
    goto :goto_0
.end method

.method private cancelLockoutReset()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDeadline:J

    .line 327
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1147
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1149
    .local v1, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "service"

    const-string v9, "Fingerprint Manager"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1151
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1152
    .local v5, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1153
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1154
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 1155
    .local v0, "N":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1156
    .local v4, "set":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1157
    const-string v8, "count"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1158
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1162
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Lorg/json/JSONObject;
    .end local v5    # "sets":Lorg/json/JSONArray;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .line 1163
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "FingerprintService"

    const-string v9, "dump formatting failure"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1166
    return-void

    .line 1161
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sets":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v8, "prints"

    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v0, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "com.android.settings"

    iget-object v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :cond_2
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 355
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutReset()V

    .line 358
    if-eqz p1, :cond_3

    const/4 v0, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {p1, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 360
    const-string v0, "FingerprintService"

    const-string v1, "Cannot send lockout message to client"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private inLockoutMode()Z
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForegroundActivity(II)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 611
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 613
    .local v4, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 614
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 615
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 616
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 618
    const/4 v5, 0x1

    .line 624
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_1
    return v5

    .line 614
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private listenForUserSwitches()V
    .locals 3

    .prologue
    .line 1205
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :goto_0
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    .prologue
    .line 667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_0
    return-void
.end method

.method private removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v1, 0x0

    .line 293
    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    .line 295
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_2

    .line 296
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_3

    .line 298
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_0

    .line 300
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method private removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 369
    return-void
.end method

.method private resetAuthenticatePackageFlag()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "persist.sys.fp.user"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method private resetFailedAttempts()V
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "FingerprintService"

    const-string v1, "Reset fingerprint lockout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 341
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutReset()V

    .line 342
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 343
    return-void
.end method

.method private scheduleLockoutReset()V
    .locals 5

    .prologue
    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDeadline:J

    .line 316
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDeadline:J

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 319
    return-void
.end method

.method private setAuthenticatePackageFlag(Ljava/lang/String;)V
    .locals 2
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v0, "com.android.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "persist.sys.fp.user"

    const-string v1, "camera"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string v0, "persist.sys.fp.user"

    const-string v1, "others"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopPendingOperations(Z)V
    .locals 1
    .param p1, "initiatedByClient"    # Z

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 432
    :cond_1
    return-void
.end method

.method private updateActiveGroup(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 1178
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_0

    .line 1180
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result p1

    .line 1181
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 1182
    .local v3, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "fpdata"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1183
    .local v2, "fpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1184
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1185
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .end local v2    # "fpDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1191
    .restart local v2    # "fpDir":Ljava/io/File;
    .restart local v3    # "systemDir":Ljava/io/File;
    :cond_1
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1192
    const-string v4, "FingerprintService"

    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1197
    .end local v2    # "fpDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1196
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "fpDir":Ljava/io/File;
    .restart local v3    # "systemDir":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    .prologue
    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 285
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 286
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 166
    const-string v0, "FingerprintService"

    const-string v1, "fingerprintd died"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 168
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V

    .line 169
    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 4

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 1228
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_0

    .line 1230
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1235
    :goto_0
    return-wide v2

    .line 1231
    :catch_0
    move-exception v1

    .line 1232
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "getAuthenticatorId failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getEffectiveUserId(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 580
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 581
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 583
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    .end local v0    # "callingIdentity":J
    :goto_0
    return p1

    .line 586
    :cond_0
    const-string v3, "FingerprintService"

    const-string v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-nez v1, :cond_0

    .line 173
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 174
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-eqz v1, :cond_2

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 177
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 178
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 179
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 180
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    return-object v1

    .line 182
    :cond_1
    :try_start_1
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open fingeprintd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    iput-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    goto :goto_0

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleAcquired(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method

.method protected handleAuthenticated(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 235
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z
    invoke-static {v1, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$300(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 237
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 240
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method protected handleEnrollResult(JIII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 256
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-nez v3, :cond_2

    if-nez p5, :cond_2

    .line 257
    const-string v3, "FingerprintService"

    const-string v4, "need remove error fingerprint"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 259
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_1

    .line 260
    const-string v3, "FingerprintService"

    const-string v4, "startRemove: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_0
    :goto_0
    return-void

    .line 264
    .restart local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v2

    .line 266
    .local v2, "userId":I
    :try_start_0
    invoke-interface {v0, p3, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "startRemove failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 273
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "userId":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z
    invoke-static {v3, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    if-nez p5, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v3, p3}, Lcom/android/server/fingerprint/FingerprintService;->addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 277
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method

.method protected handleEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 197
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_0

    .line 198
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 219
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 230
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 224
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 227
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method

.method protected handleRemoved(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 208
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 211
    :cond_0
    if-eqz v0, :cond_1

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z
    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$100(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 214
    :cond_1
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 290
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 592
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 595
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 596
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_0

    .line 597
    const-string v4, "FingerprintService"

    const-string v6, "getEnabledProfiles null error"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 606
    :goto_0
    return v4

    .line 600
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 601
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 602
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_1

    .line 603
    const/4 v4, 0x1

    goto :goto_0

    .line 601
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    .line 606
    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 1170
    const-string v1, "fingerprint"

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 1172
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fingerprint HAL id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 1174
    return-void
.end method

.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z
    .param p8, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v9

    .line 466
    .local v9, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v9, :cond_1

    .line 467
    const-string v2, "FingerprintService"

    const-string v3, "startAuthentication: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 471
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p4

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 472
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 473
    const-string v2, "FingerprintService"

    const-string v3, "In lockout mode; disallowing authentication"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v3, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 475
    const-string v2, "FingerprintService"

    const-string v3, "Cannot send timeout message to client"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 482
    :cond_3
    :try_start_0
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->setAuthenticatePackageFlag(Ljava/lang/String;)V

    .line 484
    move/from16 v0, p4

    invoke-interface {v9, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v11

    .line 485
    .local v11, "result":I
    if-eqz v11, :cond_0

    .line 486
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAuthentication failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    .end local v11    # "result":I
    :catch_0
    move-exception v10

    .line 490
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "startAuthentication failed"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v7

    .line 378
    .local v7, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v7, :cond_1

    .line 379
    const-string v0, "FingerprintService"

    const-string v1, "enroll: no fingeprintd!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 383
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 384
    const/16 v10, 0x3c

    .line 386
    .local v10, "timeout":I
    const/16 v0, 0x3c

    :try_start_0
    invoke-interface {v7, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    move-result v9

    .line 387
    .local v9, "result":I
    if-eqz v9, :cond_0

    .line 388
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEnroll failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v9    # "result":I
    :catch_0
    move-exception v8

    .line 392
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "startEnroll failed"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 412
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 413
    const-string v3, "FingerprintService"

    const-string v4, "startPostEnroll: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return v2

    .line 417
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "startPostEnroll failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v2, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 398
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 399
    const-string v4, "FingerprintService"

    const-string v5, "startPreEnroll: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    return-wide v2

    .line 403
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "startPreEnroll failed"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "restricted"    # Z

    .prologue
    const/4 v0, 0x1

    .line 541
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v7

    .line 542
    .local v7, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v7, :cond_1

    .line 543
    const-string v0, "FingerprintService"

    const-string v1, "startRemove: no fingeprintd!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 548
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 551
    :try_start_0
    invoke-interface {v7, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v9

    .line 552
    .local v9, "result":I
    if-eqz v9, :cond_0

    .line 553
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRemove with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    .end local v9    # "result":I
    :catch_0
    move-exception v8

    .line 557
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "startRemove failed"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    .line 502
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_1

    .line 503
    const-string v4, "FingerprintService"

    const-string v5, "stopAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 507
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_0

    .line 508
    if-eqz p2, :cond_3

    .line 510
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v3

    .line 511
    .local v3, "result":I
    if-eqz v3, :cond_2

    .line 512
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v3    # "result":I
    :cond_2
    :goto_1
    const/4 v4, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 520
    :cond_3
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetAuthenticatePackageFlag()V

    .line 522
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "stopAuthentication failed"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    .line 442
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_1

    .line 443
    const-string v4, "FingerprintService"

    const-string v5, "stopEnrollment: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 447
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_0

    .line 448
    if-eqz p2, :cond_3

    .line 450
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    move-result v3

    .line 451
    .local v3, "result":I
    if-eqz v3, :cond_2

    .line 452
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startEnrollCancel failed, result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v3    # "result":I
    :cond_2
    :goto_1
    const/4 v4, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 459
    :cond_3
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "stopEnrollment failed"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
