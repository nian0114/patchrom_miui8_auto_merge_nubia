.class Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;
.super Ljava/lang/Object;
.source "DefaultAppSelectionActivity.java"

# interfaces
.implements Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->makeCurrentDefault(Lcom/android/settings_ex/applications/AppPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

.field final synthetic val$newDefault:Lcom/android/settings_ex/applications/AppPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->val$newDefault:Lcom/android/settings_ex/applications/AppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mDefaultAppManager:Lcom/android/settings_ex/applications/DefaultAppManager;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$600(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/DefaultAppManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->val$newDefault:Lcom/android/settings_ex/applications/AppPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppPreference;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->val$newDefault:Lcom/android/settings_ex/applications/AppPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppPreference;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$200(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/AppPreference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->setDefaultApp(Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->val$newDefault:Lcom/android/settings_ex/applications/AppPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AppPreference;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->writeDefaultToDB(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$700(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->val$newDefault:Lcom/android/settings_ex/applications/AppPreference;

    # setter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$202(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)Lcom/android/settings_ex/applications/AppPreference;

    .line 215
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$200(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/AppPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppPreference;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public onFinishTask()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$5;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$500(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method
