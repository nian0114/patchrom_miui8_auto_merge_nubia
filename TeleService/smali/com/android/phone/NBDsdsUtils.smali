.class public Lcom/android/phone/NBDsdsUtils;
.super Ljava/lang/Object;
.source "NBDsdsUtils.java"


# static fields
.field public static final PHONE_COUNT:I

.field private static mLogicPrimarySlot:I

.field private static mOnConfigLteDoneListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/NBOnConfigLteDoneListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mStackId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/NBDsdsUtils;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    sget v0, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/NBDsdsUtils;->mStackId:[I

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/NBDsdsUtils;->mLogicPrimarySlot:I

    return-void
.end method

.method public static addOnConfigLteDoneListener(Lcom/android/phone/NBOnConfigLteDoneListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/android/phone/NBOnConfigLteDoneListener;

    .prologue
    sget-object v1, Lcom/android/phone/NBDsdsUtils;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getConfigLteDoneListenerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/NBOnConfigLteDoneListener;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mOnConfigLteDoneListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCustom()Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;
    .locals 2

    .prologue
    sget-object v0, Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;->GLOBAL:Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    .local v0, "custom":Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getCustom()Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getDefaultDataIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_data_slot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDataSlot(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->getDefaultDataIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultIccid":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->getNonDefaultDataIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .local v3, "nonDefaultIccid":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1    # "i":I
    .end local v2    # "iccId":Ljava/lang/String;
    :goto_1
    return v1

    .restart local v1    # "i":I
    .restart local v2    # "iccId":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->getOtherSlot(I)I

    move-result v4

    .local v4, "otherSlot":I
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "iccId":Ljava/lang/String;
    .end local v4    # "otherSlot":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getDefaultNormalDataEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_normal_data_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDefaultNormalDataSlotIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_normal_data_slot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareId()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "hardwareId":I
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getHardwareId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getIccSerialNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v1

    .local v1, "subId":I
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local v0    # "iccId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "iccId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getLogicFuturePrimaryCard()I
    .locals 1

    .prologue
    sget v0, Lcom/android/phone/NBDsdsUtils;->mLogicPrimarySlot:I

    return v0
.end method

.method public static getMobileDataEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/android/phone/NBDsdsUtils;->getSubIdByIccId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .local v1, "subId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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
    return v0
.end method

.method private static getNonDefaultDataIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "not_default_data_slot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNwMode(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v0, -0x1

    .local v0, "networkMode":I
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v1

    .local v1, "subId":I
    if-eq v1, v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getOtherSlot(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPreDefaultDataEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->getDefaultNormalDataEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getStackOfSlot()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mStackId:[I

    return-object v0
.end method

.method public static getSubIdByIccId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .local v7, "subId":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .local v2, "queryParams":[Ljava/lang/String;
    const-string v3, "icc_id =?"

    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2    # "queryParams":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    return v7

    .restart local v2    # "queryParams":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getSubIdBySlotId(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/NBDsdsUtils;->getSubIdByIccId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCardPresent(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCdmaCard(I)Z
    .locals 3
    .param p0, "cardIndex"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    return v1
.end method

.method public static isChinaMobile(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, p1}, Lcom/android/phone/NBDsdsUtils;->getIccSerialNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "898600"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "898602"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "898603"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "898607"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "898641"

    aput-object v3, v1, v2

    .local v1, "targets":[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/NBDsdsUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .end local v0    # "iccId":Ljava/lang/String;
    .end local v1    # "targets":[Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static isChinaMobile(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z
    .locals 3
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "898600"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "898602"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "898603"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "898607"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "898641"

    aput-object v2, v0, v1

    .local v0, "targets":[Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/phone/NBDsdsUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .end local v0    # "targets":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isChinaTelecom(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lcom/android/phone/NBDsdsUtils;->getIccSerialNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "898603"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "898606"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "898611"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "8985302"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "8985307"

    aput-object v3, v1, v2

    .local v1, "targets":[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/NBDsdsUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .end local v0    # "iccId":Ljava/lang/String;
    .end local v1    # "targets":[Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static isChinaTelecom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z
    .locals 3
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "898603"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "898606"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "898611"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "8985302"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "8985307"

    aput-object v2, v0, v1

    .local v0, "targets":[Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/phone/NBDsdsUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .end local v0    # "targets":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isChinaUnicom(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cardIndex"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/phone/NBDsdsUtils;->getIccSerialNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "898601"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "898609"

    aput-object v3, v1, v2

    .local v1, "targets":[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/NBDsdsUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static isChinaUnicom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z
    .locals 3
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "898601"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "898609"

    aput-object v2, v0, v1

    .local v0, "targets":[Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/phone/NBDsdsUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .end local v0    # "targets":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isEmpty([Ljava/lang/String;)Z
    .locals 2
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .end local v0    # "i":I
    :goto_1
    return v1

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "targets"    # [Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "i":I
    :goto_1
    return v1

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isMTKPlatform()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private static isPrimarySlot(I)Z
    .locals 1
    .param p0, "slot"    # I

    .prologue
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLtePlusC()Z
    .locals 4

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
    const-string v1, "NBDsdsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ltec ? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSupportSrLte()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "support":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportSrLte()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isVirtualCardExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .local v2, "virtualCardExist":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "softsim_iccid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "vcIccId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .end local v1    # "vcIccId":Ljava/lang/String;
    :cond_0
    return v2

    .restart local v1    # "vcIccId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isVirtualCardExist(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "virtualCardExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    move-result-object v0

    .local v0, "vcIccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static restoreDefaultData(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->getDefaultNormalDataSlotIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataIccid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static saveDefaultDataSlot(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBDsdsUtils;->getDefaultDataIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultIccId":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/NBDsdsUtils;->setDefaultNormalDataSlotIccid(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/phone/NBDsdsUtils;->setDefaultNormalDataEnabled(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static setDefaultDataIccid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_data_slot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDefaultDataSlot(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataIccid(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->getOtherSlot(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/phone/NBDsdsUtils;->setNonDefaultDataSlot(Landroid/content/Context;I)V

    return-void
.end method

.method private static setDefaultNormalDataEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/phone/NBDsdsUtils;->getMobileDataEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_normal_data_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_normal_data_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static setDefaultNormalDataEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_normal_data_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setDefaultNormalDataSlotIccid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_normal_data_slot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected static setLogicFuturePrimaryCard(I)V
    .locals 0
    .param p0, "slot"    # I

    .prologue
    sput p0, Lcom/android/phone/NBDsdsUtils;->mLogicPrimarySlot:I

    return-void
.end method

.method private static setNonDefaultDataIccid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "not_default_data_slot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setNonDefaultDataSlot(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/NBDsdsUtils;->setNonDefaultDataIccid(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setPreDefaultDataEnabled(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/android/phone/NBDsdsUtils;->setDefaultNormalDataEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public static supportCDMAMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getHardwareId()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportTDSCDMAMode()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getHardwareId()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportWCDMAMode()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getHardwareId()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updataStackId()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->isPrimarySlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mStackId:[I

    aput v1, v0, v1

    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mStackId:[I

    aput v2, v0, v2

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mStackId:[I

    aput v2, v0, v1

    sget-object v0, Lcom/android/phone/NBDsdsUtils;->mStackId:[I

    aput v1, v0, v2

    goto :goto_0
.end method
