.class public Lcom/android/phone/NBDdsSwitchController;
.super Ljava/lang/Object;
.source "NBDdsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBDdsSwitchController$SubMask;
    }
.end annotation


# static fields
.field private static final NUBIA_ROAMING_ENABLE:Z

.field private static sInstance:Lcom/android/phone/NBDdsSwitchController;


# instance fields
.field private DEFAULT_NW_MODE:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MANUAL_DATA_ENABLED:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFixPresentSlot:I

.field private mIccLoaded:[Z

.field private mOnConfigLteDoneListener:Lcom/android/phone/NBOnConfigLteDoneListener;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreDdsToPrimarySub:Z

.field private mSubInfoSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.nubia.softsim_roaming.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/NBDdsSwitchController;->NUBIA_ROAMING_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/phone/NBDdsSwitchController;->DEFAULT_NW_MODE:I

    iput v1, p0, Lcom/android/phone/NBDdsSwitchController;->mFixPresentSlot:I

    iput v1, p0, Lcom/android/phone/NBDdsSwitchController;->mSubInfoSlot:I

    iput-boolean v2, p0, Lcom/android/phone/NBDdsSwitchController;->mRestoreDdsToPrimarySub:Z

    const-string v1, "manual_data_enabled"

    iput-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->MANUAL_DATA_ENABLED:Ljava/lang/String;

    const-string v1, "NBDdsSwitchController"

    iput-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Lcom/android/phone/NBDdsSwitchController$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NBDdsSwitchController$1;-><init>(Lcom/android/phone/NBDdsSwitchController;)V

    iput-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/phone/NBDdsSwitchController$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NBDdsSwitchController$2;-><init>(Lcom/android/phone/NBDdsSwitchController;)V

    iput-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v1, Lcom/android/phone/NBDdsSwitchController$3;

    invoke-direct {v1, p0}, Lcom/android/phone/NBDdsSwitchController$3;-><init>(Lcom/android/phone/NBDdsSwitchController;)V

    iput-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mOnConfigLteDoneListener:Lcom/android/phone/NBOnConfigLteDoneListener;

    iput-object p1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBDdsSwitchController;->registerReceiver()V

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mOnConfigLteDoneListener:Lcom/android/phone/NBOnConfigLteDoneListener;

    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->addOnConfigLteDoneListener(Lcom/android/phone/NBOnConfigLteDoneListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBDdsSwitchController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBDdsSwitchController;->handleDefaultDataChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBDdsSwitchController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBDdsSwitchController;->handleSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NBDdsSwitchController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBDdsSwitchController;->handleSubStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NBDdsSwitchController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBDdsSwitchController;->handleSubInfoChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NBDdsSwitchController;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NBDdsSwitchController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToPrimarySub()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/phone/NBDdsSwitchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/NBDdsSwitchController;->mRestoreDdsToPrimarySub:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/NBDdsSwitchController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBDdsSwitchController;->setPreferNetworkType(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/NBDdsSwitchController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NBDdsSwitchController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBDdsSwitchController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataEnabled(Landroid/content/Context;)V

    return-void
.end method

.method private getAvailableSubMask()Lcom/android/phone/NBDdsSwitchController$SubMask;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->NOT_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    .local v0, "subMask":Lcom/android/phone/NBDdsSwitchController$SubMask;
    invoke-virtual {p0, v2}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->CARD2_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->CARD1_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->ALL_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    goto :goto_0
.end method

.method private static getIExtTelephony()Lcom/android/internal/telephony/IExtTelephony;
    .locals 1

    .prologue
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/NBDdsSwitchController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/phone/NBDdsSwitchController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBDdsSwitchController;->sInstance:Lcom/android/phone/NBDdsSwitchController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBDdsSwitchController;

    invoke-direct {v0, p0}, Lcom/android/phone/NBDdsSwitchController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NBDdsSwitchController;->sInstance:Lcom/android/phone/NBDdsSwitchController;

    :cond_0
    sget-object v0, Lcom/android/phone/NBDdsSwitchController;->sInstance:Lcom/android/phone/NBDdsSwitchController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMobileDataEnabled(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v1

    .local v1, "subId":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .local v0, "isEnabled":Z
    :cond_0
    const-string v2, "NBDdsSwitchController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile data in slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleDefaultDataChanged(I)V
    .locals 2
    .param p1, "currentDds"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBDdsSwitchController;->needBindDefaultDataOnPrimarySub()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    .local v0, "primarySlot":I
    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NBDdsSwitchController;->mRestoreDdsToPrimarySub:Z

    .end local v0    # "primarySlot":I
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "primarySlot":I
    :cond_1
    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToPrimarySub()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NBDdsSwitchController;->mRestoreDdsToPrimarySub:Z

    goto :goto_0

    .end local v0    # "primarySlot":I
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataEnabled(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private handleSimStateChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v2, "slot"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "slot":I
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "NBDdsSwitchController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the card that state changed is in slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",new sim state is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IMSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    iget-boolean v2, p0, Lcom/android/phone/NBDdsSwitchController;->mRestoreDdsToPrimarySub:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NBDdsSwitchController;->needBindDefaultDataOnPrimarySub()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToPrimarySub()V

    iput-boolean v5, p0, Lcom/android/phone/NBDdsSwitchController;->mRestoreDdsToPrimarySub:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/android/phone/NBDdsSwitchController;->mFixPresentSlot:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToTargetSlot(Landroid/content/Context;I)V

    iput v6, p0, Lcom/android/phone/NBDdsSwitchController;->mFixPresentSlot:I

    goto :goto_0

    :cond_3
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NOT_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    const-string v2, "NBDdsSwitchController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not loaded!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z

    aput-boolean v5, v2, v0

    iget v2, p0, Lcom/android/phone/NBDdsSwitchController;->mSubInfoSlot:I

    if-ne v2, v0, :cond_1

    iput v6, p0, Lcom/android/phone/NBDdsSwitchController;->mSubInfoSlot:I

    goto :goto_0
.end method

.method private handleSubInfoChanged()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    iget v1, p0, Lcom/android/phone/NBDdsSwitchController;->mSubInfoSlot:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/phone/NBDdsSwitchController;->mSubInfoSlot:I

    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v0

    .local v0, "subId":I
    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput v3, p0, Lcom/android/phone/NBDdsSwitchController;->mSubInfoSlot:I

    .end local v0    # "subId":I
    :cond_0
    return-void
.end method

.method private handleSubStateChanged(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/NBDdsSwitchController;->needBindDefaultDataOnPrimarySub()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/NBDsdsUtils;->getDefaultDataSlot(Landroid/content/Context;)I

    move-result v0

    .local v0, "defaultData":I
    if-nez v0, :cond_1

    move v1, v5

    .local v1, "otherSlot":I
    :goto_0
    const-string v7, "newProvisionState"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "subState":I
    const-string v7, "phone"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "slotId":I
    if-nez v3, :cond_2

    move v2, v5

    .local v2, "otherSlotId":I
    :goto_1
    const-string v6, "NBDdsSwitchController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dds in global setting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",the card that state changed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",new state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x2

    if-ne v6, v4, :cond_3

    .end local v0    # "defaultData":I
    .end local v1    # "otherSlot":I
    .end local v2    # "otherSlotId":I
    .end local v3    # "slotId":I
    .end local v4    # "subState":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "defaultData":I
    :cond_1
    move v1, v6

    goto :goto_0

    .restart local v1    # "otherSlot":I
    .restart local v3    # "slotId":I
    .restart local v4    # "subState":I
    :cond_2
    move v2, v6

    goto :goto_1

    .restart local v2    # "otherSlotId":I
    :cond_3
    :try_start_0
    sget-boolean v6, Lcom/android/phone/NBDdsSwitchController;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v6, :cond_4

    const/4 v6, -0x1

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NBPhoneExtra;->getVirtualCardSlot()I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-static {}, Lcom/android/phone/NBDdsSwitchController;->getIExtTelephony()Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/phone/NBDdsSwitchController;->getIExtTelephony()Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/android/internal/telephony/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    if-ne v2, v0, :cond_4

    iget-object v6, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToTargetSlot(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    :cond_4
    if-ne v3, v0, :cond_5

    if-ne v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToTargetSlot(Landroid/content/Context;I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NBDdsSwitchController;->getAvailableSubMask()Lcom/android/phone/NBDdsSwitchController$SubMask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NBDdsSwitchController$SubMask;->getValue()I

    move-result v5

    if-ne v5, v1, :cond_0

    iget-object v5, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v1}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToTargetSlot(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private onlyCdmaCardInserted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setDefaultDataEnabled(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/phone/NBDsdsUtils;->getDefaultDataSlot(Landroid/content/Context;)I

    move-result v0

    .local v0, "dataSlot":I
    if-nez v0, :cond_3

    move v3, v6

    .local v3, "otherSlot":I
    :goto_0
    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v1

    .local v1, "dataSub":I
    invoke-static {v3}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v4

    .local v4, "otherSub":I
    iget-object v8, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/phone/NBDsdsUtils;->getDefaultNormalDataSlotIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/NBDsdsUtils;->getSubIdByIccId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .local v2, "originSub":I
    const-string v8, "NBDdsSwitchController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dds in global setting is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",subid is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBDdsSwitchController;->getMobileDataEnabled(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/NBDdsSwitchController;->getMaualEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5, v1, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    invoke-virtual {p0, p1, v7}, Lcom/android/phone/NBDdsSwitchController;->setMaualEnabled(Landroid/content/Context;Z)V

    :cond_0
    sget-boolean v8, Lcom/android/phone/NBDdsSwitchController;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/NBPhoneExtra;->getVirtualCardSlot()I

    move-result v8

    if-ne v11, v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/phone/NBDsdsUtils;->getPreDefaultDataEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBDdsSwitchController;->getMobileDataEnabled(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_1

    if-ne v2, v1, :cond_1

    const-string v8, "NBDdsSwitchController"

    const-string v9, "setDataEnabled after turn off softsim"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v1, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    invoke-static {p1, v7}, Lcom/android/phone/NBDsdsUtils;->setPreDefaultDataEnabled(Landroid/content/Context;Z)V

    :cond_1
    sget-boolean v6, Lcom/android/phone/NBDdsSwitchController;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NBPhoneExtra;->getVirtualCardSlot()I

    move-result v6

    if-ne v11, v6, :cond_2

    if-ne v4, v2, :cond_2

    invoke-static {p1, v7}, Lcom/android/phone/NBDsdsUtils;->setPreDefaultDataEnabled(Landroid/content/Context;Z)V

    :cond_2
    invoke-virtual {v5, v4, v7}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    return-void

    .end local v1    # "dataSub":I
    .end local v2    # "originSub":I
    .end local v3    # "otherSlot":I
    .end local v4    # "otherSub":I
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    move v3, v7

    goto/16 :goto_0
.end method

.method private setDefaultDataToPrimarySub()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    .local v0, "primarySlot":I
    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToTargetSlot(Landroid/content/Context;I)V

    return-void
.end method

.method private setDefaultDataToTargetSlot(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    const/4 v2, -0x1

    sget-boolean v1, Lcom/android/phone/NBDdsSwitchController;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NBPhoneExtra;->getVirtualCardSlot()I

    move-result v1

    if-eq v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v0

    .local v0, "subId":I
    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_0

    :cond_1
    const-string v1, "NBDdsSwitchController"

    const-string v2, "slot\'s subinfo is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/phone/NBDdsSwitchController;->mSubInfoSlot:I

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0
.end method

.method private setPreferNetworkType(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/phone/NBDsdsUtils;->getNwMode(Landroid/content/Context;I)I

    move-result v0

    .local v0, "network":I
    iget v2, p0, Lcom/android/phone/NBDdsSwitchController;->DEFAULT_NW_MODE:I

    if-eq v0, v2, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaualEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "manual_data_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isActive(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/NBPhoneExtra;->getSubStateDB(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public needBindDefaultDataOnPrimarySub()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBDdsSwitchController;->onlyCdmaCardInserted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDataToTargetSub(I)V
    .locals 4
    .param p1, "slot"    # I

    .prologue
    move v0, p1

    .local v0, "targetSlot":I
    invoke-virtual {p0, v0}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    const-string v1, "NBDdsSwitchController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetslot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is active and icc is loaded,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "set default data to it!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToTargetSlot(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    iput v0, p0, Lcom/android/phone/NBDdsSwitchController;->mFixPresentSlot:I

    goto :goto_0
.end method

.method public setMaualEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maual"    # Z

    .prologue
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "manual_data_enabled"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
