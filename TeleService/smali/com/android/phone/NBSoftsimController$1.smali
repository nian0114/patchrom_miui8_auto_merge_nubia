.class Lcom/android/phone/NBSoftsimController$1;
.super Landroid/os/Handler;
.source "NBSoftsimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBSoftsimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBSoftsimController;


# direct methods
.method constructor <init>(Lcom/android/phone/NBSoftsimController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const-string v0, "NBSoftsimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retvice message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # invokes: Lcom/android/phone/NBSoftsimController;->doCheckAndBroadcastMccChange()V
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$000(Lcom/android/phone/NBSoftsimController;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # operator++ for: Lcom/android/phone/NBSoftsimController;->mRetryCount:I
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$108(Lcom/android/phone/NBSoftsimController;)I

    const-string v0, "NBSoftsimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RETRY_GET_MCC mRetryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # getter for: Lcom/android/phone/NBSoftsimController;->mRetryCount:I
    invoke-static {v2}, Lcom/android/phone/NBSoftsimController;->access$100(Lcom/android/phone/NBSoftsimController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # getter for: Lcom/android/phone/NBSoftsimController;->mRetryCount:I
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$100(Lcom/android/phone/NBSoftsimController;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # invokes: Lcom/android/phone/NBSoftsimController;->doCheckAndBroadcastMccChange()V
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$000(Lcom/android/phone/NBSoftsimController;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # getter for: Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$300(Lcom/android/phone/NBSoftsimController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # getter for: Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$400()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/NBSoftsimController;->broadcastMccChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NBSoftsimController;->access$500(Lcom/android/phone/NBSoftsimController;Ljava/lang/String;)V

    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # invokes: Lcom/android/phone/NBSoftsimController;->doGetMcc()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$600(Lcom/android/phone/NBSoftsimController;)Ljava/lang/String;

    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # getter for: Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$300(Lcom/android/phone/NBSoftsimController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # setter for: Lcom/android/phone/NBSoftsimController;->mRetryCount:I
    invoke-static {v0, v3}, Lcom/android/phone/NBSoftsimController;->access$102(Lcom/android/phone/NBSoftsimController;I)I

    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    # getter for: Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/NBSoftsimController;->access$200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController$1;->this$0:Lcom/android/phone/NBSoftsimController;

    # invokes: Lcom/android/phone/NBSoftsimController;->doCheckSoftsimAndBroadcast()V
    invoke-static {v0}, Lcom/android/phone/NBSoftsimController;->access$700(Lcom/android/phone/NBSoftsimController;)V

    goto/16 :goto_0

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
