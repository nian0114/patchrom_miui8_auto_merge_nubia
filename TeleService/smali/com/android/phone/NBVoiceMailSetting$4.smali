.class Lcom/android/phone/NBVoiceMailSetting$4;
.super Landroid/os/Handler;
.source "NBVoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBVoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBVoiceMailSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBVoiceMailSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, "result":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$500(Lcom/android/phone/NBVoiceMailSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$400(Lcom/android/phone/NBVoiceMailSetting;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$1100(Lcom/android/phone/NBVoiceMailSetting;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # invokes: Lcom/android/phone/NBVoiceMailSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$1200(Lcom/android/phone/NBVoiceMailSetting;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .local v0, "done":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    const/16 v3, 0x25b

    # invokes: Lcom/android/phone/NBVoiceMailSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/NBVoiceMailSetting;->access$900(Lcom/android/phone/NBVoiceMailSetting;I)V

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # invokes: Lcom/android/phone/NBVoiceMailSetting;->onRevertDone()V
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$1300(Lcom/android/phone/NBVoiceMailSetting;)V

    :cond_2
    return-void

    .end local v0    # "done":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # setter for: Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2, v1}, Lcom/android/phone/NBVoiceMailSetting;->access$402(Lcom/android/phone/NBVoiceMailSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$4;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$800(Lcom/android/phone/NBVoiceMailSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
