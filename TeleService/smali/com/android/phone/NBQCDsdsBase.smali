.class public abstract Lcom/android/phone/NBQCDsdsBase;
.super Lcom/android/phone/NBDsdsBase;
.source "NBQCDsdsBase.java"


# instance fields
.field private final ACTION_PRIMARY_STATE_CHANGED:Ljava/lang/String;

.field protected final DO_NOT_SWITCH_MBN:I

.field protected final DO_SWITCH_MBN:I

.field protected final FAILED:I

.field private final MBN_UPDATE_FAILED:Ljava/lang/String;

.field private final MBN_UPDATE_SUCCESS:Ljava/lang/String;

.field protected final NEED_SWITCH:I

.field protected final NOT_NEED_SWITCH:I

.field protected final PRIMARY_CHANGE_STATE_CHANGING:I

.field protected final PRIMARY_CHANGE_STATE_IDLE:I

.field private final PRIMARY_STATE_KEY:Ljava/lang/String;

.field private final PROPERTY_LAB_TEST:Ljava/lang/String;

.field private final PROPERTY_MBN_UPDATE:Ljava/lang/String;

.field protected mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

.field protected mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

.field protected mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/phone/NBDsdsBase;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/phone/NBQCDsdsBase;->DO_NOT_SWITCH_MBN:I

    iput v1, p0, Lcom/android/phone/NBQCDsdsBase;->DO_SWITCH_MBN:I

    iput v1, p0, Lcom/android/phone/NBQCDsdsBase;->NEED_SWITCH:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/NBQCDsdsBase;->NOT_NEED_SWITCH:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/NBQCDsdsBase;->FAILED:I

    iput v2, p0, Lcom/android/phone/NBQCDsdsBase;->PRIMARY_CHANGE_STATE_IDLE:I

    iput v1, p0, Lcom/android/phone/NBQCDsdsBase;->PRIMARY_CHANGE_STATE_CHANGING:I

    new-instance v0, Lcom/android/phone/NBPreferedNetworkMode;

    iget-object v1, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/NBPreferedNetworkMode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

    const-string v0, "android.phone.action.PRIMARY.STATE.CHANGED"

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->ACTION_PRIMARY_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "primary_state_key"

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->PRIMARY_STATE_KEY:Ljava/lang/String;

    const-string v0, "fail"

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->MBN_UPDATE_FAILED:Ljava/lang/String;

    const-string v0, "success"

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->MBN_UPDATE_SUCCESS:Ljava/lang/String;

    const-string v0, "gsm.mbn_ota.update"

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->PROPERTY_MBN_UPDATE:Ljava/lang/String;

    const-string v0, "persist.radio.lab.test"

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->PROPERTY_LAB_TEST:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/NBQCDsdsBase$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBQCDsdsBase$1;-><init>(Lcom/android/phone/NBQCDsdsBase;)V

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-static {p1}, Lcom/android/phone/NBQCMBNController;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/phone/NBQCMBNController;->getInstance()Lcom/android/phone/NBQCMBNController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    return-void
.end method

.method private getMBNUpdateResult()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "gsm.mbn_ota.update"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRebootTimes()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reboot_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isPrimaryLteSubEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private saveRebootTimes(I)V
    .locals 2
    .param p1, "times"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reboot_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showMBNErroDialog(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    new-instance v2, Lcom/android/phone/NBQCMBNAlertDialogBuilder;

    iget-object v3, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/phone/NBQCMBNAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .local v2, "mbnBuilder":Lcom/android/phone/NBQCMBNAlertDialogBuilder;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0414

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "btnMessage":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/android/phone/NBQCDsdsBase$2;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/NBQCDsdsBase$2;-><init>(Lcom/android/phone/NBQCDsdsBase;I)V

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/AlertDialog;->show()V

    return-void

    .end local v0    # "btnMessage":Ljava/lang/String;
    .end local v1    # "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected configPrimaryLteSub()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v1, "NBDualCard"

    const-string v2, "start mapping primary slot!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCDsdsBase;->getWillPrimarySlot(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->setLogicFuturePrimaryCard(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBQCDsdsBase;->isPrimaryNetworkCorrect()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v0

    .local v0, "slot":I
    const-string v1, "NBDualCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current stack for target primary slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not correct, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "set network to mapping it!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBQCDsdsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/android/phone/NBQCDsdsBase;->setPrimaryChangeState(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/phone/NBQCDsdsBase;->mNBPreferedNetworkMode:Lcom/android/phone/NBPreferedNetworkMode;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/phone/NBQCDsdsBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/NBPreferedNetworkMode;->setPreferredNetwork(ILandroid/os/Message;)V

    .end local v0    # "slot":I
    :cond_0
    return-void
.end method

.method protected getWillPrimarySlot(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBQCDsdsBase;->getCurrentPrimarySlotFromDb(Landroid/content/Context;)I

    move-result v2

    .local v2, "prefPrimarySlot":I
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->getDefaultDataSlot(Landroid/content/Context;)I

    move-result v4

    .local v4, "settedPrimarySlot":I
    invoke-static {v2}, Lcom/android/phone/NBDsdsUtils;->getOtherSlot(I)I

    move-result v0

    .local v0, "otherSlotId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .local v3, "primaryUiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .local v1, "otherUiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    .local v5, "settedUiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const-string v7, "NBDualCard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current primary slot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", selectting a slot to be target primary slot!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    .local v6, "willPrimarySlot":I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v7, v8, :cond_1

    move v6, v4

    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v1, v0, v6}, Lcom/android/phone/NBQCDsdsBase;->getPrimaryAccordCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard;II)I

    move-result v6

    return v6

    :cond_1
    move v6, v2

    goto :goto_0
.end method

.method public initNetworkHandware(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const-string v2, "NBDualCard"

    const-string v3, "inital network handware!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBQCDsdsBase;->isLabTestEnabledOrFailOver()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBQCDsdsBase;->getMBNUpdateResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBQCDsdsBase;->getMBNUpdateResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fail"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBQCDsdsBase;->getRebootTimes()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .local v0, "type":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/NBQCDsdsBase;->saveRebootTimes(I)V

    invoke-direct {p0, v0}, Lcom/android/phone/NBQCDsdsBase;->showMBNErroDialog(I)V

    .end local v0    # "type":I
    :cond_1
    const-string v1, "NBDualCard"

    const-string v2, "mbn updated result is success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected isLabTestEnabledOrFailOver()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "persist.radio.lab.test"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCDsdsBase;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Lcom/android/phone/NBQCMBNController;->isFailOverMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected abstract isPrimaryNetworkCorrect()Z
.end method

.method protected setPrimaryChangeState(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.phone.action.PRIMARY.STATE.CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "primary_state_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected setPrimarySub()V
    .locals 2

    .prologue
    const-string v0, "NBDualCard"

    const-string v1, "start dual card setting process!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/NBQCDsdsBase;->mRadioCapabilityAvailable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NBQCDsdsBase;->mNeedHandleModemReadyEvent:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBQCDsdsBase;->loadStates()V

    iget-boolean v0, p0, Lcom/android/phone/NBQCDsdsBase;->mAllCardsAbsent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBQCDsdsBase;->isAllThingsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBQCDsdsBase;->ensureActivate()V

    invoke-direct {p0}, Lcom/android/phone/NBQCDsdsBase;->isPrimaryLteSubEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NBDualCard"

    const-string v1, "target primary slot selected,start map primary slot!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/NBQCDsdsBase;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
