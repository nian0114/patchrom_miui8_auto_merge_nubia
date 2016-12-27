.class Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;
.super Ljava/lang/Object;
.source "NotificationCenterManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->initialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$000(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.settings.notificationcenter.ui.MultiSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$100(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$100(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$100(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Landroid/os/AsyncTask;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$000(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V

    .line 117
    return-void
.end method
