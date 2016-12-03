.class Lcom/android/phone/NBQCMBNController$DealHandler;
.super Landroid/os/Handler;
.source "NBQCMBNController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DealHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCMBNController;


# direct methods
.method public constructor <init>(Lcom/android/phone/NBQCMBNController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # invokes: Lcom/android/phone/NBQCMBNController;->handlerAutoSelectDone(Landroid/os/Message;)V
    invoke-static {v8, p1}, Lcom/android/phone/NBQCMBNController;->access$300(Lcom/android/phone/NBQCMBNController;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "slotId":I
    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # invokes: Lcom/android/phone/NBQCMBNController;->setNetworkSelectionModeAutomatic(I)V
    invoke-static {v8, v7}, Lcom/android/phone/NBQCMBNController;->access$400(Lcom/android/phone/NBQCMBNController;I)V

    goto :goto_0

    .end local v7    # "slotId":I
    :pswitch_2
    iget-object v9, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/NBQCMBNController;->activateMbnCodeAuto(Ljava/lang/String;I)V
    invoke-static {v9, v8, v10}, Lcom/android/phone/NBQCMBNController;->access$500(Lcom/android/phone/NBQCMBNController;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NBQCMBNController;->access$000(Lcom/android/phone/NBQCMBNController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/phone/NBDsdsUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NBQCMBNController;->access$000(Lcom/android/phone/NBQCMBNController;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .local v5, "pm":Landroid/os/PowerManager;
    const-string v8, "switch mbn"

    invoke-virtual {v5, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .end local v5    # "pm":Landroid/os/PowerManager;
    :pswitch_4
    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    const/4 v9, 0x0

    # setter for: Lcom/android/phone/NBQCMBNController;->mActiveMbns:[Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/NBQCMBNController;->access$602(Lcom/android/phone/NBQCMBNController;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mMBNState:Lcom/android/phone/NBQCMBNStateMachine;
    invoke-static {v8}, Lcom/android/phone/NBQCMBNController;->access$700(Lcom/android/phone/NBQCMBNController;)Lcom/android/phone/NBQCMBNStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/NBQCMBNStateMachine;->recoverState()V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v8}, Lcom/android/phone/NBQCMBNController;->isQcRilHookReady()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z
    invoke-static {v8}, Lcom/android/phone/NBQCMBNController;->access$200(Lcom/android/phone/NBQCMBNController;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;

    iget-object v9, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-direct {v8, v9}, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;-><init>(Lcom/android/phone/NBQCMBNController;)V

    invoke-virtual {v8}, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;->start()V

    goto :goto_0

    :pswitch_6
    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/android/phone/NBQCMBNController;->access$100(Lcom/android/phone/NBQCMBNController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v8}, Lcom/android/phone/NBQCMBNController;->isQcRilHookReady()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mAlreadyUpdateMBN:Z
    invoke-static {v8}, Lcom/android/phone/NBQCMBNController;->access$200(Lcom/android/phone/NBQCMBNController;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;

    iget-object v9, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-direct {v8, v9}, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;-><init>(Lcom/android/phone/NBQCMBNController;)V

    invoke-virtual {v8}, Lcom/android/phone/NBQCMBNController$UpdateMBNInfoThread;->start()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "getAr":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "phoneId":I
    const/4 v1, -0x1

    .local v1, "modemNetworkMode":I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    const/4 v9, 0x0

    aget v1, v8, v9

    :cond_1
    invoke-static {v4}, Lcom/android/phone/NBPreferedNetworkMode;->getUserNetworkMode(I)I

    move-result v8

    if-eq v1, v8, :cond_0

    invoke-static {v4}, Lcom/android/phone/NBPreferedNetworkMode;->getUserNetworkMode(I)I

    move-result v1

    const-string v8, "NBQCMBNController"

    const-string v9, "modify modem\'s network type to user\'s config"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NBQCMBNController$DealHandler;->this$0:Lcom/android/phone/NBQCMBNController;

    # getter for: Lcom/android/phone/NBQCMBNController;->mDealHandler:Lcom/android/phone/NBQCMBNController$DealHandler;
    invoke-static {v8}, Lcom/android/phone/NBQCMBNController;->access$800(Lcom/android/phone/NBQCMBNController;)Lcom/android/phone/NBQCMBNController$DealHandler;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/phone/NBQCMBNController$DealHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "onCompleted":Landroid/os/Message;
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v0    # "getAr":Landroid/os/AsyncResult;
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "onCompleted":Landroid/os/Message;
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneId":I
    :pswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .local v6, "setAr":Landroid/os/AsyncResult;
    iget-object v8, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    const-string v8, "NBQCMBNController"

    const-string v9, "modify network type success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
