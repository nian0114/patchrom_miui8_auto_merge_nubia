.class Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SumPowerRecord"
.end annotation


# instance fields
.field public mBsBTRemain:Lcom/android/internal/os/BatterySipper;

.field public mBsRadio:Lcom/android/internal/os/BatterySipper;

.field public mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

.field public mCameraPower:D

.field public mCpuPower:D

.field public mCpuRate:D

.field public mFlashlightPower:D

.field public mGpsPower:D

.field public mGpuPower:D

.field public mGpuRate:D

.field public mIdlePower:D

.field public mIdleTimes:J

.field public mMiscRate:D

.field public mMobileDataRate:D

.field public mMobiledataPower:D

.field public mPhonePower:D

.field public mPhoneTimes:J

.field public mScreenOnPower:D

.field public mScreenOnTimes:J

.field public mSensorPower:D

.field mTotalPower:D

.field public mWakeLockPower:D

.field public mWifiPower:D

.field public mWifiRate:D

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->this$0:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public printPower()V
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, " mTotalPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mTotalPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " cpupower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " gpupower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mWifiPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " WifiRemainPowerMah="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mMobiledataPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mBsRadio.mobileRadioPowerMah="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mWakeLockPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mGpsPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " BTPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mSensorPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mCameraPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mFlashlightPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mIdlePower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOnPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " mPhonePower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdleTimes:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnTimes:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhoneTimes:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mTotalPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuRate:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuRate:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiRate:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobileDataRate:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMiscRate:D

    return-void
.end method

.method public sumPower()D
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCpuPower:D

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpuPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWifiPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mMobiledataPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mWakeLockPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mGpsPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mSensorPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mCameraPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mFlashlightPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mIdlePower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mScreenOnPower:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mPhonePower:D

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsWifiRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsBTRemain:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mBsRadio:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mTotalPower:D

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumPowerRecord;->mTotalPower:D

    return-wide v0
.end method
