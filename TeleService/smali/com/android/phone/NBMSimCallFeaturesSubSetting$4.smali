.class Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;
.super Landroid/os/Handler;
.source "NBMSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBMSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .local v4, "result":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .local v1, "done":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$700(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    const/16 v6, 0x259

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1200(Lcom/android/phone/NBMSimCallFeaturesSubSetting;I)V

    :cond_1
    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1300(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # setter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v7, v4}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$402(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    iget-object v8, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$600(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    # setter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v7, v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$502(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Z)Z

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$700(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    const-string v7, "NBMSimCallFeaturesSubSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in setting fwd# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkForwardingCompleted()Z
    invoke-static {v7}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$800(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Z

    move-result v0

    .local v0, "completed":Z
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$900(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V
    invoke-static {v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1000(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    goto :goto_0

    :cond_5
    const-string v7, "NBMSimCallFeaturesSubSetting"

    const-string v8, "Overall fwd changes completed in failure. Check if we need to try rollback for some settings."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # setter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v7, v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1102(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Z)Z

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$700(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    const-string v5, "NBMSimCallFeaturesSubSetting"

    const-string v7, "Rollback will be required"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # setter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v5, v6}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1102(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Z)Z

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_7
    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1100(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "NBMSimCallFeaturesSubSetting"

    const-string v6, "No rollback needed."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
