.class public Lcom/android/settings_ex/msim/NBMTKMsimPresenter;
.super Lcom/android/settings_ex/msim/NBMsimPresenter;
.source "NBMTKMsimPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mDealHandler:Landroid/os/Handler;

.field private mMsimModeValue:Landroid/database/ContentObserver;

.field private mSimModeSetting:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/msim/INBMsimView;Landroid/content/Context;[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;[Landroid/preference/nubia/CheckBoxPreference;)V
    .locals 3
    .param p1, "msimView"    # Lcom/android/settings_ex/msim/INBMsimView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cardEnablers"    # [Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
    .param p4, "dataCheckBoxs"    # [Landroid/preference/nubia/CheckBoxPreference;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/msim/NBMsimPresenter;-><init>(Lcom/android/settings_ex/msim/INBMsimView;Landroid/content/Context;[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;[Landroid/preference/nubia/CheckBoxPreference;)V

    .line 29
    new-instance v0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;-><init>(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$2;-><init>(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimModeValue:Landroid/database/ContentObserver;

    .line 96
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "msim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mSimModeSetting:I

    .line 98
    new-instance v0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;-><init>(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->onCardStateModified()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isAllSlotRadioOn(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const/4 v1, 0x1

    .line 247
    .local v1, "isAllRadioOn":Z
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 250
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 251
    .local v2, "numSlots":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 252
    invoke-static {p1, v0}, Lcom/android/settings_ex/msim/NBCardUtils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 254
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 255
    if-eqz v1, :cond_1

    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getSubStateDB(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 251
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 260
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    const-string v5, "NBMTKMsimPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllSlotRadioOn()... isAllRadioOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v1
.end method

.method private onCardStateModified()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 78
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "msim_mode_setting"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "curodeSetting":I
    const-string v2, "NBMTKMsimPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMsimModeValue... mSimMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 83
    iget v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mSimModeSetting:I

    xor-int/2addr v2, v0

    shl-int v3, v5, v1

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 84
    const-string v2, "NBMTKMsimPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCardStatePreference slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2, v1, v5}, Lcom/android/settings_ex/msim/INBMsimView;->updateCardStatePreference(IZ)V

    .line 86
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2, v1}, Lcom/android/settings_ex/msim/INBMsimView;->updateOperatorAndNum(I)V

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iput v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mSimModeSetting:I

    .line 90
    return-void
.end method

.method private setDefaultDataAndDataEnable(IZLandroid/telephony/SubscriptionInfo;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "enable_before"    # Z
    .param p3, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v6, 0x0

    .line 292
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 293
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 294
    .local v0, "subId_t":I
    const-string v3, "NBMTKMsimPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setToClosedSimSlot: sir subId_t = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eq v0, p1, :cond_0

    .line 296
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 298
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 299
    if-eqz p2, :cond_1

    .line 300
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 301
    invoke-virtual {v2, p1, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 306
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_1
    invoke-virtual {v2, v0, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method private setToClosedSimSlot(I)V
    .locals 10
    .param p1, "simSlot"    # I

    .prologue
    .line 265
    const-string v7, "NBMTKMsimPresenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setToClosedSimSlot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v7, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 269
    .local v5, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v4

    .line 270
    .local v4, "subId_close":I
    iget-object v7, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 271
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 272
    .local v3, "subId":I
    const-string v7, "NBMTKMsimPresenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setToClosedSimSlot: subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "subId_close="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eq v4, v3, :cond_1

    .line 288
    :cond_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 278
    .local v1, "simCount":I
    const-string v7, "NBMTKMsimPresenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setToClosedSimSlot: simCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 281
    iget-object v7, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/settings_ex/msim/NBCardUtils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 283
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_2

    .line 284
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v7

    invoke-direct {p0, v3, v7, v2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->setDefaultDataAndDataEnable(IZLandroid/telephony/SubscriptionInfo;)V

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private switchDefaultData(IZ)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->isAllSlotRadioOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->setToClosedSimSlot(I)V

    .line 243
    :cond_0
    return-void
.end method

.method private updateDefaultData(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 216
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    const-string v4, "NBMTKMsimPresenter"

    const-string v5, "updateDefaultData, subId id is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "msim_mode_setting"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 223
    .local v2, "priviousSimMode":I
    const-string v4, "NBMTKMsimPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultData, The current dual sim mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", with subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isRadioOn":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 228
    .local v3, "slot":I
    const/4 v4, 0x1

    shl-int v1, v4, v3

    .line 229
    .local v1, "modeSlot":I
    and-int v4, v2, v1

    if-lez v4, :cond_2

    .line 230
    const/4 v0, 0x0

    .line 234
    :goto_1
    if-ne p2, v0, :cond_0

    .line 235
    invoke-direct {p0, v3, p2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->switchDefaultData(IZ)V

    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getDataSlot()I
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkModeFromDB(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 194
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 195
    .local v0, "nwMode":I
    invoke-static {p2}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v1

    .line 196
    .local v1, "subId":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 200
    const-string v2, "NBMTKMsimPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get pref network mode ,subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v0
.end method

.method public isCapabilitySwitching()Z
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCapabilitySwitching()Z

    move-result v0

    .line 103
    .local v0, "isSwitch":Z
    return v0
.end method

.method public isDataChecked(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 145
    .local v0, "dataSlot":I
    if-eq v0, p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 149
    .local v1, "subId":I
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNotSupportOperator(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLtePlusC()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onDataPreferenceChanged(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 116
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 120
    return-void
.end method

.method public onSubStateChanged(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 108
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 109
    .local v0, "subId":I
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->setSubEnabled(IZ)V

    .line 110
    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->updateDefaultData(IZ)V

    .line 111
    return-void
.end method

.method public registerReceiverAndObserver()V
    .locals 5

    .prologue
    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "cn.nubia.intent.action.ACTION_SET_RADIO_CAPABILITY_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "msim_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimModeValue:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    return-void
.end method

.method public saveUserNetworkMode(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "nwMode"    # I

    .prologue
    .line 207
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 208
    .local v0, "subId":I
    const-string v1, "NBMTKMsimPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save user network mode ,subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", network type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    return-void
.end method

.method public setPreferredNetworkModeDB(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "nwMode"    # I

    .prologue
    .line 185
    invoke-static {p2}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 186
    .local v0, "subId":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    return-void
.end method

.method public unRegisterReceiverAndObserver()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings_ex/msim/NBMsimPresenter;->unRegisterReceiverAndObserver()V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimModeValue:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method protected updateNetworkListEnabled(ILcn/nubia/commonui/preference/ListPreference;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "preference"    # Lcn/nubia/commonui/preference/ListPreference;

    .prologue
    .line 156
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 158
    .local v0, "dataSlot":I
    if-eq v0, p1, :cond_0

    .line 159
    const v1, 0x7f0c0cc4

    invoke-virtual {p2, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
