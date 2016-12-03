.class public Lcom/android/phone/NBPhoneExtra;
.super Lcn/nubia/telframeadapter/extinterface/INBIPhoneExtra$Stub;
.source "NBPhoneExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBPhoneExtra$MessageParameter;,
        Lcom/android/phone/NBPhoneExtra$MainThreadRequest;,
        Lcom/android/phone/NBPhoneExtra$MainThreadHandler;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final NUBIA_ROAMING_ENABLE:Z

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/phone/NBPhoneExtra;

.field private static sNumPhones:I


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mMainThreadHandler:Lcom/android/phone/NBPhoneExtra$MainThreadHandler;

.field private mSubStatus:[I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NBPhoneExtra;->DBG:Z

    const-string v2, "ro.nubia.softsim_roaming.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/NBPhoneExtra;->NUBIA_ROAMING_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcn/nubia/telframeadapter/extinterface/INBIPhoneExtra$Stub;-><init>()V

    sput-object p1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const-string v1, "nubia.phone.extra"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "nubia.phone.extra"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v1, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;-><init>(Lcom/android/phone/NBPhoneExtra;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/phone/NBPhoneExtra;->mMainThreadHandler:Lcom/android/phone/NBPhoneExtra$MainThreadHandler;

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lcom/android/phone/NBPhoneExtra;->sNumPhones:I

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBPhoneExtra;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBPhoneExtra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/phone/NBPhoneExtra;->mAppOps:Landroid/app/AppOpsManager;

    sget v1, Lcom/android/phone/NBPhoneExtra;->sNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/phone/NBPhoneExtra;->mSubStatus:[I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/phone/NBPhoneExtra;->sNumPhones:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBPhoneExtra;->mSubStatus:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBPhoneExtra;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBPhoneExtra;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->handleSetNetworkDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBPhoneExtra;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBPhoneExtra;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->handleGetNetworkDone(Landroid/os/Message;)V

    return-void
.end method

.method private broadcastSwitchPrimaryCard(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "rebootDialog"    # Z

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "rebootDialog"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/NBPhoneExtra;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBPhoneExtra;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SMS"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NBPhoneExtra;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0xe

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NBPhoneExtra;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .local v0, "cl":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private getChinaOperator(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "oper":Ljava/lang/String;
    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/phone/NBDsdsUtils;->isChinaMobile(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/phone/NBDsdsUtils;->isChinaUnicom(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getIExtTelephony()Lcom/android/internal/telephony/IExtTelephony;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    .local v0, "iExtTelephony":Lcom/android/internal/telephony/IExtTelephony;
    return-object v0
.end method

.method private getIccid(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "iccid":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/NBPhoneExtra;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v2, p0, Lcom/android/phone/NBPhoneExtra;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/NBPhoneExtra;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/phone/NBPhoneExtra;->sInstance:Lcom/android/phone/NBPhoneExtra;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No NBPhoneExtra init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/phone/NBPhoneExtra;->sInstance:Lcom/android/phone/NBPhoneExtra;

    return-object v0
.end method

.method private getPrefPrimarySlot()I
    .locals 3

    .prologue
    sget-object v0, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_pre_primary_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getServiceState(I)Landroid/telephony/ServiceState;
    .locals 3
    .param p1, "PhoneId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    goto :goto_0
.end method

.method private getSubIdBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBPhoneExtra;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleGetNetworkDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;

    .local v2, "request":Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v1, v4, v5

    .local v1, "modemNetworkMode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v1    # "modemNetworkMode":I
    .local v3, "result":Ljava/lang/Integer;
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/phone/NBPhoneExtra;->setResultAndNotify(Lcom/android/phone/NBPhoneExtra$MainThreadRequest;Ljava/lang/Object;)V

    return-void

    .end local v3    # "result":Ljava/lang/Integer;
    :cond_0
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private handleSetNetworkDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;

    .local v1, "request":Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NBPhoneExtra;->setResultAndNotify(Lcom/android/phone/NBPhoneExtra$MainThreadRequest;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/phone/NBPhoneExtra;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/phone/NBPhoneExtra;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBPhoneExtra;->sInstance:Lcom/android/phone/NBPhoneExtra;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBPhoneExtra;

    invoke-direct {v0, p0}, Lcom/android/phone/NBPhoneExtra;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NBPhoneExtra;->sInstance:Lcom/android/phone/NBPhoneExtra;

    :goto_0
    sget-object v0, Lcom/android/phone/NBPhoneExtra;->sInstance:Lcom/android/phone/NBPhoneExtra;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/phone/NBPhoneExtra;->sInstance:Lcom/android/phone/NBPhoneExtra;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/NBPhoneExtra;->logd(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVirtualCardExist(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "isVirtualCardExist":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softsim_iccid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "vcIccId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .end local v1    # "vcIccId":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/phone/NBPhoneExtra;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPhoneExtra"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendRequest(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "command"    # I
    .param p2, "slotId"    # I
    .param p3, "argument"    # Ljava/lang/Object;

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NBPhoneExtra;->mMainThreadHandler:Lcom/android/phone/NBPhoneExtra$MainThreadHandler;

    invoke-virtual {v4}, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This method will deadlock if called from the main thread."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;

    invoke-direct {v2, p2, p3}, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;-><init>(ILjava/lang/Object;)V

    .local v2, "request":Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    iget-object v3, p0, Lcom/android/phone/NBPhoneExtra;->mMainThreadHandler:Lcom/android/phone/NBPhoneExtra$MainThreadHandler;

    invoke-virtual {v3, p1, v2}, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, v2, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, v2, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v3
.end method

.method private setResultAndNotify(Lcom/android/phone/NBPhoneExtra$MainThreadRequest;Ljava/lang/Object;)V
    .locals 1
    .param p1, "request"    # Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    iput-object p2, p1, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchDataCard(IZ)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "showDialog"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBPhoneExtra;->getPrefPrimarySlot()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBPhoneExtra;->broadcastSwitchPrimaryCard(IZ)V

    :cond_0
    return-void
.end method

.method private switchDefaultData(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .local v0, "defaultDataSubId":I
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v1

    .local v1, "subId":I
    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":I
    :try_start_0
    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getIExtTelephony()Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IExtTelephony;->activateUiccCard(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deactivateUiccCard(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":I
    :try_start_0
    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getIExtTelephony()Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IExtTelephony;->deactivateUiccCard(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public get3G4GEntries(I)I
    .locals 2
    .param p1, "modeType"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBNetworkModeFactory;->getDefault()Lcom/android/phone/NBNetworkModeFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/NBNetworkModeFactory;->getNetworkMode(I)Lcom/android/phone/NBNetworkMode;

    move-result-object v0

    .local v0, "networkMode":Lcom/android/phone/NBNetworkMode;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/NBNetworkMode;->get3G4GEntries()I

    move-result v1

    goto :goto_0
.end method

.method public getActiveMbnInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "standardController":Lcom/android/phone/NBQCMBNController;
    :try_start_0
    invoke-static {}, Lcom/android/phone/NBQCMBNController;->getInstance()Lcom/android/phone/NBQCMBNController;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNController;->getActiveMbnInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getBaseStationIdFromServiceState(I)I
    .locals 6
    .param p1, "PhoneId"    # I

    .prologue
    const/4 v3, -0x1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .local v0, "cl":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .end local v0    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    .local v2, "ss":Landroid/telephony/ServiceState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getBaseStationId()I

    move-result v3

    goto :goto_0
.end method

.method public getCID(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    .local v0, "cellLocation":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .end local v0    # "cellLocation":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "cellLocation":Landroid/telephony/CellLocation;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCdmaImsi(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .local v0, "ruimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCommonDataOfSubs()[Ljava/lang/String;
    .locals 8

    .prologue
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, "mPhone":Lcom/android/internal/telephony/Phone;
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .end local v2    # "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/RIL;

    .local v0, "cm":Lcom/android/internal/telephony/RIL;
    new-instance v3, Lcom/android/phone/NBPhoneExtra$MessageParameter;

    invoke-direct {v3, p0}, Lcom/android/phone/NBPhoneExtra$MessageParameter;-><init>(Lcom/android/phone/NBPhoneExtra;)V

    .local v3, "mp":Lcom/android/phone/NBPhoneExtra$MessageParameter;
    iget-object v5, p0, Lcom/android/phone/NBPhoneExtra;->mMainThreadHandler:Lcom/android/phone/NBPhoneExtra$MainThreadHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v3}, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, "msg":Landroid/os/Message;
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/RIL;->getCommonData(ILandroid/os/Message;)V

    iget-object v6, v3, Lcom/android/phone/NBPhoneExtra$MessageParameter;->lock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string v5, "NBPhoneExtra"

    const-string v7, "wait for done"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/android/phone/NBPhoneExtra$MessageParameter;->lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, v3, Lcom/android/phone/NBPhoneExtra$MessageParameter;->mPolicymanInfo:Ljava/lang/String;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "NBPhoneExtra"

    const-string v7, "InterruptedException in getCommonDataOfSubs"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public getEntryValues(I)I
    .locals 2
    .param p1, "modeType"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBNetworkModeFactory;->getDefault()Lcom/android/phone/NBNetworkModeFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/NBNetworkModeFactory;->getNetworkMode(I)Lcom/android/phone/NBNetworkMode;

    move-result-object v0

    .local v0, "networkMode":Lcom/android/phone/NBNetworkMode;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/NBNetworkMode;->getEntryValues()I

    move-result v1

    goto :goto_0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const-string v0, "UNKNOWN"

    .local v0, "type":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .local v1, "uicccard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v1, :cond_1

    const-string v0, "UNKNOWN"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "NBPhoneExtra"

    const-string v3, "getIccCardType: getIccCard is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UICC"

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const-string v0, "ICC"

    goto :goto_0
.end method

.method public getImsId()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .local v2, "phoneId":I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "ims_one":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v1, "ims_two":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    goto :goto_0
.end method

.method public getLAC(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    .local v0, "cellLocation":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .end local v0    # "cellLocation":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "cellLocation":Landroid/telephony/CellLocation;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    .local v0, "mcc":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->getInstance()Lcom/android/phone/NBSoftsimController;

    move-result-object v1

    .local v1, "nbSoftsimController":Lcom/android/phone/NBSoftsimController;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/NBSoftsimController;->getMcc()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdFromServiceState(I)I
    .locals 2
    .param p1, "PhoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getNum(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v5, "getNum"

    invoke-direct {p0, p2, v5}, Lcom/android/phone/NBPhoneExtra;->checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    .local v2, "str":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "indentity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/NBPhoneExtra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v2, v4

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneNum_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getSubIdBySlotId(I)I

    move-result v3

    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/NBPhoneExtra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .end local v3    # "subId":I
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getOperator(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const-string v3, "getOperator"

    invoke-direct {p0, p2, v3}, Lcom/android/phone/NBPhoneExtra;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "indentity":J
    const/4 v2, 0x0

    .local v2, "oper":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operator_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getChinaOperator(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_3

    sget-object v3, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b036e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b036f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPreferredNetworkType(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/NBPhoneExtra;->sendRequest(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSimOperatorNumericForSubscription(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const-string v0, ""

    .local v0, "operatorNumeric":Ljava/lang/String;
    sget-object v2, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getIccOperatorNumericForData(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSlotForSingleCardUI()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/phone/NBPhoneExtra;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/phone/NBPhoneExtra;->sNumPhones:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x1

    .local v1, "virtualcardSlot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v3, Lcom/android/phone/NBPhoneExtra;->sNumPhones:I

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/phone/NBPhoneExtra;->isVirtualCardExist(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSlotForSingleCardUI virtualcardSlot ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/NBPhoneExtra;->logd(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSmscAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSmscAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubStateDB(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getIccid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccid":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/NBPhoneExtra;->getSubStateDB(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getSubStateDB(Ljava/lang/String;)Z
    .locals 14
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x1

    .local v10, "substate":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v12

    :cond_0
    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "/data/misc/radio/qcril.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "qcril_manual_prov_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "USER_PREF"

    aput-object v4, v2, v3

    const-string v3, "ICCID=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "USER_PREF"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .local v11, "usepref":I
    if-nez v11, :cond_4

    move v10, v12

    .end local v11    # "usepref":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubStateDB : iccid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/NBPhoneExtra;->logd(Ljava/lang/String;)V

    move v12, v10

    goto :goto_0

    .restart local v11    # "usepref":I
    :cond_4
    move v10, v13

    goto :goto_1

    .end local v11    # "usepref":I
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v1
.end method

.method public getSystemIdFromServiceState(I)I
    .locals 2
    .param p1, "PhoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVirtualCardSlot()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .local v1, "virtualcardSlot":I
    sget-boolean v2, Lcom/android/phone/NBPhoneExtra;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/NBPhoneExtra;->sNumPhones:I

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/NBPhoneExtra;->isVirtualCardExist(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .end local v0    # "i":I
    :cond_0
    return v1

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getlteImsi(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .local v0, "simRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public isCDMACard(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v0

    return v0
.end method

.method public isImsEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .local v2, "isImsEnabled":Z
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "ims_one":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v1, "ims_two":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoCallEnabled()Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoCallEnabled()Z

    move-result v2

    goto :goto_0
.end method

.method public isImsEnabledBySubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "isImsEnabled":Z
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsphone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoCallEnabled()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isImsHDEnabledByPhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "isImsHDEnabled":Z
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsphone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isImsRegisteredByPhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "isImsRegistered":Z
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsphone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isImsRegistered()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isSmartSelectionEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia_smart_selection"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readSmscAddress(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->readSmscAddress()V

    return-void
.end method

.method public restoreDefaultData(Ljava/lang/String;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/phone/NBPhoneExtra;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->restoreDefaultData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setDefaultDataSubId(IZLjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "needSave"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/phone/NBPhoneExtra;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->saveDefaultDataSlot(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBPhoneExtra;->switchDataCard(IZ)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->switchDefaultData(I)V

    goto :goto_0
.end method

.method public setDetectPseudoBaseStationEnable(ZI)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .prologue
    sget-object v3, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    :try_start_0
    const-class v3, Lcom/android/internal/telephony/Phone;

    const-string v4, "setDetectPseudoBaseStationEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "pseudoMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2    # "pseudoMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "NBPhoneExtra"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "NBPhoneExtra"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "NBPhoneExtra"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    const-string v3, "NBPhoneExtra"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDectectPseudoBaseStationEnable: no phone for slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreferredNetworkType(II)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/NBPhoneExtra;->sendRequest(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setSmartSelectionEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/phone/NBPhoneExtra;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia_smart_selection"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setSubEnabled(IZ)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/phone/NBPhoneExtra;->activateUiccCard(I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/phone/NBPhoneExtra;->deactivateUiccCard(I)I

    goto :goto_0
.end method

.method public setSubStateDB(IZ)I
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPhoneExtra;->getIccid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/phone/NBPhoneExtra;->setSubStateDB(Ljava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method public setSubStateDB(Ljava/lang/String;Z)I
    .locals 10
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    .local v4, "subStatus":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSubState, subStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " iccId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NBPhoneExtra;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v2

    .end local v2    # "result":I
    .local v3, "result":I
    :goto_1
    return v3

    .end local v3    # "result":I
    .end local v4    # "subStatus":I
    :cond_0
    move v4, v6

    goto :goto_0

    .restart local v2    # "result":I
    .restart local v4    # "subStatus":I
    :cond_1
    const-string v7, "/data/misc/radio/qcril.db"

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "USER_PREF"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string v6, "qcril_manual_prov_table"

    const-string v7, "ICCID = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_2
    move v3, v2

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_1

    .end local v3    # "result":I
    .restart local v2    # "result":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v6
.end method

.method public updateSubActivation([I)V
    .locals 6
    .param p1, "simStatus"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "slotId":I
    :goto_0
    sget v4, Lcom/android/phone/NBPhoneExtra;->sNumPhones:I

    if-ge v1, v4, :cond_5

    aget v4, p1, v1

    const/16 v5, -0x63

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBPhoneExtra;->mSubStatus:[I

    aget v5, p1, v1

    aput v5, v4, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Sim not inserted in slot ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] simStatus= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/NBPhoneExtra;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/NBPhoneExtra;->getSubStateDB(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .local v2, "userPreference":I
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Sim inserted in slot ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "],"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userPreference subState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v2, v3, :cond_3

    const-string v4, "active"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/NBPhoneExtra;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NBPhoneExtra;->mSubStatus:[I

    aget v4, v4, v1

    if-eq v4, v2, :cond_0

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/phone/NBPhoneExtra;->activateUiccCard(I)I

    goto :goto_1

    .end local v2    # "userPreference":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2    # "userPreference":I
    :cond_3
    const-string v4, "inactive"

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/phone/NBPhoneExtra;->deactivateUiccCard(I)I

    goto :goto_1

    .end local v0    # "iccId":Ljava/lang/String;
    .end local v2    # "userPreference":I
    :cond_5
    return-void
.end method
