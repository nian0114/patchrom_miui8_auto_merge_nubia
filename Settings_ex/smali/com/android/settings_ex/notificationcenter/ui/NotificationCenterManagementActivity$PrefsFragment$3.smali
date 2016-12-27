.class Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;
.super Landroid/os/AsyncTask;
.source "NotificationCenterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-object v1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->refreshStats()V
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$200(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    const-string v1, "com.android.server.telecom"

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$300(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$400(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$500(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    const-string v1, "cn.nubia.mms"

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$300(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$400(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$500(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    const-string v1, "cn.nubia.supersnap"

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$300(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$400(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$500(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    const-string v1, "cn.nubia.email"

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$300(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mPrefs:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$400(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->showPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$500(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$300(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment$3;->this$0:Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->mUser_app:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$300(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->showPreference(Ljava/util/Map;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;->access$600(Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;Ljava/util/Map;I)V

    .line 141
    return-void
.end method
