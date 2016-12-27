.class Lcom/android/settings_ex/ZMasterClear$1;
.super Landroid/content/BroadcastReceiver;
.source "ZMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ZMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ZMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ZMasterClear;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/ZMasterClear$1;->this$0:Lcom/android/settings_ex/ZMasterClear;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear$1;->this$0:Lcom/android/settings_ex/ZMasterClear;

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/settings_ex/ZMasterClear;->level:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/ZMasterClear;->access$002(Lcom/android/settings_ex/ZMasterClear;I)I

    .line 94
    :cond_0
    return-void
.end method
