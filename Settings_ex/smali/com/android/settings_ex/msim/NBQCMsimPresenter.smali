.class public Lcom/android/settings_ex/msim/NBQCMsimPresenter;
.super Lcom/android/settings_ex/msim/NBMsimPresenter;
.source "NBQCMsimPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/msim/NBQCMsimPresenter$1;,
        Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final NUBIA_ROAMING_ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    const-string v2, "ro.nubia.softsim_roaming.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->NUBIA_ROAMING_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings_ex/msim/INBMsimView;Landroid/content/Context;[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;[Landroid/preference/nubia/CheckBoxPreference;)V
    .locals 2
    .param p1, "msimView"    # Lcom/android/settings_ex/msim/INBMsimView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cardEnablers"    # [Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
    .param p4, "dataCheckBoxs"    # [Landroid/preference/nubia/CheckBoxPreference;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/msim/NBMsimPresenter;-><init>(Lcom/android/settings_ex/msim/INBMsimView;Landroid/content/Context;[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;[Landroid/preference/nubia/CheckBoxPreference;)V

    .line 82
    new-instance v0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;-><init>(Lcom/android/settings_ex/msim/NBQCMsimPresenter;Lcom/android/settings_ex/msim/NBQCMsimPresenter$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/msim/NBQCMsimPresenter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBQCMsimPresenter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->handlerSubInfoChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastSwichPrimaryCard(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "rebootDialog"    # Z

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v1, "rebootDialog"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method private getDefaultDataSlot()I
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method private getPrefPrimarySlot()I
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_pre_primary_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handlerSubInfoChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    const-string v4, "phone"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "slotId":I
    const-string v4, "newProvisionState"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, "subState":I
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-interface {v4, v0, v2}, Lcom/android/settings_ex/msim/INBMsimView;->updateEnabler(IZ)V

    .line 178
    return-void

    :cond_0
    move v2, v3

    .line 177
    goto :goto_0
.end method

.method private is3GType(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "is3GType":Z
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 271
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v3

    .line 272
    .local v3, "subId":I
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getOtherSlot(I)I

    move-result v1

    .line 273
    .local v1, "otherSlot":I
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v2

    .line 274
    .local v2, "otherSubId":I
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaMobile(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 280
    :cond_1
    const/4 v0, 0x1

    .line 287
    :cond_2
    :goto_0
    return v0

    .line 281
    :cond_3
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private swichDataCard(IZZ)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z
    .param p3, "showDialog"    # Z

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getPrefPrimarySlot()I

    move-result v1

    .line 139
    .local v1, "primarySlot":I
    if-eqz p2, :cond_3

    if-eq v1, p1, :cond_3

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setEnabled(Z)V

    .line 143
    if-eq v0, p1, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->broadcastSwichPrimaryCard(IZ)V

    .line 148
    if-eqz p3, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2}, Lcom/android/settings_ex/msim/INBMsimView;->showDataAlertDialog()V

    .line 154
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 152
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->setMobileDataEnabled(IZ)V

    goto :goto_1
.end method

.method private switchDefaltData(IZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getOtherSlot(I)I

    move-result v0

    .line 158
    .local v0, "otherSlot":I
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getDefaultDataSlot()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 160
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->broadcastSwichPrimaryCard(IZ)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->setMobileDataEnabled(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public getDataSlot()I
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getDefaultDataSlot()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getPrefPrimarySlot()I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredNetworkModeFromDB(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 244
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 246
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, p2}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 255
    :goto_0
    const-string v2, "NBQCMsimPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get pref network mode ,slotId = "

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

    .line 257
    return v0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "NBQCMsimPresenter"

    const-string v3, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCapabilitySwitching()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isDataChecked(I)Z
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getPrefPrimarySlot()I

    move-result v2

    .line 183
    .local v2, "primarySlot":I
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getDefaultDataSlot()I

    move-result v0

    .line 184
    .local v0, "dataSlot":I
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v0

    .line 186
    .local v1, "mobileData":I
    :goto_0
    if-eq v1, p1, :cond_2

    .line 190
    :cond_0
    :goto_1
    return v4

    .end local v1    # "mobileData":I
    :cond_1
    move v1, v2

    .line 184
    goto :goto_0

    .line 189
    .restart local v1    # "mobileData":I
    :cond_2
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v3

    .line 190
    .local v3, "subId":I
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public isNotSupportOperator(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 202
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->isCDMACard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getPrefPrimarySlot()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportLtePlusC()Z
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "support":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportLtePlusC()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isSupportLtePlusWcdma()Z
    .locals 2

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "support":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportLtePlusWcdma()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 220
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDataPreferenceChanged(IZ)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->swichDataCard(IZZ)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->switchDefaltData(IZ)V

    goto :goto_0
.end method

.method public onSubStateChanged(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 124
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 125
    .local v0, "subId":I
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->setSubEnabled(IZ)V

    .line 126
    return-void
.end method

.method public registerReceiverAndObserver()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.phone.action.PRIMARY.STATE.CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method public saveUserNetworkMode(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "nwMode"    # I

    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 263
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

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

    .line 265
    return-void
.end method

.method public setPreferredNetworkModeDB(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "nwMode"    # I

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p2, p3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 241
    return-void
.end method

.method protected updateNetworkListEnabled(ILcn/nubia/commonui/preference/ListPreference;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listPreference"    # Lcn/nubia/commonui/preference/ListPreference;

    .prologue
    const v1, 0x7f0c0cc4

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getPrefPrimarySlot()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 100
    invoke-virtual {p2, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 101
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    .line 117
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getDefaultDataSlot()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusWcdma()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->is3GType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const v0, 0x7f0c0cc6

    invoke-virtual {p2, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 110
    :goto_1
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p2, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    .line 111
    :cond_2
    sget-boolean v0, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 113
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 115
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
