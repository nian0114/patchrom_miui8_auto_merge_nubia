.class Lcom/android/settings_ex/msim/NBMsimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NBMsimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMsimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const-string v2, "slot"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 169
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$000(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$000(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    .end local v1    # "slotId":I
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v2, "cn.nubia.intent.action.ACTION_OPERATOR_NUM_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    const-string v2, "phone"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 174
    .restart local v1    # "slotId":I
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$000(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$000(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 176
    .end local v1    # "slotId":I
    :cond_2
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->updateVolteCheckBox()V
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$100(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-virtual {v2, v3, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateCardStatePreference(IZ)V

    .line 179
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-virtual {v2, v5, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateCardStatePreference(IZ)V

    .line 180
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->updateEnabler(I)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$200(Lcom/android/settings_ex/msim/NBMsimSettings;I)V

    .line 181
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->updateEnabler(I)V
    invoke-static {v2, v5}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$200(Lcom/android/settings_ex/msim/NBMsimSettings;I)V

    goto :goto_0

    .line 182
    :cond_3
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$400(Lcom/android/settings_ex/msim/NBMsimSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mSubInfoList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$302(Lcom/android/settings_ex/msim/NBMsimSettings;Ljava/util/List;)Ljava/util/List;

    .line 186
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->unregisterPhoneStateListener()V
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$500(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    .line 187
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$1;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->registerPhoneStateListener()V
    invoke-static {v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$600(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    goto :goto_0
.end method
