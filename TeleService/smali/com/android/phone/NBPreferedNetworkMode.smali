.class public Lcom/android/phone/NBPreferedNetworkMode;
.super Ljava/lang/Object;
.source "NBPreferedNetworkMode.java"


# static fields
.field private static DEFAULT_NW_MODE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPendingNetwork:I

.field private mPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/NBPreferedNetworkMode;->DEFAULT_NW_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPendingNetwork:I

    iput-object p1, p0, Lcom/android/phone/NBPreferedNetworkMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v0, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public static getCDMANetworkMode()I
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/phone/NBNetworkModeFactory;->getDefault()Lcom/android/phone/NBNetworkModeFactory;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/NBNetworkModeFactory;->getNetworkMode(I)Lcom/android/phone/NBNetworkMode;

    move-result-object v0

    .local v0, "networkMode":Lcom/android/phone/NBNetworkMode;
    invoke-virtual {v0}, Lcom/android/phone/NBNetworkMode;->getNetworkModeValue()I

    move-result v1

    return v1
.end method

.method public static getGSMNetworkMode()I
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/phone/NBNetworkModeFactory;->getDefault()Lcom/android/phone/NBNetworkModeFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/NBNetworkModeFactory;->getNetworkMode(I)Lcom/android/phone/NBNetworkMode;

    move-result-object v0

    .local v0, "networkMode":Lcom/android/phone/NBNetworkMode;
    invoke-virtual {v0}, Lcom/android/phone/NBNetworkMode;->getNetworkModeValue()I

    move-result v1

    return v1
.end method

.method private getNTtoBePrimary(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v0, 0x7

    .local v0, "network":I
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/NBPreferedNetworkMode;->getUserNetworkMode(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/NBPreferedNetworkMode;->getUserNetworkMode(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPendingNetwork:I

    goto :goto_0
.end method

.method public static getNetworkMode(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 1
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/NBPreferedNetworkMode;->getCDMANetworkMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/NBPreferedNetworkMode;->getGSMNetworkMode()I

    move-result v0

    goto :goto_0
.end method

.method public static getUserNetworkMode(I)I
    .locals 4
    .param p0, "slot"    # I

    .prologue
    const/4 v2, 0x1

    .local v2, "userNetwork":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/NBDsdsUtils;->getNwMode(Landroid/content/Context;I)I

    move-result v0

    .local v0, "network":I
    sget v3, Lcom/android/phone/NBPreferedNetworkMode;->DEFAULT_NW_MODE:I

    if-eq v0, v3, :cond_0

    move v2, v0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {v1}, Lcom/android/phone/NBPreferedNetworkMode;->getNetworkMode(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v2

    goto :goto_0
.end method

.method private resetIccid(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPreferedNetworkMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setPreferNetworkType(II)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "network"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPreferedNetworkMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "NBPreferedNetworkMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set user prefred network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public getNetworkMode(I)I
    .locals 1
    .param p1, "cardIndex"    # I

    .prologue
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/NBPreferedNetworkMode;->getCDMANetworkMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/NBPreferedNetworkMode;->getGSMNetworkMode()I

    move-result v0

    goto :goto_0
.end method

.method public setPendingNetwork(I)V
    .locals 5
    .param p1, "primarySlot"    # I

    .prologue
    const/4 v4, -0x1

    iget v1, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPendingNetwork:I

    if-eq v1, v4, :cond_0

    const-string v1, "NBPreferedNetworkMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need set user prefer network for primary slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPendingNetwork:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPendingNetwork:I

    invoke-direct {p0, p1, v1}, Lcom/android/phone/NBPreferedNetworkMode;->setPreferNetworkType(II)V

    iput v4, p0, Lcom/android/phone/NBPreferedNetworkMode;->mPendingNetwork:I

    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    invoke-static {p1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBPreferedNetworkMode;->resetIccid(I)V

    .end local v0    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    return-void
.end method

.method public setPreferredNetwork(ILandroid/os/Message;)V
    .locals 5
    .param p1, "logicPrimarySlot"    # I
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    const-string v2, "NBPreferedNetworkMode"

    const-string v3, "setting preferred network!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .local v0, "network":I
    if-ltz p1, :cond_1

    sget v2, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge p1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    invoke-static {p1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v1, :cond_0

    const-string v2, "NBPreferedNetworkMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiccCard in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is unavailable, return!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    return-void

    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isMTKPlatform()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-static {v1}, Lcom/android/phone/NBPreferedNetworkMode;->getNetworkMode(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v0

    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    :goto_1
    const-string v2, "NBPreferedNetworkMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sent prefnetworkrequest : slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/phone/PrefNetworkRequest;

    iget-object v3, p0, Lcom/android/phone/NBPreferedNetworkMode;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v0, p2}, Lcom/android/phone/PrefNetworkRequest;-><init>(Landroid/content/Context;IILandroid/os/Message;)V

    invoke-virtual {v2}, Lcom/android/phone/PrefNetworkRequest;->loop()V

    goto :goto_0

    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v2

    if-eq p1, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/phone/NBPreferedNetworkMode;->getNTtoBePrimary(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/phone/NBPreferedNetworkMode;->getUserNetworkMode(I)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/android/phone/NBPreferedNetworkMode;->getNetworkMode(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v0

    goto :goto_1
.end method
