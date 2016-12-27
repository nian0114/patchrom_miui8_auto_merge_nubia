.class public Lcom/nubia/settings/turboshow/TurboManagementUtils;
.super Ljava/lang/Object;
.source "TurboManagementUtils.java"


# static fields
.field private static simSubState:[Z


# direct methods
.method public static autoOpenConnection(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->autoOpenWifiConnection(Landroid/content/Context;)Z

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSimSubState(Landroid/content/Context;)V

    .line 106
    sget-object v0, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    sget-object v0, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-static {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getMobileDataSettings(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, v2}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getMobileDataSettings(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->turnOnDataConnect(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static autoOpenWifiConnection(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 79
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 80
    .local v1, "wifiApState":I
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 82
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 84
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    return v2
.end method

.method private static broadcastSwitchDataCard(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub"    # I

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public static checkOneEnvBefStartService(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkTwoEnvBefStartService(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSimSubState(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getMobileDataSettings(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    invoke-static {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getMobileDataSettings(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static convertDataUsage(F)Ljava/lang/String;
    .locals 10
    .param p0, "dataUsage"    # F

    .prologue
    .line 251
    const-wide/16 v2, 0x400

    .line 252
    .local v2, "kb":J
    const-wide/16 v6, 0x400

    mul-long v4, v2, v6

    .line 253
    .local v4, "mb":J
    const-wide/16 v6, 0x400

    mul-long v0, v4, v6

    .line 254
    .local v0, "gb":J
    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v6, p0, v6

    if-gez v6, :cond_0

    .line 255
    const-string v6, "%.2fB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 273
    :goto_0
    return-object v6

    .line 256
    :cond_0
    const/high16 v6, 0x42c80000    # 100.0f

    cmpg-float v6, p0, v6

    if-gez v6, :cond_1

    .line 257
    const-string v6, "%.1fB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 258
    :cond_1
    const/high16 v6, 0x447a0000    # 1000.0f

    cmpg-float v6, p0, v6

    if-gez v6, :cond_2

    .line 259
    const-string v6, "%.0fB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 260
    :cond_2
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v2

    long-to-float v6, v6

    cmpg-float v6, p0, v6

    if-gez v6, :cond_3

    .line 261
    const-string v6, "%.2fKB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v2

    div-float v9, p0, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 262
    :cond_3
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v2

    long-to-float v6, v6

    cmpg-float v6, p0, v6

    if-gez v6, :cond_4

    .line 263
    const-string v6, "%.1fKB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v2

    div-float v9, p0, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 264
    :cond_4
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v2

    long-to-float v6, v6

    cmpg-float v6, p0, v6

    if-gez v6, :cond_5

    .line 265
    const-string v6, "%.0fKB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v2

    div-float v9, p0, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 266
    :cond_5
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    long-to-float v6, v6

    cmpg-float v6, p0, v6

    if-gez v6, :cond_6

    .line 267
    const-string v6, "%.2fMB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v4

    div-float v9, p0, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 268
    :cond_6
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v4

    long-to-float v6, v6

    cmpg-float v6, p0, v6

    if-gez v6, :cond_7

    .line 269
    const-string v6, "%.1fMB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v4

    div-float v9, p0, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 270
    :cond_7
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v4

    long-to-float v6, v6

    cmpg-float v6, p0, v6

    if-gez v6, :cond_8

    .line 271
    const-string v6, "%.0fMB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v4

    div-float v9, p0, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 273
    :cond_8
    const-string v6, "%.2fGB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v0

    div-float v9, p0, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private static getDefaultTM()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEIs(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "iMEIMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "iMEIMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .restart local p0    # "iMEIMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 228
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 229
    .local v2, "tempImei":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 230
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_0

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return-void
.end method

.method public static getMobileDataSettings(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub"    # I

    .prologue
    const/4 v1, 0x0

    .line 114
    const-string v0, "nubia_mobile_data"

    .line 115
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static getPrefPrimarySlot(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-static {}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->supportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_pre_primary_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static getSimSubState(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    const/4 v2, 0x2

    new-array v2, v2, [Z

    sput-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    .line 178
    const-string v1, "sim2subenabled"

    .line 179
    .local v1, "KEY_SIM2SUBENABLED":Ljava/lang/String;
    const-string v0, "sim1subenabled"

    .line 180
    .local v0, "KEY_SIM1SUBENABLED":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSubEnableValueFromSettings(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 181
    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aput-boolean v3, v2, v4

    .line 185
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSubEnableValueFromSettings(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 186
    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aput-boolean v3, v2, v3

    .line 190
    :cond_1
    :goto_1
    return-void

    .line 182
    :cond_2
    invoke-static {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSubEnableValueFromSettings(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 183
    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {p0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSubEnableValueFromSettings(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 188
    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aput-boolean v4, v2, v3

    goto :goto_1
.end method

.method private static getSubEnableValueFromSettings(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSubEnableKey"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getSubIdBySlotId(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 89
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 90
    aget v1, v0, v1

    .line 92
    :cond_0
    return v1
.end method

.method public static hasIccCard()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-static {}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getDefaultTM()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 30
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 35
    .local v0, "has":Z
    :cond_1
    :goto_0
    return v0

    .line 33
    .end local v0    # "has":Z
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .restart local v0    # "has":Z
    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isMultiSimCardPhone()Z
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getDefaultTM()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method private static isOneSimEnableBetweenTwoCard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSimSubState(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 58
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 62
    .local v1, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 71
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static recordUmengData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p0, p1}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static recordUmengData(Landroid/content/Context;Ljava/util/HashMap;III)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "totalSpeedUpTime"    # I
    .param p3, "totalLteThrput"    # I
    .param p4, "speedUpTate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "iMEIMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 240
    const-string v0, "speed_up_total_time"

    div-int/lit16 v1, p2, 0x3e8

    invoke-static {p0, v0, p1, v1}, Lcn/nubia/umeng/NBMobclickAgent;->onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 242
    :cond_0
    if-eqz p3, :cond_1

    .line 243
    const-string v0, "consume_thrput"

    invoke-static {p0, v0, p1, p3}, Lcn/nubia/umeng/NBMobclickAgent;->onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 245
    :cond_1
    if-eqz p4, :cond_2

    .line 246
    const-string v0, "avg_speed_up_rate"

    invoke-static {p0, v0, p1, p4}, Lcn/nubia/umeng/NBMobclickAgent;->onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 248
    :cond_2
    return-void
.end method

.method private static supportLtePlusC()Z
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "supportLtePlusC":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportLtePlusC()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static turnOnDataConnect(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 119
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 121
    .local v3, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->isMultiSimCardPhone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->isOneSimEnableBetweenTwoCard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    sget-object v4, Lcom/nubia/settings/turboshow/TurboManagementUtils;->simSubState:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 129
    .local v0, "primary":I
    :goto_0
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getPrefPrimarySlot(Landroid/content/Context;)I

    move-result v1

    .line 130
    .local v1, "primarySlot":I
    if-ne v1, v0, :cond_1

    .line 131
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSubIdBySlotId(I)I

    move-result v2

    .line 132
    .local v2, "primarySubId":I
    invoke-virtual {v3, v2, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 144
    .end local v0    # "primary":I
    .end local v1    # "primarySlot":I
    .end local v2    # "primarySubId":I
    :goto_1
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "primary":I
    goto :goto_0

    .line 134
    .restart local v1    # "primarySlot":I
    :cond_1
    invoke-static {p0, v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->broadcastSwitchDataCard(Landroid/content/Context;I)V

    goto :goto_1

    .line 137
    .end local v0    # "primary":I
    .end local v1    # "primarySlot":I
    :cond_2
    invoke-static {p0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getPrefPrimarySlot(Landroid/content/Context;)I

    move-result v0

    .line 138
    .restart local v0    # "primary":I
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getSubIdBySlotId(I)I

    move-result v2

    .line 139
    .restart local v2    # "primarySubId":I
    invoke-virtual {v3, v2, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    .line 142
    .end local v0    # "primary":I
    .end local v2    # "primarySubId":I
    :cond_3
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_1
.end method
