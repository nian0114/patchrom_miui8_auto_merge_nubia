.class public final Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final NUBIA_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtime:J

.field mBatteryTimeRemaining:J

.field mBatteryUptime:J

.field mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mChargeTimeRemaining:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mGpuPowerCalculator:Lcom/android/internal/os/GpuPowerCalculator;

.field mHasBluetoothPowerReporting:Z

.field mHasWifiPowerReporting:Z

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field private mMinDrainedPower:D

.field mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtime:J

.field mRawUptime:J

.field mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mTypeBatteryRealtime:J

.field mTypeBatteryUptime:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiOnly:Z

.field mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z

    .prologue
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z
    .param p3, "wifiOnly"    # Z

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    return-void
.end method

.method private VerifyComposePower()V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v8, v8, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double v10, v2, v8

    .local v10, "sumMiscPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v8, v8, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    add-double v16, v2, v8

    .local v16, "dataPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    add-double v14, v2, v8

    .local v14, "corePower":D
    add-double v4, v16, v14

    .local v4, "sumPower":D
    add-double v20, v10, v4

    .local v20, "sumAllPower":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sub-double v18, v20, v2

    .local v18, "deltaPower":D
    const-wide/16 v6, 0x0

    .local v6, "dp":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v18, v2

    if-lez v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    div-double v2, v4, v20

    mul-double v6, v2, v18

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->processCoreAndData(ZDD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v8, v8, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    add-double v16, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    add-double v14, v2, v8

    add-double v4, v16, v14

    :cond_0
    sub-double v6, v18, v6

    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-lez v2, :cond_1

    const/4 v9, 0x1

    move-object/from16 v8, p0

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscData(ZDD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v8, v8, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double v10, v2, v8

    :cond_1
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v overcounted  deltaPower="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " mMaxDrainedPower="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-double v20, v10, v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    sub-double v18, v2, v20

    const-wide/16 v2, 0x0

    cmpl-double v2, v18, v2

    if-lez v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    div-double v2, v4, v20

    mul-double v6, v2, v18

    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->processCoreAndData(ZDD)V

    sub-double v6, v18, v6

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscData(ZDD)V

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v unacounted deltaPower="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " mMinDrainedPower="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private VerifyCorePower()V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    add-double v2, v14, v16

    .local v2, "CorePower":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v14, v2, v14

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    div-double v6, v14, v2

    .local v6, "rate":D
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    div-double v10, v14, v2

    .local v10, "tmprate":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    mul-double v16, v10, v6

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v15, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v6

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v15, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    sget-object v14, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "v CpuPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " gpuPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "rate":D
    .end local v10    # "tmprate":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    add-double v2, v14, v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    move-wide/from16 v16, v0

    add-double v4, v14, v16

    .local v4, "dataPower":D
    add-double v8, v4, v2

    .local v8, "sumPower":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v14, v8, v14

    if-lez v14, :cond_1

    div-double v6, v4, v8

    .restart local v6    # "rate":D
    const-wide v14, 0x3fe6666666666666L    # 0.7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    div-double v10, v14, v8

    .restart local v10    # "tmprate":D
    mul-double v12, v10, v6

    .local v12, "tmprate1":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v0, v14, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v0, v14, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v6

    mul-double v12, v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    sget-object v14, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "v wifi Power="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data Power="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "CpuPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " gpuPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "rate":D
    .end local v10    # "tmprate":D
    .end local v12    # "tmprate1":D
    :cond_1
    return-void
.end method

.method private VerifyDataPower()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .local v0, "bflag":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    add-double v2, v10, v12

    .local v2, "pwr":D
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v1, v2, v10

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    iget-wide v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    div-double/2addr v12, v2

    mul-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v12, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    mul-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v12, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    mul-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    add-double v2, v10, v12

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v1, v2, v10

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    iget-wide v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    div-double/2addr v12, v2

    mul-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v12, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    mul-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v12, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    mul-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    add-double/2addr v10, v12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v12, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v10, v12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    add-double v2, v10, v12

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v1, v2, v10

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    add-double/2addr v10, v12

    div-double v8, v10, v2

    .local v8, "wifirate":D
    const-wide v10, 0x3fe6666666666666L    # 0.7

    iget-wide v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    div-double/2addr v12, v2

    mul-double v4, v10, v12

    .local v4, "rate":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .local v6, "tmprate":D
    const-wide/16 v10, 0x0

    cmpl-double v1, v8, v10

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v8

    mul-double/2addr v12, v4

    mul-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    mul-double v6, v8, v4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    mul-double/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    mul-double/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    mul-double/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    :cond_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v8

    mul-double v6, v10, v4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    mul-double/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    mul-double/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    mul-double/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const/4 v0, 0x1

    .end local v4    # "rate":D
    .end local v6    # "tmprate":D
    .end local v8    # "wifirate":D
    :cond_3
    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "v mobile data rate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v11, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " wifi data rate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v11, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private VerifyMiscPower()V
    .locals 10

    .prologue
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double v0, v4, v6

    .local v0, "miscpower":D
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    div-double v2, v4, v0

    .local v2, "rate":D
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v2

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v4, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v4, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    mul-double/2addr v6, v2

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    mul-double/2addr v6, v2

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    mul-double/2addr v6, v2

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    mul-double/2addr v6, v2

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    sget-object v4, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v5, "v overcounted miscPower"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "rate":D
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addBluetoothUsage()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput-wide p4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addIdleUsage()V
    .locals 10

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .local v2, "idleTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .local v4, "idlePower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .local v2, "phoneOnTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v6, v2

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .local v4, "phoneOnPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .local v2, "radio":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addScreenUsage()V
    .locals 20

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "power":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v4, v2, v18

    .local v4, "screenOnTimeMs":J
    long-to-double v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "screen.on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    mul-double v2, v2, v18

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    .local v16, "screenFullPower":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_0

    int-to-float v2, v10

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v16

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    div-double v14, v2, v18

    .local v14, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v8, v2, v18

    .local v8, "brightnessTime":J
    long-to-double v2, v8

    mul-double v12, v14, v2

    .local v12, "p":D
    add-double/2addr v6, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v8    # "brightnessTime":J
    .end local v12    # "p":D
    .end local v14    # "screenBinPower":D
    :cond_0
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .local v2, "userId":I
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput v2, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "User"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v2    # "userId":I
    :cond_0
    return-void
.end method

.method private addWiFiUsage()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .local v1, "wbs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {p1, v1}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "wbs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    return-void
.end method

.method public static checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "wifi.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "wifi.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 8
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v5

    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "Unable to read statistics stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private load()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 6
    .param p0, "power"    # D

    .prologue
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_0

    const-string v1, "0"

    :goto_0
    return-object v1

    :cond_0
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_1

    const-string v0, "%.8f"

    .local v0, "format":Ljava/lang/String;
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_2

    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3

    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_4

    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5

    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_6

    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_7

    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_7
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_8

    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_8
    const-string v0, "%.0f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1
.end method

.method private nubiaGetBluetoothUsage()V
    .locals 9

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    return-void
.end method

.method private nubiaGetIdlePower()V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdleTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdleTimes:J

    long-to-double v2, v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "cpu.idle"

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdleTimes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IdlePower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private nubiaGetPhonePower()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhoneTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v2, "radio.active"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhoneTimes:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone Power="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private nubiaGetRadioUsage()V
    .locals 9

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    goto :goto_0
.end method

.method private nubiaGetScreenPower()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v12, v14, v15, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnTimes:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnTimes:J

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    const-string v17, "screen.on"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "screen.full"

    invoke-virtual {v5, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    .local v10, "screenFullPower":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    int-to-float v5, v4

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v5, v12

    float-to-double v12, v5

    mul-double/2addr v12, v10

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v8, v12, v14

    .local v8, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v5, v4, v12, v13, v14}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v2, v12, v14

    .local v2, "brightnessTime":J
    long-to-double v12, v2

    mul-double v6, v8, v12

    .local v6, "p":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    add-double/2addr v12, v6

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "brightnessTime":J
    .end local v6    # "p":D
    .end local v8    # "screenBinPower":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v12, v14

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    const-wide/16 v14, 0x0

    cmpl-double v5, v12, v14

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenOnPower="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v13, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private nubiaGetWiFiUsage()V
    .locals 9

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    return-void
.end method

.method private nubiaPreCalcPower(Landroid/util/SparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "uidPower":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v10

    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "NU":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->reset()V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mGpuPowerCalculator:Lcom/android/internal/os/GpuPowerCalculator;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/GpuPowerCalculator;->calcSumPower(Landroid/os/BatteryStats;I)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    const/4 v9, 0x0

    .local v9, "iu":I
    :goto_0
    if-ge v9, v0, :cond_0

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    .local v3, "u":Landroid/os/BatteryStats$Uid;
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .local v2, "app":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mGpuPowerCalculator:Lcom/android/internal/os/GpuPowerCalculator;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/GpuPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .end local v2    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v3    # "u":Landroid/os/BatteryStats$Uid;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetPhonePower()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetScreenPower()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetIdlePower()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetBluetoothUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetWiFiUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetRadioUsage()V

    return-void
.end method

.method private nubiaProcessAppUsage(Landroid/util/SparseArray;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v12, 0x1

    .local v12, "forAllUsers":Z
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .local v18, "uidPower":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v4, 0x0

    .local v4, "osSipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaPreCalcPower(Landroid/util/SparseArray;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaVerifyPower()V

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "NU":I
    const/4 v13, 0x0

    .local v13, "iu":I
    :goto_1
    if-ge v13, v2, :cond_7

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatterySipper;

    .local v11, "app":Lcom/android/internal/os/BatterySipper;
    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v6, v11, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v8, v3, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v6, v8

    iput-wide v6, v11, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v11}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v16

    .local v16, "totalPower":D
    const-wide/16 v6, 0x0

    cmpl-double v3, v16, v6

    if-nez v3, :cond_0

    invoke-virtual {v11}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v15

    .local v15, "uid":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .local v19, "userId":I
    const/16 v3, 0x3f2

    if-ne v15, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    if-nez v15, :cond_1

    move-object v4, v11

    .end local v15    # "uid":I
    .end local v19    # "userId":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .end local v2    # "NU":I
    .end local v4    # "osSipper":Lcom/android/internal/os/BatterySipper;
    .end local v11    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v12    # "forAllUsers":Z
    .end local v13    # "iu":I
    .end local v16    # "totalPower":D
    .end local v18    # "uidPower":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .restart local v2    # "NU":I
    .restart local v4    # "osSipper":Lcom/android/internal/os/BatterySipper;
    .restart local v11    # "app":Lcom/android/internal/os/BatterySipper;
    .restart local v12    # "forAllUsers":Z
    .restart local v13    # "iu":I
    .restart local v15    # "uid":I
    .restart local v16    # "totalPower":D
    .restart local v18    # "uidPower":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    .restart local v19    # "userId":I
    :cond_3
    const/16 v3, 0x3ea

    if-ne v15, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v12, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x2710

    if-lt v3, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v14, :cond_5

    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v11    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v15    # "uid":I
    .end local v16    # "totalPower":D
    .end local v19    # "userId":I
    :cond_7
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private nubiaProcessAppUsageTryIml(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaProcessAppUsage(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nubiaProcessAppUsageTryIml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private nubiaProcessMiscUsage()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdleTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhoneTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private nubiaProcessMiscUsageTryIml()V
    .locals 4

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaProcessMiscUsage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nubiaProcessMiscUsageTryIml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private nubiaVerifyPower()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->sumPower()D

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->printPower()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mTotalPower:D

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mTotalPower:D

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyDataPower()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyCorePower()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyMiscPower()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyComposePower()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->sumPower()D

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "ver Power:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->printPower()V

    goto :goto_0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v15, 0x1

    .local v15, "forAllUsers":Z
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    const/16 v18, 0x0

    .local v18, "osSipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "NU":I
    const/16 v16, 0x0

    .local v16, "iu":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .local v5, "u":Landroid/os/BatteryStats$Uid;
    new-instance v4, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .local v4, "app":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v20

    .local v20, "totalPower":D
    const-wide/16 v6, 0x0

    cmpl-double v3, v20, v6

    if-nez v3, :cond_0

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v19

    .local v19, "uid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .local v23, "userId":I
    const/16 v3, 0x3f2

    move/from16 v0, v19

    if-ne v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    if-nez v19, :cond_1

    move-object/from16 v18, v4

    .end local v19    # "uid":I
    .end local v23    # "userId":I
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .end local v2    # "NU":I
    .end local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v15    # "forAllUsers":Z
    .end local v16    # "iu":I
    .end local v18    # "osSipper":Lcom/android/internal/os/BatterySipper;
    .end local v20    # "totalPower":D
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .restart local v2    # "NU":I
    .restart local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .restart local v5    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v15    # "forAllUsers":Z
    .restart local v16    # "iu":I
    .restart local v18    # "osSipper":Lcom/android/internal/os/BatterySipper;
    .restart local v19    # "uid":I
    .restart local v20    # "totalPower":D
    .restart local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v23    # "userId":I
    :cond_3
    const/16 v3, 0x3ea

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v15, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v6, 0x2710

    if-lt v3, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v17, :cond_5

    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v19    # "uid":I
    .end local v20    # "totalPower":D
    .end local v23    # "userId":I
    :cond_7
    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object/from16 v8, v18

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    :cond_8
    return-void
.end method

.method private processCoreAndData(ZDD)V
    .locals 18
    .param p1, "bov"    # Z
    .param p2, "power"    # D
    .param p4, "delapower"    # D

    .prologue
    move-wide/from16 v10, p2

    .local v10, "sumPower":D
    move-wide/from16 v2, p4

    .local v2, "dp":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .local v6, "rate":D
    const-wide/16 v4, 0x0

    .local v4, "p":D
    const-wide/16 v12, 0x0

    .local v12, "tmp":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    div-double/2addr v14, v10

    mul-double v4, v14, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    const-string v8, "v overcounted"

    .local v8, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v8, "overcounted"

    :goto_0
    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-wide/from16 v16, v0

    div-double v16, v4, v16

    sub-double v6, v14, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    div-double/2addr v14, v10

    mul-double v4, v14, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    div-double v16, v4, v16

    sub-double v6, v14, v16

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    sget-object v9, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "v "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mCpuRate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v15, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mGpuRate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v15, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v0, v9, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    div-double v14, v12, v10

    mul-double v4, v14, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v16, v4, v12

    sub-double v6, v14, v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v9, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sget-object v9, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "v "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  wifi rate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v0, v9, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    div-double v14, v12, v10

    mul-double v4, v14, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    if-eqz p1, :cond_4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v16, v4, v12

    sub-double v6, v14, v16

    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v9, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sget-object v9, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "v"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   data rate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v8, "unacounted"

    goto/16 :goto_0

    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    move-wide/from16 v16, v0

    div-double v16, v4, v16

    add-double v6, v14, v16

    goto/16 :goto_1

    :cond_2
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    move-wide/from16 v16, v0

    div-double v16, v4, v16

    add-double v6, v14, v16

    goto/16 :goto_2

    :cond_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v16, v4, v12

    add-double v6, v14, v16

    goto/16 :goto_3

    :cond_4
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v16, v4, v12

    add-double v6, v14, v16

    goto :goto_4
.end method

.method private processMiscData(ZDD)V
    .locals 18
    .param p1, "bov"    # Z
    .param p2, "power"    # D
    .param p4, "deltapower"    # D

    .prologue
    move-wide/from16 v10, p2

    .local v10, "sumMiscPower":D
    move-wide/from16 v2, p4

    .local v2, "dp":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .local v6, "rate":D
    const-wide/16 v4, 0x0

    .local v4, "p":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v0, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    .local v12, "sump":D
    div-double v14, v12, v10

    mul-double v4, v14, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v16, v4, v12

    sub-double v6, v14, v16

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    mul-double/2addr v14, v6

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    const-string v8, "v overcounted"

    .local v8, "str":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v8, "overcounted"

    :goto_1
    sget-object v9, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "v "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  miscrate rate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    div-double v6, v14, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    mul-double v16, v6, v2

    add-double v14, v14, v16

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    div-double v6, v14, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    mul-double v16, v6, v2

    add-double v14, v14, v16

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    div-double v6, v14, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    mul-double v16, v6, v2

    add-double v14, v14, v16

    iput-wide v14, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v9, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    div-double v6, v14, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPWRRecord:Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v9, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    mul-double v16, v6, v2

    add-double v14, v14, v16

    iput-wide v14, v9, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    return-void

    .end local v8    # "str":Ljava/lang/String;
    :cond_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v16, v4, v12

    add-double v6, v14, v16

    goto/16 :goto_0

    .restart local v8    # "str":Ljava/lang/String;
    :cond_1
    const-string v8, "unacounted"

    goto/16 :goto_1
.end method

.method private processMiscUsage()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addScreenUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .local v3, "pos":I
    new-array v1, p1, [B

    .local v1, "data":[B
    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .local v0, "amt":I
    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    add-int/2addr v3, v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_0

    add-int v4, v3, p1

    new-array v2, v4, [B

    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .local v5, "path":Ljava/io/File;
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;

    .local v6, "stats":Landroid/os/BatteryStats;
    if-eqz v6, :cond_0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v6    # "stats":Landroid/os/BatteryStats;
    :goto_0
    return-object v6

    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :cond_0
    const/4 v2, 0x0

    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    goto :goto_0

    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v9, "Unable to read history to file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_3
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_3
    :goto_5
    :try_start_9
    throw v7

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .restart local v0    # "data":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_5

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getBatteryTimeRemaining()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    return-wide v0
.end method

.method public getChargeTimeRemaining()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    return-wide v0
.end method

.method public getComputedPower()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getMaxDrainedPower()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public refreshStats(II)V
    .locals 2
    .param p1, "statsType"    # I
    .param p2, "asUser"    # I

    .prologue
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .local v0, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 8
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const-wide/16 v2, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v6, v0, v2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 19
    .param p1, "statsType"    # I
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_2

    new-instance v14, Lcom/android/internal/os/CpuPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mGpuPowerCalculator:Lcom/android/internal/os/GpuPowerCalculator;

    if-nez v14, :cond_3

    new-instance v14, Lcom/android/internal/os/GpuPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/GpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mGpuPowerCalculator:Lcom/android/internal/os/GpuPowerCalculator;

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mGpuPowerCalculator:Lcom/android/internal/os/GpuPowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/GpuPowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_4

    new-instance v14, Lcom/android/internal/os/WakelockPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    if-nez v14, :cond_5

    new-instance v14, Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14, v15}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset(Landroid/os/BatteryStats;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v8

    .local v8, "hasWifiPowerReporting":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    if-eq v8, v14, :cond_7

    :cond_6
    if-eqz v8, :cond_e

    new-instance v14, Lcom/android/internal/os/WifiPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_1
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v7

    .local v7, "hasBluetoothPowerReporting":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    if-eq v7, v14, :cond_9

    :cond_8
    new-instance v14, Lcom/android/internal/os/BluetoothPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_a

    new-instance v15, Lcom/android/internal/os/SensorPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const-string v17, "sensor"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/SensorManager;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_b

    new-instance v14, Lcom/android/internal/os/CameraPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_c

    new-instance v14, Lcom/android/internal/os/FlashlightPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p5

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    invoke-virtual {v14, v0, v1, v15}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1, v15}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v14

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v14

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaProcessAppUsageTryIml(Landroid/util/SparseArray;)V

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "hasBluetoothPowerReporting":Z
    .end local v9    # "i":I
    :cond_e
    new-instance v14, Lcom/android/internal/os/WifiPowerEstimator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto/16 :goto_1

    .restart local v7    # "hasBluetoothPowerReporting":Z
    .restart local v9    # "i":I
    :cond_f
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .local v13, "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_11

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v11    # "j":I
    .end local v13    # "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance v15, Lcom/android/internal/os/BatteryStatsHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaProcessMiscUsageTryIml()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "usageListCount":I
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v12, :cond_13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v12    # "usageListCount":I
    :cond_13
    sget-object v14, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Accuracy: total computed="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", min discharge="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", max discharge="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_15

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .local v4, "amount":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v14, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v10

    .local v10, "index":I
    if-gez v10, :cond_14

    add-int/lit8 v14, v10, 0x1

    neg-int v10, v14

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    goto/16 :goto_0

    .end local v4    # "amount":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v10    # "index":I
    :cond_15
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v16, v0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .restart local v4    # "amount":D
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v14, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v10

    .restart local v10    # "index":I
    if-gez v10, :cond_16

    add-int/lit8 v14, v10, 0x1

    neg-int v10, v14

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v14, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    goto/16 :goto_0
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "asUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .local v3, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public storeState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .local v5, "path":Ljava/io/File;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, "hist":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .local v4, "histData":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v8, "Unable to write history to file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_1
    :goto_3
    :try_start_8
    throw v6

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "path":Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "path":Ljava/io/File;
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :cond_2
    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
