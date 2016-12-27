.class Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;
.super Landroid/os/Handler;
.source "NBMsimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMsimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;Lcom/android/settings_ex/msim/NBMsimSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/msim/NBMsimSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/msim/NBMsimSettings$1;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;-><init>(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 267
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 269
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkType(II)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->updateVolteCheckBox()V
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$100(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    .line 273
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateCardStatePreference(IZ)V

    .line 274
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkEntries()V
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1800(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateOperatorAndNum(I)V

    .line 279
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateDataSwitch()V

    .line 280
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$900(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/INBMsimPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings_ex/msim/INBMsimPresenter;->isSupportLtePlusC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateDualCardSelected()V

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$900(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/INBMsimPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$400(Lcom/android/settings_ex/msim/NBMsimSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkType(II)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
