.class Lcom/android/phone/NBQCMBNController$1;
.super Ljava/lang/Object;
.source "NBQCMBNController.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCMBNController;


# direct methods
.method constructor <init>(Lcom/android/phone/NBQCMBNController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNController$1;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQcRilHookDisconnected()V
    .locals 0

    .prologue
    return-void
.end method

.method public onQcRilHookReady()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCMBNController$1;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NBQCMBNController;->access$000(Lcom/android/phone/NBQCMBNController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "qualcomm.intent.action.QCRIL_SERVICE_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCMBNController$1;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/phone/NBQCMBNController;->access$100(Lcom/android/phone/NBQCMBNController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCMBNController$1;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z
    invoke-static {v0}, Lcom/android/phone/NBQCMBNController;->access$200(Lcom/android/phone/NBQCMBNController;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;

    iget-object v1, p0, Lcom/android/phone/NBQCMBNController$1;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-direct {v0, v1}, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;-><init>(Lcom/android/phone/NBQCMBNController;)V

    invoke-virtual {v0}, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;->start()V

    :cond_0
    return-void
.end method
