.class Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;
.super Landroid/os/AsyncTask;
.source "NubiaNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList;Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;-><init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)V

    return-void
.end method

.method private collectApps()V
    .locals 18

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$600(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v14

    monitor-enter v14

    .line 151
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 152
    .local v12, "start":J
    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$700()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "NNotificationAppList"

    const-string v15, "Collecting apps..."

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$600(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 154
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$500(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$800(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v11

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    .line 162
    .local v9, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "NNotificationAppList"

    const-string v15, "  launchable activities:"

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    .line 164
    .local v8, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 173
    .end local v8    # "lai":Landroid/content/pm/LauncherActivityInfo;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 174
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 188
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$500(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$600(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$500(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v11

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$1200()Ljava/util/Comparator;

    move-result-object v15

    invoke-static {v11, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v4, v16, v12

    .line 191
    .local v4, "elapsed":J
    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$700()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "NNotificationAppList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    move-object/from16 v16, v0

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v16 .. v16}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$600(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " apps in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    monitor-exit v14

    .line 193
    return-void

    .line 167
    .end local v4    # "elapsed":J
    .restart local v8    # "lai":Landroid/content/pm/LauncherActivityInfo;
    :cond_7
    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$700()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "NNotificationAppList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_8
    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->removeNotificationApp:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$900()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 171
    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 192
    .end local v2    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v9    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v12    # "start":J
    :catchall_0
    move-exception v11

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 177
    .restart local v2    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v12    # "start":J
    :cond_9
    :try_start_1
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 178
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$600(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$1000(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$1100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

    move-result-object v15

    invoke-static {v11, v6, v15}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    move-result-object v10

    .line 184
    .local v10, "row":Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v11}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$600(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->collectApps()V

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 147
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$400(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->clear()V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$400(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$500(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->addAll(Ljava/util/Collection;)V

    .line 139
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 115
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 116
    iget-object v6, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$200(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    const v3, 0x7f0c0a10

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask$1;-><init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;)V

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    # setter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v6, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$102(Lcom/android/settings_ex/notification/NubiaNotificationAppList;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 125
    return-void
.end method
