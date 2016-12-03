.class public Lcom/android/phone/NBQCUnLTEPlusC;
.super Lcom/android/phone/NBQCDsdsBase;
.source "NBQCUnLTEPlusC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;
    }
.end annotation


# instance fields
.field private final CSFB:Ljava/lang/String;

.field private final SRLTE:Ljava/lang/String;

.field private mMaxRetryTimes:I

.field private mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

.field private mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

.field private mSetPrimaryIntent:Landroid/content/Intent;

.field private mSwitchMbnDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

.field private mUnLTEPlusCReceiver:Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCDsdsBase;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mMaxRetryTimes:I

    const-string v1, "srlte"

    iput-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->SRLTE:Ljava/lang/String;

    const-string v1, "csfb"

    iput-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->CSFB:Ljava/lang/String;

    new-instance v1, Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;-><init>(Lcom/android/phone/NBQCUnLTEPlusC;Lcom/android/phone/NBQCUnLTEPlusC$1;)V

    iput-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mUnLTEPlusCReceiver:Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;

    new-instance v1, Lcom/android/phone/NBQCMBNHelper;

    invoke-direct {v1, p1}, Lcom/android/phone/NBQCMBNHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "networkFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "qualcomm.intent.action.QCRIL_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mUnLTEPlusCReceiver:Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBQCUnLTEPlusC;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCUnLTEPlusC;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->onRebootPositiveClick(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NBQCUnLTEPlusC;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCUnLTEPlusC;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/NBQCUnLTEPlusC;Lcn/nubia/commonui/phone/app/AlertDialog;)Lcn/nubia/commonui/phone/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBQCUnLTEPlusC;
    .param p1, "x1"    # Lcn/nubia/commonui/phone/app/AlertDialog;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSwitchMbnDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    return-object p1
.end method

.method private alertBeforeSetPrimary()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCUnLTEPlusC;->needSwitchMbn(Z)I

    move-result v0

    .local v0, "needed":I
    if-ne v0, v1, :cond_1

    const-string v2, "NBDualCard"

    const-string v3, "need switch mbn, show reboot dialog!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/phone/NBQCUnLTEPlusC;->showRebootDialog(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v1, "NBDualCard"

    const-string v2, "not need switch mbn, start config primary lte sub!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->dismissRebootDialog()V

    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->configPrimaryLteSub()V

    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->saveSubscriptions()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissRebootDialog()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getMbn()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v2

    .local v2, "prefPrimarySlot":I
    sget-object v3, Lcom/android/phone/NBQCUnLTEPlusC;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pirmaryIccId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "mbn":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->needCSFB()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "csfb"

    :goto_0
    const-string v4, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needed mbn is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_4

    const-string v3, " not need!"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/NBQCUnLTEPlusC;->needSRLTE()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "srlte"

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const-string v3, "8986"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "srlte"

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "csfb"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_1
.end method

