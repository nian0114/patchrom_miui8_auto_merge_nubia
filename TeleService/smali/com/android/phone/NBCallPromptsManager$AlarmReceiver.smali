.class Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBCallPromptsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCallPromptsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallPromptsManager;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallPromptsManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;->this$0:Lcom/android/phone/NBCallPromptsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.phone.SET_MINUTE_TONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;->this$0:Lcom/android/phone/NBCallPromptsManager;

    const/4 v2, 0x0

    # invokes: Lcom/android/phone/NBCallPromptsManager;->playCustomSound(I)V
    invoke-static {v1, v2}, Lcom/android/phone/NBCallPromptsManager;->access$300(Lcom/android/phone/NBCallPromptsManager;I)V

    :cond_0
    return-void
.end method
