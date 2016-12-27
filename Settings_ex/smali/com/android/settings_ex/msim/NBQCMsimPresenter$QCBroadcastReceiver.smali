.class Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBQCMsimPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBQCMsimPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QCBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/msim/NBQCMsimPresenter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/msim/NBQCMsimPresenter;Lcom/android/settings_ex/msim/NBQCMsimPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/msim/NBQCMsimPresenter;
    .param p2, "x1"    # Lcom/android/settings_ex/msim/NBQCMsimPresenter$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;-><init>(Lcom/android/settings_ex/msim/NBQCMsimPresenter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.phone.action.PRIMARY.STATE.CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    const-string v3, "primary_state_key"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mPrimaryState:I

    .line 54
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2}, Lcom/android/settings_ex/msim/INBMsimView;->updateDualCardSelected()V

    .line 55
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2, v4, v4}, Lcom/android/settings_ex/msim/INBMsimView;->updateCardStatePreference(IZ)V

    .line 56
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/settings_ex/msim/INBMsimView;->updateCardStatePreference(IZ)V

    .line 57
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    invoke-virtual {v2}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2}, Lcom/android/settings_ex/msim/INBMsimView;->updateDataSwitch()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    invoke-virtual {v2}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->isSupportLtePlusC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v2}, Lcom/android/settings_ex/msim/INBMsimView;->updateDualCardSelected()V

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v2, v2, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    iget-object v4, v4, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->getPreferredNetworkModeFromDB(Landroid/content/Context;I)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/settings_ex/msim/INBMsimView;->updateNetworkType(II)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "i":I
    :cond_2
    const-string v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBQCMsimPresenter$QCBroadcastReceiver;->this$0:Lcom/android/settings_ex/msim/NBQCMsimPresenter;

    # invokes: Lcom/android/settings_ex/msim/NBQCMsimPresenter;->handlerSubInfoChanged(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/settings_ex/msim/NBQCMsimPresenter;->access$000(Lcom/android/settings_ex/msim/NBQCMsimPresenter;Landroid/content/Intent;)V

    goto :goto_0
.end method
