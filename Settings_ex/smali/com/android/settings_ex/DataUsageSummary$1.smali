.class Lcom/android/settings_ex/DataUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 353
    :cond_0
    return-void
.end method
