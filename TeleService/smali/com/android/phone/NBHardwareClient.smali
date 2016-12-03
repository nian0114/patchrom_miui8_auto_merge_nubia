.class public Lcom/android/phone/NBHardwareClient;
.super Landroid/os/Handler;
.source "NBHardwareClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;
    }
.end annotation


# static fields
.field private static sMe:Lcom/android/phone/NBHardwareClient;


# instance fields
.field private final DEBUG:Z

.field private final EVENT_GET_HARDWAREID_DONE:I

.field private final EVENT_HARDWARE_INFO_READY:I

.field private final EVENT_RADIO_AVAILIABLE:I

.field private final EVENT_RETRY_GET_HARDWAREID:I

.field private final HARDWAREINFO_REQID:I

.field private final RETRY_DELAY_TIME:I

.field private final RETRY_TIMES:I

.field private mCm:Lcom/android/internal/telephony/RIL;

.field private mContext:Landroid/content/Context;

.field private mHardwareId:Ljava/lang/Integer;

.field private mHasSendInfo:Z

.field private mReceiver:Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

.field private mWaitMBNUpdated:Z

.field readyCallBack:Lcn/nubia/telestatic/adapter/INBHardwareCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NBHardwareClient;->sMe:Lcom/android/phone/NBHardwareClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v5, p0, Lcom/android/phone/NBHardwareClient;->DEBUG:Z

    iput v5, p0, Lcom/android/phone/NBHardwareClient;->EVENT_RADIO_AVAILIABLE:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/phone/NBHardwareClient;->EVENT_GET_HARDWAREID_DONE:I

    iput v6, p0, Lcom/android/phone/NBHardwareClient;->EVENT_HARDWARE_INFO_READY:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/phone/NBHardwareClient;->EVENT_RETRY_GET_HARDWAREID:I

    iput v5, p0, Lcom/android/phone/NBHardwareClient;->HARDWAREINFO_REQID:I

    const/16 v3, 0x7d0

    iput v3, p0, Lcom/android/phone/NBHardwareClient;->RETRY_DELAY_TIME:I

    iput v6, p0, Lcom/android/phone/NBHardwareClient;->RETRY_TIMES:I

    iput-object v4, p0, Lcom/android/phone/NBHardwareClient;->mCm:Lcom/android/internal/telephony/RIL;

    iput-object v4, p0, Lcom/android/phone/NBHardwareClient;->mHardwareId:Ljava/lang/Integer;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/NBHardwareClient;->mHasSendInfo:Z

    iput-object v4, p0, Lcom/android/phone/NBHardwareClient;->mReceiver:Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

    new-instance v3, Lcom/android/phone/NBHardwareClient$1;

    invoke-direct {v3, p0}, Lcom/android/phone/NBHardwareClient$1;-><init>(Lcom/android/phone/NBHardwareClient;)V

    iput-object v3, p0, Lcom/android/phone/NBHardwareClient;->readyCallBack:Lcn/nubia/telestatic/adapter/INBHardwareCallback;

    iput-object p1, p0, Lcom/android/phone/NBHardwareClient;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/android/internal/telephony/RIL;

    iput-object v3, p0, Lcom/android/phone/NBHardwareClient;->mCm:Lcom/android/internal/telephony/RIL;

    iget-object v3, p0, Lcom/android/phone/NBHardwareClient;->mCm:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, p0, v5, v4}, Lcom/android/internal/telephony/RIL;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isHardwareServicePublished()Z

    move-result v1

    .local v1, "isHardwareServiceReady":Z
    if-nez v1, :cond_0

    new-instance v3, Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

    invoke-direct {v3, p0, v4}, Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;-><init>(Lcom/android/phone/NBHardwareClient;Lcom/android/phone/NBHardwareClient$1;)V

    iput-object v3, p0, Lcom/android/phone/NBHardwareClient;->mReceiver:Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "cn.nubia.intent.hwservice.published"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/NBHardwareClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NBHardwareClient;->mReceiver:Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/NBHardwareClient;->mWaitMBNUpdated:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBHardwareClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBHardwareClient;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBHardwareClient;->sendInfoToHardwareService()V

    return-void
.end method

