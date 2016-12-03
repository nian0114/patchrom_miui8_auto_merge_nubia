.class public Lcom/android/phone/CardStateMonitor;
.super Landroid/os/Handler;
.source "CardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CardStateMonitor$CardInfo;
    }
.end annotation


# static fields
.field private static final NUBIA_ROAMING_ENABLE:Z

.field static final PHONE_COUNT:I

.field private static checkVirtualcard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mIsShutDownInProgress:Z

.field private static restartVirtualcardChecked:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

.field private mContext:Landroid/content/Context;

.field private mDataCardAbsentRegistrants:Landroid/os/RegistrantList;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/android/phone/CardStateMonitor;->checkVirtualcard:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/android/phone/CardStateMonitor;->restartVirtualcardChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "ro.nubia.softsim_roaming.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CardStateMonitor;->NUBIA_ROAMING_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CardStateMonitor;->mDataCardAbsentRegistrants:Landroid/os/RegistrantList;

    sget v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    new-array v2, v2, [Lcom/android/phone/CardStateMonitor$CardInfo;

    iput-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    new-instance v2, Lcom/android/phone/CardStateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CardStateMonitor$1;-><init>(Lcom/android/phone/CardStateMonitor;)V

    iput-object v2, p0, Lcom/android/phone/CardStateMonitor;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    new-instance v3, Lcom/android/phone/CardStateMonitor$CardInfo;

    invoke-direct {v3}, Lcom/android/phone/CardStateMonitor$CardInfo;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/phone/CardStateMonitor;->mIsShutDownInProgress:Z

    return p0
.end method

.method private clearVirtualCardInfo(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "softsim_iccid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private getCurrentDdsSlot()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_data_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOtherSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSettedPrimarySlot(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "setted_primary"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 7
    .param p0, "cardIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, p0

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .local v1, "phone":Lcom/android/internal/telephony/PhoneBase;
    const-string v3, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v0, v4

    .local v0, "isApmSIMNotPwdn":Z
    :goto_0
    sget-boolean v3, Lcom/android/phone/CardStateMonitor;->mIsShutDownInProgress:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .end local v0    # "isApmSIMNotPwdn":Z
    :cond_1
    move v0, v5

    goto :goto_0

    .restart local v0    # "isApmSIMNotPwdn":Z
    :cond_2
    iget-object v3, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    :cond_3
    move-object v3, v2

    goto :goto_1
.end method

.method private getVirtualCardIccId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

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

    .local v1, "virtualCard":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "vcIccId":Ljava/lang/String;
    const-string v2, "CardStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVirtualCardIccId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private isRadioAvailable()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    return v1
.end method

.method private isSupportLtePlusC()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "support":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportLtePlusC()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadIccId(ILcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 9
    .param p1, "sub"    # I
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    iget-object v6, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v6, v6, p1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    const/4 v4, 0x0

    .local v4, "request":Z
    const/4 v5, 0x0

    .local v5, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    .local v3, "numApps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v6, v7, :cond_3

    move-object v5, v0

    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .local v1, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_1

    const/16 v6, 0x2fe2

    const/4 v7, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/CardStateMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/4 v4, 0x1

    .end local v1    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v6, v6, p1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    :cond_2
    return-void

    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "CardStateMonitor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyAllCardsAvailableIfNeed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardInfoAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/phone/CardStateMonitor;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/phone/CardStateMonitor;->checkVirtualcard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/android/phone/CardStateMonitor;->restartVirtualcardChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1
.end method

.method private notifyCardAvailableIfNeed(ILcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    if-eqz p2, :cond_3

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCardAvailableIfNeed sim["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] hot swap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CardStateMonitor;->loadIccId(ILcom/android/internal/telephony/uicc/UiccCard;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CardStateMonitor;->notifyCardState(ILcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    # invokes: Lcom/android/phone/CardStateMonitor$CardInfo;->reset()V
    invoke-static {v0}, Lcom/android/phone/CardStateMonitor$CardInfo;->access$100(Lcom/android/phone/CardStateMonitor$CardInfo;)V

    goto :goto_0
.end method

.method private notifyCardState(ILcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 4
    .param p1, "sub"    # I
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v1, v1, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/CardStateMonitor;->getOtherSlot(I)I

    move-result v0

    .local v0, "otherSub":I
    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->getCurrentDdsSlot()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/CardStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CardStateMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "otherSub":I
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v1, v1, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->notifyAllCardsAvailableIfNeed()V

    goto :goto_0
.end method

.method private notifyOnlyDataCardAbsentIfNeed()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->onlyDataCardAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mDataCardAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->getCurrentDdsSlot()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CardStateMonitor;->getOtherSlot(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onIccChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "iccChangedResult"    # Landroid/os/AsyncResult;

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->updateCardState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "index":I
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CardStateMonitor;->updateCardState(I)V

    :cond_2
    return-void
.end method

.method private onIccIdLoaded(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "iccIdResult"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x0

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .local v1, "data":[B
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "cardIndex":I
    const/4 v2, 0x0

    .local v2, "iccId":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in GET ICCID,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v5, v5, v0

    iput-boolean v7, v5, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .local v3, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    if-ne v5, v6, :cond_1

    sget-boolean v5, Lcom/android/phone/CardStateMonitor;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/phone/CardStateMonitor;->checkVirtualcard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->getVirtualCardIccId(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "virtualIccId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    sget-object v5, Lcom/android/phone/CardStateMonitor;->checkVirtualcard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v5, 0x5

    invoke-virtual {p0, v5, p1}, Lcom/android/phone/CardStateMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/phone/CardStateMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v4    # "virtualIccId":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v5, v5, v0

    iput-object v2, v5, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->notifyAllCardsAvailableIfNeed()V

    return-void

    .end local v3    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    array-length v5, v1

    invoke-static {v1, v7, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get iccid on card"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onIccIdLoadedDone(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v5, 0x3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "cardIndex":I
    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/phone/CardStateMonitor;->getSettedPrimarySlot(Landroid/content/Context;)I

    move-result v2

    .local v2, "settedSlot":I
    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->isSupportLtePlusC()Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v3, v3, v2

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CardStateMonitor;->onIccIdLoaded(Landroid/os/AsyncResult;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/CardStateMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/phone/CardStateMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->getOtherSlot(I)I

    move-result v1

    .local v1, "otherIndex":I
    sget-boolean v3, Lcom/android/phone/CardStateMonitor;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/phone/NBDsdsUtils;->isVirtualCardExist(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/CardStateMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/phone/CardStateMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CardStateMonitor;->onIccIdLoaded(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private onVirtualCardTimeout(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "iccIdResult"    # Landroid/os/AsyncResult;

    .prologue
    sget-object v1, Lcom/android/phone/CardStateMonitor;->checkVirtualcard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/CardStateMonitor;->onIccIdLoaded(Landroid/os/AsyncResult;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "cardIndex":I
    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->clearVirtualCardInfo(I)V

    .end local v0    # "cardIndex":I
    :cond_0
    return-void
.end method

.method private onlyDataCardAbsent()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->getCurrentDdsSlot()I

    move-result v0

    .local v0, "dataSlot":I
    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->getOtherSlot(I)I

    move-result v1

    .local v1, "otherSlot":I
    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCardState(I)V
    .locals 3
    .param p1, "sub"    # I

    .prologue
    invoke-static {p1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICC changed on sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CardStateMonitor;->notifyCardAvailableIfNeed(ILcom/android/internal/telephony/uicc/UiccCard;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "cardIndex"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "on EVENT_ICC_CHANGED"

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->onIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CardStateMonitor;->onIccIdLoadedDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->onIccIdLoaded(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->notifyOnlyDataCardAbsentIfNeed()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->onVirtualCardTimeout(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v1, "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardInfoAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    monitor-exit v3

    goto :goto_1

    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerOnlyDataCardAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v1, "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mDataCardAbsentRegistrants:Landroid/os/RegistrantList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mDataCardAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->onlyDataCardAbsent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->isRadioAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->getCurrentDdsSlot()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CardStateMonitor;->getOtherSlot(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_2
    monitor-exit v3

    goto :goto_1

    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
