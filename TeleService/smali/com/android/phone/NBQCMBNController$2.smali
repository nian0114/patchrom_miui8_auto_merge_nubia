.class Lcom/android/phone/NBQCMBNController$2;
.super Landroid/content/BroadcastReceiver;
.source "NBQCMBNController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCMBNController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCMBNController;


# direct methods
.method constructor <init>(Lcom/android/phone/NBQCMBNController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCMBNController$2;->this$0:Lcom/android/phone/NBQCMBNController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "success":Z
    const-string v2, "qualcomm.intent.action.ACTION_PDC_DATA_SELECT_CONFIGS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController$2;->this$0:Lcom/android/phone/NBQCMBNController;

    # invokes: Lcom/android/phone/NBQCMBNController;->handlerSelectMbnDone(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/phone/NBQCMBNController;->access$900(Lcom/android/phone/NBQCMBNController;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.phone.action.SET.NETWORK.AUTOMATIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController$2;->this$0:Lcom/android/phone/NBQCMBNController;

    # invokes: Lcom/android/phone/NBQCMBNController;->handlerSetAutomatic()V
    invoke-static {v2}, Lcom/android/phone/NBQCMBNController;->access$1000(Lcom/android/phone/NBQCMBNController;)V

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBQCMBNController$2;->this$0:Lcom/android/phone/NBQCMBNController;

    # invokes: Lcom/android/phone/NBQCMBNController;->handlerRTChanged(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/phone/NBQCMBNController;->access$1100(Lcom/android/phone/NBQCMBNController;Landroid/content/Intent;)V

    goto :goto_0
.end method
