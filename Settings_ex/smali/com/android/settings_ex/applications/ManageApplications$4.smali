.class Lcom/android/settings_ex/applications/ManageApplications$4;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;

.field final synthetic val$aom:Landroid/app/AppOpsManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mIPm:Landroid/content/pm/IPackageManager;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$mIPm:Landroid/content/pm/IPackageManager;

    iput-object p5, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$aom:Landroid/app/AppOpsManager;

    iput-object p6, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p7, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1389
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1391
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x200

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1393
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 1394
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1397
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$nm:Landroid/app/INotificationManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1400
    :goto_1
    iget-boolean v9, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v9, :cond_0

    .line 1402
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1404
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1393
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1412
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$mIPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1415
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$aom:Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 1416
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v7

    .line 1418
    .local v7, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 1419
    .local v3, "currentUserId":I
    move-object v2, v7

    .local v2, "arr$":[I
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_3

    aget v8, v2, v5

    .line 1421
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, v3, :cond_2

    .line 1423
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1419
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1426
    .end local v8    # "uid":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->val$handler:Landroid/os/Handler;

    new-instance v10, Lcom/android/settings_ex/applications/ManageApplications$4$1;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/applications/ManageApplications$4$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$4;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1443
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v10

    # invokes: Lcom/android/settings_ex/applications/ManageApplications;->setSystemAppAsDefault(Landroid/content/Context;)V
    invoke-static {v9, v10}, Lcom/android/settings_ex/applications/ManageApplications;->access$1900(Lcom/android/settings_ex/applications/ManageApplications;Landroid/content/Context;)V

    .line 1444
    const/4 v9, 0x0

    return-object v9

    .line 1413
    .end local v2    # "arr$":[I
    .end local v3    # "currentUserId":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "restrictedUids":[I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1398
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v9

    goto :goto_1
.end method
