.class Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
.super Landroid/os/Handler;
.source "NBMsimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMsimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DealIccCardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->handlerSetPreferNetwork(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1500(Lcom/android/settings_ex/msim/NBMsimSettings;II)V

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->handlerGetPreferNetwork(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1600(Lcom/android/settings_ex/msim/NBMsimSettings;I)V

    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->handlerSetPhoneNum(I)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1700(Lcom/android/settings_ex/msim/NBMsimSettings;I)V

    goto :goto_0

    .line 257
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;
    invoke-static {v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$900(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/INBMsimPresenter;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->onSubStateChanged(IZ)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
