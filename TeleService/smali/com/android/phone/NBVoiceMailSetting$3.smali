.class Lcom/android/phone/NBVoiceMailSetting$3;
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
    iput-object p1, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

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
    const/4 v0, 0x0

    .local v0, "done":Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$800(Lcom/android/phone/NBVoiceMailSetting;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    const/16 v3, 0x259

    # invokes: Lcom/android/phone/NBVoiceMailSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/NBVoiceMailSetting;->access$900(Lcom/android/phone/NBVoiceMailSetting;I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # invokes: Lcom/android/phone/NBVoiceMailSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$1000(Lcom/android/phone/NBVoiceMailSetting;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # setter for: Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2, v1}, Lcom/android/phone/NBVoiceMailSetting;->access$402(Lcom/android/phone/NBVoiceMailSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # invokes: Lcom/android/phone/NBVoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NBVoiceMailSetting;->access$600(Lcom/android/phone/NBVoiceMailSetting;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    # setter for: Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v3, v2}, Lcom/android/phone/NBVoiceMailSetting;->access$502(Lcom/android/phone/NBVoiceMailSetting;Z)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting$3;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/phone/NBVoiceMailSetting;->handleForwardingChange(Ljava/lang/Integer;Landroid/os/AsyncResult;)Z
    invoke-static {v2, v3, v1}, Lcom/android/phone/NBVoiceMailSetting;->access$700(Lcom/android/phone/NBVoiceMailSetting;Ljava/lang/Integer;Landroid/os/AsyncResult;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
