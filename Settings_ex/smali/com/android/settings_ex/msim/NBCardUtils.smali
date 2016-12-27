.class public Lcom/android/settings_ex/msim/NBCardUtils;
.super Ljava/lang/Object;
.source "NBCardUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 201
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 203
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    .local v2, "subInfoLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 207
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 208
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 215
    .end local v0    # "i":I
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfoLength":I
    :goto_1
    return-object v1

    .line 206
    .restart local v0    # "i":I
    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subInfoLength":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfoLength":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getChinaOperator(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "oper":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaMobile(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const v1, 0x7f0c0c40

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaUnicom(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    const v1, 0x7f0c0c3f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const v1, 0x7f0c0c41

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHardwareID()I
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "hardwareId":I
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getHardwareId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const/16 v0, 0x1f

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getNum(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 111
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    const/4 v0, 0x0

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneNum_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v1

    .line 119
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOperator(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "oper":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getChinaOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    :cond_2
    if-nez p1, :cond_4

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_3
    :goto_0
    return-object v0

    .line 52
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOtherSlot(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 191
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubIdBySlotId(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 86
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 87
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 88
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 90
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isChinaMobile(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "ok":Z
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v2

    .line 130
    .local v2, "subId":I
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "iccId":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "898600"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "898602"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "898603"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "898607"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "898641"

    aput-object v5, v3, v4

    .line 136
    .local v3, "targets":[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/settings_ex/msim/NBCardUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 138
    .end local v0    # "iccId":Ljava/lang/String;
    .end local v3    # "targets":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isChinaTelecom(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "ok":Z
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v2

    .line 154
    .local v2, "subId":I
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "iccId":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "898603"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "898606"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "898611"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "8985302"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "8985307"

    aput-object v5, v3, v4

    .line 160
    .local v3, "targets":[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/settings_ex/msim/NBCardUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 162
    .end local v0    # "iccId":Ljava/lang/String;
    .end local v3    # "targets":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static isChinaUnicom(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 142
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v1

    .line 143
    .local v1, "subId":I
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "iccId":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "898601"

    aput-object v4, v2, v3

    .line 148
    .local v2, "targets":[Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings_ex/msim/NBCardUtils;->isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private static isInTargets(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "targets"    # [Ljava/lang/String;

    .prologue
    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, "ok":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 168
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 169
    .local v4, "target":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    const/4 v3, 0x1

    .line 175
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "target":Ljava/lang/String;
    :cond_0
    return v3

    .line 168
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isSupportedCDMA()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-static {}, Lcom/android/settings_ex/msim/NBCardUtils;->getHardwareID()I

    move-result v0

    .line 73
    .local v0, "hardwareID":I
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setOperator(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "oper"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v1

    const-wide/16 v2, 0x2

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 101
    return-void
.end method

.method public static setPhoneNum(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "num"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneNum_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    return-void
.end method