.method private getSwitchMbnTypeForSwitchData(Landroid/content/Context;IZ)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "checked"    # Z

    .prologue
    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBQCUnLTEPlusC;->needSwitchMbnBeforeCtoG(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBQCUnLTEPlusC;->needSwitchMbnBeforeGtoC(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->handleSimStateChanged(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->handlePrimaryChanged(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "qualcomm.intent.action.QCRIL_SERVICE_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSetPrimaryIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSetPrimaryIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/NBDsdsUtils;->getDefaultDataSlot(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimarySlot(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRadioCapabilityAvailable:Z

    iget-boolean v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNeedHandleModemReadyEvent:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimarySub()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNeedHandleModemReadyEvent:Z

    :cond_4
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NBQCUnLTEPlusC;->saveCurrentPrimarySlotToDb(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private handlePrimaryChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .local v1, "defaultData":I
    const-string v4, "phone"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "cardIndex":I
    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v2

    .local v2, "subId":I
    iget-object v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v4

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v4}, Lcom/android/phone/NBQCMBNHelper;->isMbnMechanism()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v4}, Lcom/android/phone/NBQCMBNController;->isQcRilHookReady()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/NBQCMBNController;->reBind(Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object p1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSetPrimaryIntent:Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimarySlot(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private needCSFB()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getCustom()Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    move-result-object v0

    sget-object v1, Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;->CHINA_MOBILE:Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getCustom()Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    move-result-object v0

    sget-object v1, Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;->CHINA_UNICOM:Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getCustom()Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    move-result-object v0

    sget-object v1, Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;->CM_CU_CHANNEL:Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needSRLTE()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getCustom()Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    move-result-object v0

    sget-object v1, Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;->CHINA_TELECOM:Lcn/nubia/telestatic/adapter/NBTeleStaticOrginInfo$Custom;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needSwitchByCustom(Ljava/lang/String;)I
    .locals 8
    .param p1, "configInfo"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "Commercial-SRLTE-DSDS-CT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .local v1, "isSrlte":Z
    :goto_0
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "Default-CSFB"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .local v0, "isCsfb":Z
    :cond_0
    const/4 v2, 0x2

    .local v2, "needed":I
    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->needCSFB()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    move v2, v6

    :goto_1
    return v2

    .end local v0    # "isCsfb":Z
    .end local v1    # "isSrlte":Z
    .end local v2    # "needed":I
    :cond_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "isCsfb":Z
    .restart local v1    # "isSrlte":Z
    .restart local v2    # "needed":I
    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/phone/NBQCUnLTEPlusC;->needSRLTE()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_4

    move v2, v6

    :goto_2
    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v4

    .local v4, "primarySlot":I
    sget-object v5, Lcom/android/phone/NBQCUnLTEPlusC;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v5, v4}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "pirmaryIccId":Ljava/lang/String;
    if-eqz v3, :cond_8

    if-eqz v1, :cond_6

    invoke-static {v4}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "8986"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    invoke-static {v4}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "8986"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    if-eqz v0, :cond_9

    invoke-static {v4}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    const/4 v2, 0x2

    goto :goto_1

    :cond_9
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private needSwitchMbnBeforeCtoG(Landroid/content/Context;I)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v11

    if-eqz v11, :cond_0

    :goto_0
    return v10

    :cond_0
    if-nez p2, :cond_5

    move v6, v9

    .local v6, "otherSlot":I
    :goto_1
    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v8

    .local v8, "subId":I
    invoke-static {v6}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v7

    .local v7, "otherSubId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "otherIccId":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v0, :cond_1

    const-string v11, "8986"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_1
    move v1, v9

    .local v1, "isForeignCdmaCard":Z
    :goto_2
    invoke-static {v6}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v5, :cond_2

    const-string v11, "8986"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_2
    move v2, v9

    .local v2, "isOtherForeignCdmaCard":Z
    :goto_3
    invoke-static {p1, p2}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v4

    .local v4, "isTelecom":Z
    invoke-static {p1, v6}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v3

    .local v3, "isOtherTelecom":Z
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportSrLte()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->getCurrentPrimarySlotFromDb(Landroid/content/Context;)I

    move-result v11

    if-eq p2, v11, :cond_8

    if-nez v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-nez v4, :cond_8

    if-eqz v3, :cond_8

    :cond_4
    :goto_4
    move v10, v9

    goto :goto_0

    .end local v0    # "iccId":Ljava/lang/String;
    .end local v1    # "isForeignCdmaCard":Z
    .end local v2    # "isOtherForeignCdmaCard":Z
    .end local v3    # "isOtherTelecom":Z
    .end local v4    # "isTelecom":Z
    .end local v5    # "otherIccId":Ljava/lang/String;
    .end local v6    # "otherSlot":I
    .end local v7    # "otherSubId":I
    .end local v8    # "subId":I
    :cond_5
    move v6, v10

    goto :goto_1

    .restart local v0    # "iccId":Ljava/lang/String;
    .restart local v5    # "otherIccId":Ljava/lang/String;
    .restart local v6    # "otherSlot":I
    .restart local v7    # "otherSubId":I
    .restart local v8    # "subId":I
    :cond_6
    move v1, v10

    goto :goto_2

    .restart local v1    # "isForeignCdmaCard":Z
    :cond_7
    move v2, v10

    goto :goto_3

    .restart local v2    # "isOtherForeignCdmaCard":Z
    .restart local v3    # "isOtherTelecom":Z
    .restart local v4    # "isTelecom":Z
    :cond_8
    move v9, v10

    goto :goto_4
.end method

.method private needSwitchMbnBeforeGtoC(Landroid/content/Context;I)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v11

    if-eqz v11, :cond_0

    :goto_0
    return v10

    :cond_0
    if-nez p2, :cond_5

    move v6, v9

    .local v6, "otherSlot":I
    :goto_1
    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v8

    .local v8, "subId":I
    invoke-static {v6}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v7

    .local v7, "otherSubId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "otherIccId":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v0, :cond_1

    const-string v11, "8986"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_1
    move v1, v9

    .local v1, "isForeignCdmaCard":Z
    :goto_2
    invoke-static {v6}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v5, :cond_2

    const-string v11, "8986"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_2
    move v2, v9

    .local v2, "isOtherForeignCdmaCard":Z
    :goto_3
    invoke-static {p1, p2}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v4

    .local v4, "isTelecom":Z
    invoke-static {p1, v6}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v3

    .local v3, "isOtherTelecom":Z
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportSrLte()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->getCurrentPrimarySlotFromDb(Landroid/content/Context;)I

    move-result v11

    if-eq p2, v11, :cond_8

    if-eqz v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    :cond_4
    :goto_4
    move v10, v9

    goto :goto_0

    .end local v0    # "iccId":Ljava/lang/String;
    .end local v1    # "isForeignCdmaCard":Z
    .end local v2    # "isOtherForeignCdmaCard":Z
    .end local v3    # "isOtherTelecom":Z
    .end local v4    # "isTelecom":Z
    .end local v5    # "otherIccId":Ljava/lang/String;
    .end local v6    # "otherSlot":I
    .end local v7    # "otherSubId":I
    .end local v8    # "subId":I
    :cond_5
    move v6, v10

    goto :goto_1

    .restart local v0    # "iccId":Ljava/lang/String;
    .restart local v5    # "otherIccId":Ljava/lang/String;
    .restart local v6    # "otherSlot":I
    .restart local v7    # "otherSubId":I
    .restart local v8    # "subId":I
    :cond_6
    move v1, v10

    goto :goto_2

    .restart local v1    # "isForeignCdmaCard":Z
    :cond_7
    move v2, v10

    goto :goto_3

    .restart local v2    # "isOtherForeignCdmaCard":Z
    .restart local v3    # "isOtherTelecom":Z
    .restart local v4    # "isTelecom":Z
    :cond_8
    move v9, v10

    goto :goto_4
.end method

.method private onRebootPositiveClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->switchMbn()V

    const v0, 0x7f0b03f1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    return-void
.end method

.method private retryFixModemErro(Z)I
    .locals 10
    .param p1, "auto"    # Z

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v7, 0x0

    const/4 v3, 0x3

    const-string v4, "NBDualCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mbn info failed,retry time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mMaxRetryTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mMaxRetryTimes:I

    if-lez v4, :cond_1

    if-eqz p1, :cond_0

    const-string v4, "NBDualCard"

    const-string v5, "restart dual card setting process after two seconds!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/phone/NBQCUnLTEPlusC;->removeMessages(I)V

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/phone/NBQCUnLTEPlusC;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mMaxRetryTimes:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mMaxRetryTimes:I

    :goto_1
    return v3

    :cond_0
    const-string v4, "NBDualCard"

    const-string v5, "retry get active mbn info after two seconds!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.phone.action.CHANGE.PRIMARY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "phone"

    iget-object v5, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/phone/NBQCUnLTEPlusC;->getWillPrimarySlot(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "rebootDialog"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v7, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "pending":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pending":Landroid/app/PendingIntent;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private setPrimarySlot(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/phone/NBQCUnLTEPlusC;->getSwitchMbnTypeForSwitchData(Landroid/content/Context;IZ)I

    move-result v1

    .local v1, "needed":I
    if-eq v1, v4, :cond_2

    const-string v2, "rebootDialog"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p2, v1}, Lcom/android/phone/NBQCUnLTEPlusC;->showSwitchMbnDialog(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSetPrimaryIntent:Landroid/content/Intent;

    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->setLogicFuturePrimaryCard(I)V

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->switchMbn()V

    goto :goto_0

    :cond_2
    if-ne v1, v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/phone/NBQCUnLTEPlusC;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p2, v0}, Lcom/android/phone/NBQCUnLTEPlusC;->setUserPrefNetwork(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private setUserPrefNetwork(ILandroid/os/Message;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v0, Lcom/android/phone/NBPreferedNetworkMode;

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/NBPreferedNetworkMode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->setTelecomAutomatic(I)V

    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NBPreferedNetworkMode;->setPreferredNetwork(ILandroid/os/Message;)V

    return-void
.end method

.method private showRebootDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v1, 0x30e000a

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0b03ed

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03ee

    new-instance v2, Lcom/android/phone/NBQCUnLTEPlusC$2;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC$2;-><init>(Lcom/android/phone/NBQCUnLTEPlusC;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NBQCUnLTEPlusC$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NBQCUnLTEPlusC$1;-><init>(Lcom/android/phone/NBQCUnLTEPlusC;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mRebootDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private showSwitchMbnDialog(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logicPrimarySlot"    # I
    .param p3, "resson"    # I

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSwitchMbnDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    if-nez v1, :cond_1

    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v1, 0x30e000a

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v0, "dialogBuilder":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    if-nez p3, :cond_2

    const v1, 0x7f0b0369

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v1, 0x7f0b036c

    new-instance v2, Lcom/android/phone/NBQCUnLTEPlusC$3;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC$3;-><init>(Lcom/android/phone/NBQCUnLTEPlusC;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v1, 0x7f0b036d

    new-instance v2, Lcom/android/phone/NBQCUnLTEPlusC$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/phone/NBQCUnLTEPlusC$4;-><init>(Lcom/android/phone/NBQCUnLTEPlusC;ILandroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSwitchMbnDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSwitchMbnDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mSwitchMbnDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/AlertDialog;->show()V

    .end local v0    # "dialogBuilder":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    :cond_1
    return-void

    .restart local v0    # "dialogBuilder":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const v1, 0x7f0b036a

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private switchMbn()V
    .locals 3

    .prologue
    const-string v0, "NBDualCard"

    const-string v1, "swtich mbn by reboot!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->getMbn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/NBQCMBNController;->selectMBNByReboot(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected dismissCardNotification(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->getWillPrimarySlot(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->setLogicFuturePrimaryCard(I)V

    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->dismissRebootDialog()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->dismissErroDialog()V

    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->dismissErroNotification(Landroid/content/Context;)V

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->dismissTelecomNotification(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected getPrimaryAccordCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard;II)I
    .locals 5
    .param p1, "primary"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "other"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "otherSlot"    # I
    .param p4, "defaultSlot"    # I

    .prologue
    move v1, p4

    .local v1, "primarySlot":I
    if-ne p4, p3, :cond_0

    move-object v0, p2

    .local v0, "primaryCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->supportCDMAMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "two cdma card inserted , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is selected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    .end local v0    # "primaryCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .restart local v0    # "primaryCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->supportCDMAMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v2, p3}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, p3

    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "only one cdma card inserted and actived , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is selected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_3

    move v1, p3

    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the other card is absent , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is selected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is selected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->onConfigLteDone()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "slot":I
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v1}, Lcom/android/phone/NBDdsSwitchController;->needBindDefaultDataOnPrimarySub()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBDdsSwitchController;->setDataToTargetSub(I)V

    goto :goto_0

    .end local v0    # "slot":I
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1, p0}, Lcom/android/phone/NBQCMBNController;->unregisterMBNConfigIdUpdated(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->alertBeforeSetPrimary()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected isAllThingsReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "ready":Z
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNHelper;->isMbnMechanism()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNController;->isQcRilHookReady()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NBDualCard"

    const-string v2, "cRilHook of mbnController is not ready,rebind it!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-virtual {v1, v2}, Lcom/android/phone/NBQCMBNController;->reBind(Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->isAllIccIdQueryDone()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NBDualCard"

    const-string v2, "not all iccid is query done, wait it!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPrimaryNetworkCorrect()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v1

    .local v1, "primarySlot":I
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v0

    .local v0, "logicPrimarySlot":I
    if-ne v0, v1, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mCardChanged:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v6, v3, v3}, Lcom/android/phone/NBQCUnLTEPlusC;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return v2

    :cond_0
    sget-object v4, Lcom/android/phone/NBQCUnLTEPlusC;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/phone/NBQCUnLTEPlusC;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v6, v3, v3}, Lcom/android/phone/NBQCUnLTEPlusC;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public needSwitchMbn(Z)I
    .locals 4
    .param p1, "auto"    # Z

    .prologue
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v3}, Lcom/android/phone/NBQCMBNHelper;->isMbnMechanism()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v3}, Lcom/android/phone/NBQCMBNController;->getActiveMbnInfo()Ljava/lang/String;

    move-result-object v0

    .local v0, "configInfo":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;->retryFixModemErro(Z)I

    move-result v1

    .local v1, "result":I
    if-ne v1, v2, :cond_0

    .end local v0    # "configInfo":Ljava/lang/String;
    .end local v1    # "result":I
    :goto_0
    return v2

    .restart local v0    # "configInfo":Ljava/lang/String;
    .restart local v1    # "result":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/NBQCUnLTEPlusC;->needSwitchByCustom(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .end local v1    # "result":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/NBQCUnLTEPlusC;->needSwitchByCustom(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .end local v0    # "configInfo":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method protected onConfigLteDone()V
    .locals 3

    .prologue
    const-string v1, "NBDualCard"

    const-string v2, "map primary slot done!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimaryChangeState(Landroid/content/Context;I)V

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    .local v0, "primarySlot":I
    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBPreferedNetworkMode;->setPendingNetwork(I)V

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NBQCUnLTEPlusC;->saveCurrentPrimarySlotToDb(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/phone/NBQCUnLTEPlusC;->updateSubActivation()V

    invoke-virtual {p0, v0}, Lcom/android/phone/NBQCUnLTEPlusC;->notifyConfigLteDone(I)V

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NBQCUnLTEPlusC;->handleTelecomNotification(Landroid/content/Context;I)V

    return-void
.end method
