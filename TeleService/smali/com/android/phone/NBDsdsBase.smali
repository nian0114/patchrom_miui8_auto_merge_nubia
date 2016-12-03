.class public abstract Lcom/android/phone/NBDsdsBase;
.super Landroid/os/Handler;
.source "NBDsdsBase.java"


# static fields
.field protected static final NUBIA_ROAMING_ENABLE:Z

.field protected static mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

.field private static mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

.field private static mErroNotification:Landroid/app/Notification;

.field private static mPopupAlert:Z

.field private static mTelecomNotification:Landroid/app/Notification;


# instance fields
.field protected mAllCardsAbsent:Z

.field protected mCardChanged:Z

.field protected final mContext:Landroid/content/Context;

.field protected mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

.field protected mNeedHandleModemReadyEvent:Z

.field private mOnConfigLteDoneListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/NBOnConfigLteDoneListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field protected mPhones:[Lcom/android/internal/telephony/Phone;

.field protected mRadioCapabilityAvailable:Z

.field private mSetAutomatic:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManger:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NBDsdsBase;->mPopupAlert:Z

    const-string v2, "ro.nubia.softsim_roaming.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/NBDsdsBase;->NUBIA_ROAMING_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v3, p0, Lcom/android/phone/NBDsdsBase;->mAllCardsAbsent:Z

    iput-boolean v1, p0, Lcom/android/phone/NBDsdsBase;->mCardChanged:Z

    iput-boolean v1, p0, Lcom/android/phone/NBDsdsBase;->mNeedHandleModemReadyEvent:Z

    iput-boolean v1, p0, Lcom/android/phone/NBDsdsBase;->mRadioCapabilityAvailable:Z

    iput-boolean v1, p0, Lcom/android/phone/NBDsdsBase;->mSetAutomatic:Z

    new-instance v1, Lcom/android/phone/NBDsdsBase$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NBDsdsBase$1;-><init>(Lcom/android/phone/NBDsdsBase;)V

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v1, Lcom/android/phone/CardStateMonitor;

    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/phone/CardStateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    sget-object v1, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v1, p0, v3, v4}, Lcom/android/phone/CardStateMonitor;->registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget v0, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    .local v0, "numPhones":I
    if-le v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/NBDdsSwitchController;->getInstance(Landroid/content/Context;)Lcom/android/phone/NBDdsSwitchController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/phone/CardStateMonitor;->registerOnlyDataCardAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBDsdsBase;->mTelephonyManger:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBDsdsBase;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBDsdsBase;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBDsdsBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method private autoSetPreferredNetwork()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBDsdsBase;->isDefaultCardsInfoChanged()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/NBDsdsBase;->mTelephonyManger:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "subscription"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    new-instance v2, Lcom/android/phone/NBPreferedNetworkMode;

    iget-object v4, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/phone/NBPreferedNetworkMode;-><init>(Landroid/content/Context;)V

    .local v2, "nbPreferedNetworkMode":Lcom/android/phone/NBPreferedNetworkMode;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/phone/NBPreferedNetworkMode;->getNetworkMode(I)I

    move-result v1

    .local v1, "mode":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getAvailableIccId()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "iccIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v3, v0}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "iccId":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getCardStateMonitor()Lcom/android/phone/CardStateMonitor;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    return-object v0
.end method

