.class final Lcom/android/phone/NBPhoneExtra$MainThreadHandler;
.super Landroid/os/Handler;
.source "NBPhoneExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBPhoneExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBPhoneExtra;


# direct methods
.method public constructor <init>(Lcom/android/phone/NBPhoneExtra;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->this$0:Lcom/android/phone/NBPhoneExtra;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;

    .local v5, "request":Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    const/4 v6, 0x2

    invoke-virtual {p0, v6, v5}, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, "onCompleted":Landroid/os/Message;
    iget-object v6, v5, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "networkType":I
    iget v6, v5, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->slotId:I

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .end local v2    # "networkType":I
    .end local v3    # "onCompleted":Landroid/os/Message;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "request":Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    :pswitch_1
    iget-object v6, p0, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->this$0:Lcom/android/phone/NBPhoneExtra;

    # invokes: Lcom/android/phone/NBPhoneExtra;->handleSetNetworkDone(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/phone/NBPhoneExtra;->access$000(Lcom/android/phone/NBPhoneExtra;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;

    .restart local v5    # "request":Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v5}, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .restart local v3    # "onCompleted":Landroid/os/Message;
    iget v6, v5, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->slotId:I

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .restart local v4    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .end local v3    # "onCompleted":Landroid/os/Message;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "request":Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
    :pswitch_3
    iget-object v6, p0, Lcom/android/phone/NBPhoneExtra$MainThreadHandler;->this$0:Lcom/android/phone/NBPhoneExtra;

    # invokes: Lcom/android/phone/NBPhoneExtra;->handleGetNetworkDone(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/phone/NBPhoneExtra;->access$100(Lcom/android/phone/NBPhoneExtra;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/NBPhoneExtra$MessageParameter;

    .local v1, "mp":Lcom/android/phone/NBPhoneExtra$MessageParameter;
    iget-object v7, v1, Lcom/android/phone/NBPhoneExtra$MessageParameter;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    const-string v6, "NBPhoneExtra"

    const-string v8, "get mPolicymanInfo info fail:ar exception"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v6, v1, Lcom/android/phone/NBPhoneExtra$MessageParameter;->lock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    const-string v6, "NBPhoneExtra"

    const-string v8, "get mPolicymanInfo info fail:ar is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/android/phone/NBPhoneExtra$MessageParameter;->mPolicymanInfo:Ljava/lang/String;

    const-string v6, "NBPhoneExtra"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get mPolicymanInfo success,mPlicemanInfo ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/phone/NBPhoneExtra$MessageParameter;->mPolicymanInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
