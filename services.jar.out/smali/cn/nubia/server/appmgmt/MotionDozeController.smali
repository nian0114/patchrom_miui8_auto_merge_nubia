.class public Lcn/nubia/server/appmgmt/MotionDozeController;
.super Ljava/lang/Object;
.source "MotionDozeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;,
        Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;,
        Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;,
        Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;
    }
.end annotation


# static fields
.field private static final STATE_DOZE:I = 0x2

.field private static final STATE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotionDozeController"


# instance fields
.field private mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

.field private mCharging:Z

.field private mChargingStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDumpDebugLog:Z

.field private mEnterMotionDozeIntent:Landroid/content/Intent;

.field private mGPSLocationUpdateEnabled:Z

.field private mGetSigMotion:Z

.field private mHandler:Landroid/os/Handler;

.field private mLeaveMotionDozeIntent:Landroid/content/Intent;

.field private mLock:Ljava/lang/Object;

.field private mMotionApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageProcessCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageProcessUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPeriodicAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;

.field private mRunningMotionApp:Z

.field private mRunningMotionApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSigMotionActive:Z

.field private mSigMotionListener:Landroid/hardware/TriggerEventListener;

.field private mSigMotionSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApps:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    iput v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.server.appmgmt.ENTER_MOTION_DOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mEnterMotionDozeIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.server.appmgmt.LEAVE_MOTION_DOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLeaveMotionDozeIntent:Landroid/content/Intent;

    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/MotionDozeController$1;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    invoke-direct {v0, p0, v4}, Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;

    invoke-direct {v0, p0, v4}, Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPeriodicAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$PeriodicAdjustStateRunnable;

    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;

    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mChargingStateReceiver:Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;

    invoke-direct {v1, p0, v4}, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "com.hupu.joggers"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "com.codoon.gps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.hm.health"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "com.yuedong.sport"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "cn.ledongli.ldl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "com.mandian.android.dongdong"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "co.runner.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "come.nike.plusgpschina"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "me.chunyu.Pedometer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "com.huawei.bone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    const-string v1, "com.imohoo.shanpao"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/MotionDozeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    return v0
.end method

.method static synthetic access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    return p1
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/MotionDozeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->adjustState()V

    return-void
.end method

.method private adjustState()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "MotionDozeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustState, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRunningMotionApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGPSLocationUpdateEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSigMotionActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGetSigMotion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    if-ne v0, v4, :cond_7

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    const-string v0, "MotionDozeController"

    const-string v1, "Enter motion doze"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mEnterMotionDozeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->startMonitoringSignificantMotion()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->stopMonitoringSignificantMotion()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_2

    :cond_6
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->stopMonitoringSignificantMotion()V

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->startMonitoringSignificantMotion()V

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    if-eqz v0, :cond_2

    :cond_9
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_a

    const-string v0, "MotionDozeController"

    const-string v1, "Leave motion doze"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCurrentState:I

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLeaveMotionDozeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGetSigMotion:Z

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->stopMonitoringSignificantMotion()V

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eqz v0, :cond_2

    :cond_b
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mScreenOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mCharging:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/MotionDozeController;->startMonitoringSignificantMotion()V

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startMonitoringSignificantMotion()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "MotionDozeController"

    const-string v1, "startMonitoringSignificantMotion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    :cond_1
    return-void
.end method

.method private stopMonitoringSignificantMotion()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "MotionDozeController"

    const-string v1, "stopMonitoringSignificantMotion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mSigMotionActive:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "u":I
    if-ne v2, p1, :cond_1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v4

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "u":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;)V

    .local v0, "nrpr":Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "nspr":Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestGPSLocationUpdate(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mGPSLocationUpdateEnabled:Z

    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z

    return-void
.end method
