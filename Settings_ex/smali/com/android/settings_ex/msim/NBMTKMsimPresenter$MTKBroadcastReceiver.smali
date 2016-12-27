.class Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBMTKMsimPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMTKMsimPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTKBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/msim/NBMTKMsimPresenter;
    .param p2, "x1"    # Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;-><init>(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2}, Lcom/android/settings_ex/msim/INBMsimView;->updateDualCardSelected()V

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v4, v4, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/settings_ex/msim/INBMsimView;->updateNetworkType(II)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    invoke-virtual {v2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->isCapabilitySwitching()Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    # getter for: Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->access$100(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    # getter for: Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->access$100(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    # getter for: Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->access$100(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    :cond_2
    :goto_1
    return-void

    .line 61
    :cond_3
    const-string v2, "cn.nubia.intent.action.ACTION_SET_RADIO_CAPABILITY_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v3, v3, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c09

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings_ex/msim/INBMsimView;->showMaskDialog(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    # getter for: Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->access$100(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    # getter for: Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->access$100(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$MTKBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    # getter for: Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mDealHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->access$100(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