.method private getHardwareInfo(I)V
    .locals 4
    .param p1, "retryTimes"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBHardwareClient;->mCm:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/NBHardwareClient;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->getCommonData(ILandroid/os/Message;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/NBHardwareClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/phone/NBHardwareClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBHardwareClient;->sMe:Lcom/android/phone/NBHardwareClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBHardwareClient;

    invoke-direct {v0, p0}, Lcom/android/phone/NBHardwareClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NBHardwareClient;->sMe:Lcom/android/phone/NBHardwareClient;

    :cond_0
    sget-object v0, Lcom/android/phone/NBHardwareClient;->sMe:Lcom/android/phone/NBHardwareClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleHardwareIdInfo(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "retryTimes":I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NBHardwareClient;->mHardwareId:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "NBHardwareClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get hardwareid successed,hardwareid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NBHardwareClient;->mHardwareId:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v3, "NBHardwareClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get hardwareid failed,retry time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v1, -0x1

    .end local v1    # "retryTimes":I
    .local v2, "retryTimes":I
    if-lez v1, :cond_1

    const/4 v3, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/NBHardwareClient;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/NBHardwareClient;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    move v1, v2

    .end local v2    # "retryTimes":I
    .restart local v1    # "retryTimes":I
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private handleRadioAvailable()V
    .locals 2

    .prologue
    const-string v0, "NBHardwareClient"

    const-string v1, "radio available!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/NBHardwareClient;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/phone/NBHardwareClient;->getHardwareInfo(I)V

    return-void
.end method

.method private initNetworkSetter()V
    .locals 6

    .prologue
    const-string v3, "NBHardwareClient"

    const-string v4, "hardward info ready, init network mode!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/NBNetworkModeFactory;->getDefault()Lcom/android/phone/NBNetworkModeFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NBNetworkModeFactory;->makeNetworkMode()V

    invoke-static {}, Lcom/android/phone/NBDsdsFactory;->getInstance()Lcom/android/phone/NBDsdsFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NBHardwareClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/phone/NBDsdsFactory;->makeNBDsds(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/phone/NBDsdsFactory;->getInstance()Lcom/android/phone/NBDsdsFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NBDsdsFactory;->getNBDsds()Lcom/android/phone/NBDsdsBase;

    move-result-object v1

    .local v1, "dsdsBase":Lcom/android/phone/NBDsdsBase;
    iget-object v3, p0, Lcom/android/phone/NBHardwareClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/phone/NBDsdsBase;->initNetworkHandware(Landroid/content/Context;)Z

    move-result v2

    .local v2, "needRetry":Z
    iget-boolean v2, p0, Lcom/android/phone/NBHardwareClient;->mWaitMBNUpdated:Z

    if-eqz v2, :cond_0

    const-string v3, "NBHardwareClient"

    const-string v4, "update MBN failed when init network mode,retry!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/NBHardwareClient;->mWaitMBNUpdated:Z

    const/16 v0, 0x7d0

    .local v0, "delayMillis":I
    const/4 v3, 0x3

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/NBHardwareClient;->sendEmptyMessageDelayed(IJ)Z

    .end local v0    # "delayMillis":I
    :cond_0
    return-void
.end method

.method private sendInfoToHardwareService()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBHardwareClient;->mHardwareId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "itei"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/telestatic/adapter/INBTelExtraInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/telestatic/adapter/INBTelExtraInfo;

    move-result-object v0

    .local v0, "itel":Lcn/nubia/telestatic/adapter/INBTelExtraInfo;
    iget-boolean v1, p0, Lcom/android/phone/NBHardwareClient;->mHasSendInfo:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NBHardwareClient;->mHardwareId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NBHardwareClient;->readyCallBack:Lcn/nubia/telestatic/adapter/INBHardwareCallback;

    invoke-interface {v0, v1, v2}, Lcn/nubia/telestatic/adapter/INBTelExtraInfo;->constructorAndRegisterCallback(ILcn/nubia/telestatic/adapter/INBHardwareCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NBHardwareClient;->mHasSendInfo:Z

    const-string v1, "NBHardwareClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send hardwareId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NBHardwareClient;->mHardwareId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to handware service successed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBHardwareClient;->mReceiver:Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBHardwareClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NBHardwareClient;->mReceiver:Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NBHardwareClient;->mReceiver:Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;

    .end local v0    # "itel":Lcn/nubia/telestatic/adapter/INBTelExtraInfo;
    :cond_0
    return-void

    .restart local v0    # "itel":Lcn/nubia/telestatic/adapter/INBTelExtraInfo;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/NBHardwareClient;->mHasSendInfo:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBHardwareClient;->handleRadioAvailable()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBHardwareClient;->handleHardwareIdInfo(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/NBHardwareClient;->sendInfoToHardwareService()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/NBHardwareClient;->initNetworkSetter()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/NBHardwareClient;->getHardwareInfo(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
