.class public Lcom/android/server/policy/DoubleClickScreenOnCtrl;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dbStatus:I

.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mPowerManager:Landroid/os/PowerManager;

.field mProximity:Landroid/hardware/Sensor;

.field mProximityakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorEventLister:Landroid/hardware/SensorEventListener;

.field mWaitTimeouthandler:Landroid/os/Handler;

.field runnable:Ljava/lang/Runnable;

.field sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "DoubleClickScreenOnCtrl"

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->TAG:Ljava/lang/String;

    .line 40
    iput v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->dbStatus:I

    .line 50
    new-instance v0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;-><init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->runnable:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;-><init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    .line 61
    iput-object p1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 62
    iput-object p2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximity:Landroid/hardware/Sensor;

    .line 68
    new-instance v0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;

    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;-><init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    .line 75
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPowerManager:Landroid/os/PowerManager;

    .line 77
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DoubleClickScreenOnCtrl prox"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->turnScreenOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;
    .param p1, "x1"    # Landroid/hardware/SensorManager;
    .param p2, "x2"    # Landroid/hardware/SensorEventListener;
    .param p3, "x3"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    return-void
.end method

.method private disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    .locals 4
    .param p1, "sm"    # Landroid/hardware/SensorManager;
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;
    .param p3, "sleep"    # Z

    .prologue
    .line 175
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->releaseWakeLock()V

    .line 177
    if-eqz p3, :cond_0

    .line 178
    const-string v0, "DoubleClickScreenOnCtrl"

    const-string v1, "disableProximity : go to sleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 182
    :cond_0
    return-void
.end method

.method private enableDoubleClickWake(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 104
    :try_start_0
    const-string v2, "DoubleClickScreenOnCtrl"

    const-string v3, "wakeup needed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    const-string v3, "system_access"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnubia/os/SystemAccessManager;

    .line 107
    .local v1, "systemAccessManager":Lnubia/os/SystemAccessManager;
    invoke-virtual {v1, p1}, Lnubia/os/SystemAccessManager;->enableWakeGesture(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "systemAccessManager":Lnubia/os/SystemAccessManager;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DoubleClickScreenOnCtrl"

    const-string v3, "enableDoubleClickWake failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximity(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "sm"    # Landroid/hardware/SensorManager;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->getWakeLock()V

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 171
    return-void
.end method

.method private getWakeLock()V
    .locals 4

    .prologue
    .line 196
    const-string v0, "DoubleClickScreenOnCtrl"

    const-string v1, "getWakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 198
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "DoubleClickScreenOnCtrl"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    :cond_0
    return-void
.end method

.method private turnScreenOn()V
    .locals 4

    .prologue
    .line 185
    const-string v1, "DoubleClickScreenOnCtrl"

    const-string v2, "turnScreenOn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x3000001a

    const-string v3, "DoubleClickScreenOnCtrl"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 190
    .local v0, "doubleClickWake":Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 191
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 192
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 193
    return-void
.end method


# virtual methods
.method public handleWakeupKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isScreenOn"    # Z

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x8c

    if-eq v2, v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 131
    .local v1, "telephonyManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const-string v2, "DoubleClickScreenOnCtrl"

    const-string v3, "double click error because phone status"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "telephonyManager":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "DoubleClickScreenOnCtrl"

    const-string v3, "getPhoneInterface() error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->runnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximity:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->enableProximity(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 116
    invoke-virtual {p0, p1, p3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->handleWakeupKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 117
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 85
    const-string v0, "double_click_wake"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    return-void
.end method

.method public updateSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    iget-object v4, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "double_click_wake"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 95
    .local v0, "doubleClickWake":I
    iget v4, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->dbStatus:I

    if-eq v4, v0, :cond_0

    .line 96
    iput v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->dbStatus:I

    .line 97
    iget v4, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->dbStatus:I

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->enableDoubleClickWake(Z)V

    .line 99
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 97
    goto :goto_0
.end method
