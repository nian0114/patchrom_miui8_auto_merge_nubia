.class public Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;
.super Ljava/lang/Object;
.source "ServiceStateTrackerNotifyDelay.java"


# static fields
.field private static final DELAY_TIME:I = 0x4e20


# instance fields
.field mCurDataServiceState:I

.field mCurVoiceServiceState:I

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field mHandler:Landroid/os/Handler;

.field private mNotifyDelay:Ljava/lang/Runnable;

.field mPreDataServiceState:I

.field mPreVoiceServiceState:I

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 2
    .param p1, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay$1;-><init>(Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object v0
.end method

.method private isNeedBNotifyDelay(I)Z
    .locals 2
    .param p1, "cardState"    # I

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mPreVoiceServiceState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mPreDataServiceState:I

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mCurVoiceServiceState:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mCurDataServiceState:I

    if-ne v1, v0, :cond_1

    if-ne p1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedNotifyDirect(I)Z
    .locals 3
    .param p1, "cardState"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDelay()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private notifyDirect(I)V
    .locals 2
    .param p1, "cardState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->isNeedNotifyDirect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyServiceStateChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public getServiceState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mPreVoiceServiceState:I

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mPreDataServiceState:I

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mCurVoiceServiceState:I

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mCurDataServiceState:I

    return-void
.end method

.method public notifyServiceStateChangedDealy()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "cardState":I
    :try_start_0
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IExtTelephony;->getUiccCardProvisioningUserPreference(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->isNeedBNotifyDelay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->notifyDelay()V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->notifyDirect(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyServiceStateChanged()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
