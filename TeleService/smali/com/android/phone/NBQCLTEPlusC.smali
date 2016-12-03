.class public Lcom/android/phone/NBQCLTEPlusC;
.super Lcom/android/phone/NBQCDsdsBase;
.source "NBQCLTEPlusC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBQCLTEPlusC$1;,
        Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;
    }
.end annotation


# instance fields
.field private mLTEPlusCReceiver:Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;

.field private mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCDsdsBase;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;-><init>(Lcom/android/phone/NBQCLTEPlusC;Lcom/android/phone/NBQCLTEPlusC$1;)V

    iput-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mLTEPlusCReceiver:Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;

    new-instance v1, Lcom/android/phone/NBQCMBNHelper;

    invoke-direct {v1, p1}, Lcom/android/phone/NBQCMBNHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "networkFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "qualcomm.intent.action.QCRIL_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mLTEPlusCReceiver:Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected configPrimaryLteSub()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v2, "NBDualCard"

    const-string v3, "start mapping primary slot!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/phone/NBQCLTEPlusC;->getWillPrimarySlot(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/NBDsdsUtils;->setLogicFuturePrimaryCard(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->isLabTestEnabledOrFailOver()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNHelper;->needMBNSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NBDualCard"

    const-string v3, "ssr firstly!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNHelper;->getAllNeedMBNInfo()[Ljava/lang/String;

    move-result-object v0

    .local v0, "mbnInfo":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v2, v0}, Lcom/android/phone/NBQCMBNController;->selectMBNBySSR([Ljava/lang/String;)V

    .end local v0    # "mbnInfo":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->isPrimaryNetworkCorrect()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v1

    .local v1, "slot":I
    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current stack for target primary slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not correct, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set network to mapping it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/NBQCLTEPlusC;->setPrimaryChangeState(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCLTEPlusC;->setTelecomAutomatic(I)V

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/phone/NBQCLTEPlusC;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/NBPreferedNetworkMode;->setPreferredNetwork(ILandroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->saveSubscriptions()V

    goto :goto_0
.end method

.method protected getPrimaryAccordCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard;II)I
    .locals 4
    .param p1, "primary"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "other"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "otherSlot"    # I
    .param p4, "defaultSlot"    # I

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCLTEPlusC;->getCurrentPrimarySlotFromDb(Landroid/content/Context;)I

    move-result v0

    .local v0, "primarySlot":I
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->supportCDMAMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCLTEPlusC;->backupSubStateFromDB(I)V

    const-string v1, "NBDualCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "two cdma card inserted , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is selected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->supportCDMAMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p3

    const-string v1, "NBDualCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "only one cdma card inserted , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is selected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/android/phone/NBDsdsUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->isLabTestEnabledOrFailOver()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNHelper;->getWillPrimaryByMBN()I

    move-result v0

    const-string v1, "NBDualCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no cdma card inserted ,select by mbn, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is selected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "NBDualCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is selected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
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
    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->onConfigLteDone()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "slot":I
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v1}, Lcom/android/phone/NBDdsSwitchController;->needBindDefaultDataOnPrimarySub()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBDdsSwitchController;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBDdsSwitchController;->setDataToTargetSub(I)V

    goto :goto_0

    .end local v0    # "slot":I
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1, p0}, Lcom/android/phone/NBQCMBNController;->unregisterMBNConfigIdUpdated(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->setPrimarySub()V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNHelper;->updateSubMBN()V

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->configPrimaryLteSub()V

    goto :goto_0

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
    .locals 4

    .prologue
    const/4 v0, 0x1

    .local v0, "ready":Z
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNHelper;->isMbnMechanism()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNController;->isQcRilHookReady()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NBDualCard"

    const-string v2, "qcRilHook of mbnController is not ready,rebind it!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-virtual {v1, v2}, Lcom/android/phone/NBQCMBNController;->reBind(Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->isLabTestEnabledOrFailOver()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNController;->isMBNConfigIdUpdated()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NBDualCard"

    const-string v2, "mbnconfig of mbnController is not updated,wait it!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/NBQCMBNController;->registerMBNConfigIdUpdated(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPrimaryNetworkCorrect()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v1

    .local v1, "primarySlot":I
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v0

    .local v0, "logicPrimarySlot":I
    if-ne v0, v1, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/NBQCLTEPlusC;->mCardChanged:Z

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2, v2}, Lcom/android/phone/NBQCLTEPlusC;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public needSwitchMbn(Z)I
    .locals 5
    .param p1, "auto"    # Z

    .prologue
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->isLabTestEnabledOrFailOver()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNHelper;->updateSubMBN()V

    const-string v2, "NBDualCard"

    const-string v3, "update mbn for mbnhelper again!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNHelper;->getAllNeedMBNInfo()[Ljava/lang/String;

    move-result-object v0

    .local v0, "mbnInfo":[Ljava/lang/String;
    const-string v2, "NBDualCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mbn needed to re set is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->isEmpty([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .end local v0    # "mbnInfo":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method protected onConfigLteDone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v2, "NBDualCard"

    const-string v3, "map primary slot done!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/NBQCLTEPlusC;->setPrimaryChangeState(Landroid/content/Context;I)V

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v1

    .local v1, "primarySlot":I
    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

    invoke-virtual {v2, v1}, Lcom/android/phone/NBPreferedNetworkMode;->setPendingNetwork(I)V

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/NBQCLTEPlusC;->saveCurrentPrimarySlotToDb(Landroid/content/Context;I)V

    invoke-virtual {p0, v4}, Lcom/android/phone/NBQCLTEPlusC;->needSwitchMbn(Z)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "NBDualCard"

    const-string v3, "need switch mbn, select mbn by ssr!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNHelper:Lcom/android/phone/NBQCMBNHelper;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNHelper;->getAllNeedMBNInfo()[Ljava/lang/String;

    move-result-object v0

    .local v0, "mbnInfo":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v2, v0}, Lcom/android/phone/NBQCMBNController;->selectMBNBySSR([Ljava/lang/String;)V

    .end local v0    # "mbnInfo":[Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    const-string v2, "NBDualCard"

    const-string v3, "not need switch mbn, just notify and updated infomation!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NBQCLTEPlusC;->updateSubActivation()V

    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCLTEPlusC;->notifyConfigLteDone(I)V

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/NBQCLTEPlusC;->handleTelecomNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method
