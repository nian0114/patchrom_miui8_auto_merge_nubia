.class Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
.super Ljava/lang/Object;
.source "PowerAndVolumeScreenshotCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final FINGERPRINT_SUPER_SNAP:Ljava/lang/String; = "fingerprint_super_snap"

.field private static final MULTI_WINDOW:Ljava/lang/String; = "ss_multi_window_enabled"

.field private static final POWER_VOLUME_SCREENSHOT:Ljava/lang/String; = "power_volume_screenshot"

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "supersnapshot"


# instance fields
.field private mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentPkg:Ljava/lang/String;

.field private mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

.field private mFingerprintSnapshotEnable:Z

.field private mHandler:Landroid/os/Handler;

.field mLastVolumeDownKeyTime:J

.field mLastVolumeUpKeyTime:J

.field private final mLongPressRunnableVolDown:Ljava/lang/Runnable;

.field private final mLongPressRunnableVolUp:Ljava/lang/Runnable;

.field private mLongPressVolDownPwr:Z

.field private mLongPressVolUpPwr:Z

.field private mMultiWindowEnable:Z

.field private mPackageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerAndVolumeDownTime:J

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private mPowerKeyUpBeforeTimeout:Z

.field private mScreenshotEnable:Z

.field private final mScreenshotForLog:Ljava/lang/Runnable;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field private mSettingScreenshotEnable:Z

.field private final mShowToastRunnable:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FeatureFunctionManager;Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 8
    .param p1, "featureManager"    # Lcom/android/server/policy/FeatureFunctionManager;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v1, v0, v3

    const-string v1, "com.android.settings.fingerprint.FingerprintIdentifyActivity"

    aput-object v1, v0, v4

    const-string v1, "com.alipay.android.phone.fingerprint.FingerprintSettingMainActivity"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.tencent.mm/.plugin.wallet.pwd.ui.WalletPasswordSettingUI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.tencent.mm/.plugin.fingerprint.ui.FingerPrintAuthUI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.tencent.mm/.plugin.wallet.balance.ui.WalletBalanceFetchPwdInputUI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.fingerprint.FingerprintEnrollFinish"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.fingerprint.FingerprintEnrollEnrolling"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityBlackList:Ljava/util/List;

    .line 64
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "cn.nubia.testtest"

    aput-object v1, v0, v3

    const-string v1, "cn.nubia.testtest1"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPackageBlackList:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolDown:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolUp:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$4;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mShowToastRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$5;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    .line 310
    iput-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    .line 311
    iput-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    .line 135
    iput-object p3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 137
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingShowToast()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mSettingScreenshotEnable:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mShowToastRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotForLog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    return p1
.end method

.method private cancelPendingLongPressRunnableVolDown()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolDown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method private cancelPendingLongPressRunnableVolUp()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method private cancelPendingScreenshotForLog()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method private cancelPendingShowToast()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mShowToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method private closeOriginScreenshot()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setScreenshotChordEnabled(Z)V

    .line 143
    return-void
.end method