.method private handleAbsent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .local v0, "defaultData":I
    const-string v2, "phone"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/phone/NBDsdsBase;->resetPhoneNumAndOperator(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/NBDsdsBase;->dismissCardNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private handleLoaded(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBDsdsBase;->autoSetPreferredNetwork()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .local v0, "defaultData":I
    const-string v3, "phone"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "slotId":I
    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/NBDsdsBase;->resetPhoneNumAndOperator(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/phone/NBDsdsBase;->showErroDialog(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/phone/NBDsdsBase;->showErroNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private isAllCardsAbsent()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_0

    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " present!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return v2

    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    const-string v2, "NBDualCard"

    const-string v3, "all card absent!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isCardsInfoChanged(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    sget-object v2, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v2, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccIdInSP":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDefaultCardsInfoChanged()Z
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mTelephonyManger:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "subscription"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccIdInSP":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetOperator(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private resetPhoneNum(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneNum_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneNum_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private resetPhoneNumAndOperator(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-direct {p0, p1, p2, v1}, Lcom/android/phone/NBDsdsBase;->resetPhoneNum(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/android/phone/NBDsdsBase;->resetOperator(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.nubia.intent.action.ACTION_OPERATOR_NUM_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "phone"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showErroDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/phone/NBDsdsBase;->mPopupAlert:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sput-boolean v2, Lcom/android/phone/NBDsdsBase;->mPopupAlert:Z

    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v1, 0x30e000a

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0b0404

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0405

    new-instance v2, Lcom/android/phone/NBDsdsBase$2;

    invoke-direct {v2, p0}, Lcom/android/phone/NBDsdsBase$2;-><init>(Lcom/android/phone/NBDsdsBase;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NBDsdsBase;->mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    sget-object v0, Lcom/android/phone/NBDsdsBase;->mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    sget-object v0, Lcom/android/phone/NBDsdsBase;->mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private showErroNotification(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, "nm":Landroid/app/NotificationManager;
    const v4, 0x7f0b0404

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    const v4, 0x7f0b0403

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "title":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    sput-object v4, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    const/16 v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    const v5, 0x7f020072

    iput v5, v4, Landroid/app/Notification;->icon:I

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    iput-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    invoke-virtual {v4, p1, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v4, "two card are telecom"

    sget-object v5, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    invoke-virtual {v1, v4, v8, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private showTelecomNotification(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, "nm":Landroid/app/NotificationManager;
    const v4, 0x7f0b03f9

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    const v4, 0x7f0b03f8

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "title":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.MSIM_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    sput-object v4, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    const v5, 0x7f020072

    iput v5, v4, Landroid/app/Notification;->icon:I

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    iput-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    sget-object v4, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    invoke-virtual {v4, p1, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v4, "telecom can not work"

    sget-object v5, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    invoke-virtual {v1, v4, v8, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected backupSubStateFromDB(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    sget-object v3, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/NBPhoneExtra;->getSubStateDB(Ljava/lang/String;)Z

    move-result v2

    .local v2, "subState":Z
    const-string v3, "NBDualCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupSubStateFromDB slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SECOND_CDMA_STATE_BACKUP"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_0

    const-string v3, "SUB_STATE_ON"

    :goto_0
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v3, "SUB_STATE_OFF"

    goto :goto_0
.end method

.method protected dismissCardNotification(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBDsdsBase;->dismissErroDialog()V

    invoke-virtual {p0, p1}, Lcom/android/phone/NBDsdsBase;->dismissErroNotification(Landroid/content/Context;)V

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/NBDsdsBase;->dismissTelecomNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected dismissErroDialog()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBDsdsBase;->mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/NBDsdsBase;->mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/NBDsdsBase;->mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NBDsdsBase;->mErroDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    :cond_0
    return-void
.end method

.method protected dismissErroNotification(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v1, "two card are telecom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/NBDsdsBase;->mErroNotification:Landroid/app/Notification;

    return-void
.end method

.method protected dismissTelecomNotification(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v1, "telecom can not work"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/NBDsdsBase;->mTelecomNotification:Landroid/app/Notification;

    return-void
.end method

.method protected ensureActivate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/phone/NBDsdsBase;->getAvailableIccId()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "iccIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/phone/NBPhoneExtra;->getSubStateDB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NBDualCard"

    const-string v2, "the only one card inserted is not actived,active it for user!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/android/phone/NBPhoneExtra;->setSubStateDB(Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method protected getCurrentPrimarySlotFromDb(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_pre_primary_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected abstract getPrimaryAccordCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard;II)I
.end method

.method protected abstract getWillPrimarySlot(Landroid/content/Context;)I
.end method

.method protected handleSimStateChanged(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "simState":Ljava/lang/String;
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/phone/NBDsdsBase;->handleLoaded(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBDsdsBase;->handleAbsent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected handleTelecomNotification(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "primarySlot"    # I

    .prologue
    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->getOtherSlot(I)I

    move-result v0

    .local v0, "otherSlot":I
    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBDsdsBase;->showTelecomNotification(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/NBDsdsBase;->dismissTelecomNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public abstract initNetworkHandware(Landroid/content/Context;)Z
.end method

.method protected isAllIccIdQueryDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBDsdsBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected abstract isAllThingsReady()Z
.end method

.method protected loadStates()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NBDsdsBase;->mCardChanged:Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/phone/NBDsdsBase;->isCardsInfoChanged(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/phone/NBDsdsBase;->mCardChanged:Z

    const-string v1, "NBDualCard"

    const-string v2, "there is at least one card info changed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/android/phone/NBDsdsBase;->mSetAutomatic:Z

    const-string v1, "NBDualCard"

    const-string v2, "card info in current primary slot is changed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/NBDsdsBase;->resetSubStateToDBIfHasBackup(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NBDsdsBase;->isAllCardsAbsent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/NBDsdsBase;->mAllCardsAbsent:Z

    return-void
.end method

.method protected notifyConfigLteDone(I)V
    .locals 6
    .param p1, "primarySlot"    # I

    .prologue
    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    const-string v2, "NBDualCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config lte done, notify listeners,now primary slot is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getConfigLteDoneListenerList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NBDsdsBase;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NBOnConfigLteDoneListener;

    .local v1, "listener":Lcom/android/phone/NBOnConfigLteDoneListener;
    invoke-interface {v1, p1}, Lcom/android/phone/NBOnConfigLteDoneListener;->onConfigLteDone(I)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/phone/NBOnConfigLteDoneListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected abstract onConfigLteDone()V
.end method

.method protected resetSubStateToDBIfHasBackup(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    sget-object v3, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECOND_CDMA_STATE_BACKUP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUB_STATE_UNKNOW"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "SubStateBackupInSP":Ljava/lang/String;
    const-string v3, "NBDualCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetSubStateToDBIfHasBackup slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SUB_STATE_UNKNOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v4

    const-string v3, "SUB_STATE_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v1, v3}, Lcom/android/phone/NBPhoneExtra;->setSubStateDB(Ljava/lang/String;Z)I

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SECOND_CDMA_STATE_BACKUP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected saveCurrentPrimarySlotToDb(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_pre_primary_slot"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "NBDualCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save current primary slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Database!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected saveSubscriptions()V
    .locals 5

    .prologue
    const-string v2, "NBDualCard"

    const-string v3, "mapping request is sended, save subscription!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save subscription in slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that iccid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to SP!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "iccId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected setTelecomAutomatic(I)V
    .locals 3
    .param p1, "primarySlot"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBDsdsBase;->mSetAutomatic:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-static {p1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    sget-object v1, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.action.SET.NETWORK.AUTOMATIC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBDsdsBase;->mSetAutomatic:Z

    :cond_0
    return-void
.end method

.method protected updateSubActivation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0x63

    sget v2, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    new-array v1, v2, [I

    .local v1, "state":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBDsdsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/phone/NBDsdsBase;->getCurrentPrimarySlotFromDb(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v0, :cond_0

    aput v3, v1, v0

    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/phone/NBPhoneExtra;->deactivateUiccCard(I)I

    invoke-virtual {p0, v4}, Lcom/android/phone/NBDsdsBase;->resetSubStateToDBIfHasBackup(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/NBDsdsBase;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    aput v2, v1, v0

    goto :goto_1

    :cond_1
    aput v3, v1, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/phone/NBPhoneExtra;->getInstance()Lcom/android/phone/NBPhoneExtra;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/NBPhoneExtra;->updateSubActivation([I)V

    return-void
.end method
