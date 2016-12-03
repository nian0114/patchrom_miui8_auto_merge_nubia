.class Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBQCLTEPlusC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCLTEPlusC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LTEPlusCReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/phone/NBQCLTEPlusC;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBQCLTEPlusC;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBQCLTEPlusC;Lcom/android/phone/NBQCLTEPlusC$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBQCLTEPlusC;
    .param p2, "x1"    # Lcom/android/phone/NBQCLTEPlusC$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;-><init>(Lcom/android/phone/NBQCLTEPlusC;)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    invoke-virtual {v1, p1}, Lcom/android/phone/NBQCLTEPlusC;->handleSimStateChanged(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->handleSetDefaultData(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    iget-object v1, v1, Lcom/android/phone/NBQCLTEPlusC;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "qualcomm.intent.action.QCRIL_SERVICE_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/NBQCLTEPlusC;->mRadioCapabilityAvailable:Z

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    iget-boolean v1, v1, Lcom/android/phone/NBQCLTEPlusC;->mNeedHandleModemReadyEvent:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    invoke-virtual {v1}, Lcom/android/phone/NBQCLTEPlusC;->setPrimarySub()V

    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/NBQCLTEPlusC;->mNeedHandleModemReadyEvent:Z

    :cond_3
    iget-object v1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    iget-object v2, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/NBQCLTEPlusC;->saveCurrentPrimarySlotToDb(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->updataStackId()V

    goto :goto_0
.end method

.method private handleSetDefaultData(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v3, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .local v1, "defaultData":I
    const-string v3, "phone"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "cardIndex":I
    invoke-static {v0}, Lcom/android/phone/NBDsdsUtils;->getSubIdBySlotId(I)I

    move-result v2

    .local v2, "subId":I
    iget-object v3, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/NBDsdsUtils;->getDefaultDataSlot(Landroid/content/Context;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    iget-object v3, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCLTEPlusC;

    iget-object v3, v3, Lcom/android/phone/NBQCLTEPlusC;->mNBDdsSwitchController:Lcom/android/phone/NBDdsSwitchController;

    iget-object v4, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/NBDdsSwitchController;->setMaualEnabled(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/phone/NBQCLTEPlusC$LTEPlusCReceiver;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
