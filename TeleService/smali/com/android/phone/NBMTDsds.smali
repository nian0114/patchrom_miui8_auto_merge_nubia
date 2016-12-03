.class public Lcom/android/phone/NBMTDsds;
.super Lcom/android/phone/NBDsdsBase;
.source "NBMTDsds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBMTDsds$1;,
        Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;
    }
.end annotation


# instance fields
.field private mMTKDsdsReceiver:Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBDsdsBase;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;-><init>(Lcom/android/phone/NBMTDsds;Lcom/android/phone/NBMTDsds$1;)V

    iput-object v1, p0, Lcom/android/phone/NBMTDsds;->mMTKDsdsReceiver:Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "networkFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NBMTDsds;->mMTKDsdsReceiver:Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected getPrimaryAccordCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard;II)I
    .locals 3
    .param p1, "primary"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "other"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "otherSlot"    # I
    .param p4, "defaultSlot"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMTDsds;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_pre_primary_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getWillPrimarySlot(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    return-void
.end method

.method public initNetworkHandware(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected isAllThingsReady()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigLteDone()V
    .locals 0

    .prologue
    return-void
.end method
