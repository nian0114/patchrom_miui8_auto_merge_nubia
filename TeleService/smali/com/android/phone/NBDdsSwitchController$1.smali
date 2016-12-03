.class Lcom/android/phone/NBDdsSwitchController$1;
.super Landroid/content/BroadcastReceiver;
.source "NBDdsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBDdsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBDdsSwitchController;


# direct methods
.method constructor <init>(Lcom/android/phone/NBDdsSwitchController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBDdsSwitchController$1;->this$0:Lcom/android/phone/NBDdsSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .local v1, "currentDds":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .end local v1    # "currentDds":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "currentDds":I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController$1;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # invokes: Lcom/android/phone/NBDdsSwitchController;->handleDefaultDataChanged(I)V
    invoke-static {v2, v1}, Lcom/android/phone/NBDdsSwitchController;->access$000(Lcom/android/phone/NBDdsSwitchController;I)V

    goto :goto_0

    .end local v1    # "currentDds":I
    :cond_2
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController$1;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # invokes: Lcom/android/phone/NBDdsSwitchController;->handleSimStateChanged(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/phone/NBDdsSwitchController;->access$100(Lcom/android/phone/NBDdsSwitchController;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBDdsSwitchController$1;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # invokes: Lcom/android/phone/NBDdsSwitchController;->handleSubStateChanged(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/phone/NBDdsSwitchController;->access$200(Lcom/android/phone/NBDdsSwitchController;Landroid/content/Intent;)V

    goto :goto_0
.end method
