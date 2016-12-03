.class Lcom/android/phone/NBDdsSwitchController$3;
.super Ljava/lang/Object;
.source "NBDdsSwitchController.java"

# interfaces
.implements Lcom/android/phone/NBOnConfigLteDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBDdsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBDdsSwitchController;


# direct methods
.method constructor <init>(Lcom/android/phone/NBDdsSwitchController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigLteDone(I)V
    .locals 4
    .param p1, "primarySub"    # I

    .prologue
    const-string v1, "NBDdsSwitchController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config lte done,primarysub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    invoke-virtual {v1}, Lcom/android/phone/NBDdsSwitchController;->needBindDefaultDataOnPrimarySub()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # getter for: Lcom/android/phone/NBDdsSwitchController;->mIccLoaded:[Z
    invoke-static {v1}, Lcom/android/phone/NBDdsSwitchController;->access$400(Lcom/android/phone/NBDdsSwitchController;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    const-string v1, "NBDdsSwitchController"

    const-string v2, "icc of current primary sub is loaded,set default data to priamrySub!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # invokes: Lcom/android/phone/NBDdsSwitchController;->setDefaultDataToPrimarySub()V
    invoke-static {v1}, Lcom/android/phone/NBDdsSwitchController;->access$500(Lcom/android/phone/NBDdsSwitchController;)V

    :cond_0
    :goto_0
    const-string v1, "NBDdsSwitchController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set prefer network for primary sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # invokes: Lcom/android/phone/NBDdsSwitchController;->setPreferNetworkType(I)V
    invoke-static {v1, p1}, Lcom/android/phone/NBDdsSwitchController;->access$700(Lcom/android/phone/NBDdsSwitchController;I)V

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # getter for: Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NBDdsSwitchController;->access$800(Lcom/android/phone/NBDdsSwitchController;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/phone/NBDdsSwitchController;->setDefaultDataEnabled(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/phone/NBDdsSwitchController;->access$900(Lcom/android/phone/NBDdsSwitchController;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # getter for: Lcom/android/phone/NBDdsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NBDdsSwitchController;->access$800(Lcom/android/phone/NBDdsSwitchController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    .end local v0    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    return-void

    .restart local v0    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBDdsSwitchController$3;->this$0:Lcom/android/phone/NBDdsSwitchController;

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/NBDdsSwitchController;->mRestoreDdsToPrimarySub:Z
    invoke-static {v1, v2}, Lcom/android/phone/NBDdsSwitchController;->access$602(Lcom/android/phone/NBDdsSwitchController;Z)Z

    goto :goto_0
.end method