.method private getCurrentActivity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentActivity:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCurrentPkg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentPkg:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptScreenshotChord()V
    .locals 12

    .prologue
    .line 253
    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-nez v1, :cond_0

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 256
    .local v2, "now":J
    iput-wide v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    .line 257
    iget-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    const-wide/16 v8, 0x96

    add-long/2addr v6, v8

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    iget-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    const-wide/16 v8, 0x96

    add-long/2addr v6, v8

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 259
    const-string v1, "supersnapshot"

    const-string v6, "POWER AND VOLUME DOWN AT THE SAME TIME."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 261
    iget-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    iget-wide v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    .line 262
    .local v4, "startTime":J
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v0, "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "powerandvolume"

    const-string v6, "interval"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v6

    const-string v7, "supersnapshot_powerandvolume_interval"

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_3

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    :goto_1
    invoke-virtual {v6, v7, v0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V

    .line 266
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolDown:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    sub-long v10, v2, v4

    sub-long/2addr v8, v10

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    .end local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "now":J
    .end local v4    # "startTime":J
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-nez v1, :cond_1

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 272
    .restart local v2    # "now":J
    iput-wide v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    .line 273
    iget-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    const-wide/16 v8, 0x96

    add-long/2addr v6, v8

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    iget-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    const-wide/16 v8, 0x96

    add-long/2addr v6, v8

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    .line 275
    const-string v1, "supersnapshot"

    const-string v6, "POWER AND VOLUME UP AT THE SAME TIME."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 277
    iget-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    iget-wide v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    .line 278
    .restart local v4    # "startTime":J
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    .restart local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "powerandvolume"

    const-string v6, "interval"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v6

    const-string v7, "supersnapshot_powerandvolume_interval"

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_5

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    :goto_3
    invoke-virtual {v6, v7, v0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V

    .line 282
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolUp:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    sub-long v10, v2, v4

    sub-long/2addr v8, v10

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    .end local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "now":J
    .end local v4    # "startTime":J
    :cond_1
    return-void

    .line 261
    .restart local v2    # "now":J
    :cond_2
    iget-wide v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    goto/16 :goto_0

    .line 264
    .restart local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "startTime":J
    :cond_3
    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    iget-wide v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    goto/16 :goto_1

    .line 277
    .end local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "startTime":J
    :cond_4
    iget-wide v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    goto :goto_2

    .line 280
    .restart local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "startTime":J
    :cond_5
    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    iget-wide v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    goto :goto_3
.end method

.method private isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPackageBlackList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    const-string v0, "supersnapshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not allowed to start supersnap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 22
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 339
    .local v8, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    .line 340
    .local v6, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v4, 0x1

    .line 341
    .local v4, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    .line 346
    .local v12, "repeatCount":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mFingerprintSnapshotEnable:Z

    if-eqz v13, :cond_0

    if-eqz v4, :cond_0

    const/16 v13, 0x85

    if-ne v8, v13, :cond_0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mMultiWindowEnable:Z

    if-nez v13, :cond_2

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->getCurrentActivity()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->getCurrentPkg()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 349
    const-string v13, "supersnapshot"

    const-string v18, "about to enter freesnap"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v13

    const-string v18, "fingerprint_start_supersnapshot"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lnubia/util/FrameworkDataStatisticsManager;->onEventWithStartOnce(Ljava/lang/String;)V

    .line 352
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v7, "intent":Landroid/content/Intent;
    const-string v13, "cn.nubia.action.supersnap.takescreenshot"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v13, "enterPattern"

    const-string v18, "fingerprintService"

    move-object/from16 v0, v18

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v13, "cn.nubia.supersnap"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v13, :cond_10

    and-int/lit16 v13, v6, 0x400

    if-nez v13, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v13, :cond_4

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 371
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x96

    add-long v16, v18, v20

    .line 374
    .local v16, "timeoutTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    .line 375
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    .line 376
    const-wide/16 v18, 0x1c2

    cmp-long v13, v14, v18

    if-gez v13, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-lez v13, :cond_3

    .line 377
    const-wide/16 v18, 0x0

    .line 448
    .end local v10    # "now":J
    .end local v14    # "time":J
    .end local v16    # "timeoutTime":J
    :goto_2
    return-wide v18

    .line 340
    .end local v4    # "down":Z
    .end local v12    # "repeatCount":I
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 358
    .restart local v4    # "down":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v12    # "repeatCount":I
    :catch_0
    move-exception v5

    .line 359
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "supersnapshot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception occured while trying to start super snapshot"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 365
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mShowToastRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 380
    .restart local v10    # "now":J
    .restart local v14    # "time":J
    .restart local v16    # "timeoutTime":J
    :cond_3
    cmp-long v13, v10, v16

    if-gez v13, :cond_4

    .line 381
    sub-long v18, v16, v10

    goto :goto_2

    .line 384
    .end local v10    # "now":J
    .end local v14    # "time":J
    .end local v16    # "timeoutTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v13, :cond_6

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 386
    .restart local v10    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x96

    add-long v16, v18, v20

    .line 389
    .restart local v16    # "timeoutTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    .line 390
    .restart local v14    # "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    .line 391
    const-wide/16 v18, 0x1c2

    cmp-long v13, v14, v18

    if-gez v13, :cond_5

    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-lez v13, :cond_5

    .line 392
    const-wide/16 v18, 0x0

    goto :goto_2

    .line 395
    :cond_5
    cmp-long v13, v10, v16

    if-gez v13, :cond_6

    .line 396
    sub-long v18, v16, v10

    goto/16 :goto_2

    .line 399
    .end local v10    # "now":J
    .end local v14    # "time":J
    .end local v16    # "timeoutTime":J
    :cond_6
    const/16 v13, 0x19

    if-ne v8, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v13, :cond_b

    .line 401
    :cond_7
    if-nez v4, :cond_8

    .line 402
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v13, :cond_9

    .line 403
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    .line 421
    :cond_8
    :goto_3
    const-wide/16 v18, -0x1

    goto/16 :goto_2

    .line 405
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    if-nez v13, :cond_a

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 407
    .restart local v10    # "now":J
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v9, "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "powerandvolumeonekeyup"

    const-string v18, "interval"

    move-object/from16 v0, v18

    invoke-interface {v9, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v13

    const-string v18, "supersnapshot_powerandvolumeonekeyup"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v9, v1}, Lnubia/util/FrameworkDataStatisticsManager;->onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V

    .line 411
    const-string v13, "supersnapshot"

    const-string v18, "VOLUME DOWN KEY UP BEFORE TIMEOUT"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolDown()V

    .line 413
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 418
    .end local v9    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "now":J
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    goto :goto_3

    .line 423
    :cond_b
    const/16 v13, 0x18

    if-ne v8, v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v13, :cond_10

    .line 425
    :cond_c
    if-nez v4, :cond_d

    .line 426
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v13, :cond_e

    .line 427
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    .line 445
    :cond_d
    :goto_4
    const-wide/16 v18, -0x1

    goto/16 :goto_2

    .line 429
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    if-nez v13, :cond_f

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 431
    .restart local v10    # "now":J
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 432
    .restart local v9    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "powerandvolumeonekeyup"

    const-string v18, "interval"

    move-object/from16 v0, v18

    invoke-interface {v9, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v13

    const-string v18, "supersnapshot_powerandvolumeonekeyup"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v9, v1}, Lnubia/util/FrameworkDataStatisticsManager;->onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V

    .line 435
    const-string v13, "supersnapshot"

    const-string v18, "VOLUME UP KEY UP BEFORE TIMEOUT"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolUp()V

    .line 437
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 442
    .end local v9    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "now":J
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    goto :goto_4

    .line 448
    :cond_10
    const-wide/high16 v18, -0x8000000000000000L

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 147
    iget-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-nez v3, :cond_0

    const-wide/high16 v6, -0x8000000000000000L

    .line 212
    :goto_0
    return-wide v6

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 149
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x1

    .line 150
    .local v0, "down":Z
    :goto_1
    const/16 v3, 0x19

    if-ne v1, v3, :cond_1

    .line 151
    if-eqz v0, :cond_5

    .line 152
    if-eqz p3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    .line 153
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    .line 154
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    .line 155
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 156
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    .line 162
    :cond_1
    :goto_2
    const/16 v3, 0x18

    if-ne v1, v3, :cond_2

    .line 163
    if-eqz v0, :cond_6

    .line 164
    if-eqz p3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_2

    .line 165
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    .line 166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    .line 167
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 168
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    .line 174
    :cond_2
    :goto_3
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_3

    .line 175
    if-eqz v0, :cond_7

    .line 176
    if-eqz p3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_3

    .line 178
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    .line 179
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    .line 180
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    .line 212
    :cond_3
    :goto_4
    const-wide/high16 v6, -0x8000000000000000L

    goto :goto_0

    .line 149
    .end local v0    # "down":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    .restart local v0    # "down":Z
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    goto :goto_2

    .line 171
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    goto :goto_3

    .line 183
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v3, :cond_8

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 185
    .local v4, "now":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v2, "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "powerandvolumeonekeyup"

    const-string v6, "interval"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v3

    const-string v6, "supersnapshot_powerandvolumeonekeyup"

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    sub-long v8, v4, v8

    long-to-int v7, v8

    invoke-virtual {v3, v6, v2, v7}, Lnubia/util/FrameworkDataStatisticsManager;->onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V

    .line 189
    const-string v3, "supersnapshot"

    const-string v6, "POWER KEY UP BEFORE TIMEOUT"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolDown()V

    .line 191
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 192
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V

    .line 193
    iget-object v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    .line 196
    .end local v2    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "now":J
    :cond_8
    iget-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    if-eqz v3, :cond_9

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 198
    .restart local v4    # "now":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    .restart local v2    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "powerandvolumeonekeyup"

    const-string v6, "interval"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v3

    const-string v6, "supersnapshot_powerandvolumeonekeyup"

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    sub-long v8, v4, v8

    long-to-int v7, v8

    invoke-virtual {v3, v6, v2, v7}, Lnubia/util/FrameworkDataStatisticsManager;->onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V

    .line 202
    const-string v3, "supersnapshot"

    const-string v6, "POWER KEY UP BEFORE TIMEOUT"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolUp()V

    .line 204
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 205
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V

    .line 206
    iget-object v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    .line 209
    .end local v2    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "now":J
    :cond_9
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    goto/16 :goto_4
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 218
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->closeOriginScreenshot()V

    .line 219
    const-string v0, "power_volume_screenshot"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 222
    const-string v0, "fingerprint_super_snap"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 225
    const-string v0, "ss_multi_window_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 228
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v0, "supersnapshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current activity: clazzName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentActivity:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentPkg:Ljava/lang/String;

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_volume_screenshot"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_super_snap"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mFingerprintSnapshotEnable:Z

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ss_multi_window_enabled"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mMultiWindowEnable:Z

    .line 239
    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mMultiWindowEnable:Z

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mSettingScreenshotEnable:Z

    .line 240
    const-string v0, "supersnapshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update settings: mFingerprintSnapshotEnable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mFingerprintSnapshotEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    :cond_0
    move v0, v2

    .line 232
    goto :goto_0

    :cond_1
    move v0, v2

    .line 234
    goto :goto_1

    :cond_2
    move v0, v2

    .line 237
    goto :goto_2

    :cond_3
    move v2, v1

    .line 239
    goto :goto_3
.end method
