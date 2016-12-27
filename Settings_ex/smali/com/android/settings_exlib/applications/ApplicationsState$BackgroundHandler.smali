.class Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settings_exlib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 757
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 931
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 758
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 763
    const/16 v16, 0x0

    .line 764
    .local v16, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 765
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 766
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    .end local v16    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    .local v17, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v16, v17

    .line 769
    .end local v17    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    .restart local v16    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :cond_0
    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 770
    if-eqz v16, :cond_1

    .line 771
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 772
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 771
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 769
    .end local v6    # "i":I
    :catchall_0
    move-exception v20

    :goto_1
    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v20

    .line 776
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 929
    :goto_2
    :pswitch_0
    return-void

    .line 780
    :pswitch_1
    const/4 v14, 0x0

    .line 781
    .local v14, "numDone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 783
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_5

    const/16 v20, 0x6

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 785
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x6

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 788
    .local v11, "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    .end local v11    # "m":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 791
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 792
    .local v19, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_3

    .line 793
    add-int/lit8 v14, v14, 0x1

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    invoke-static {v0, v7}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$100(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 796
    :cond_3
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v20

    if-ltz v20, :cond_4

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 805
    .local v5, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v5, :cond_4

    iget-object v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    const/high16 v22, 0x800000

    and-int v20, v20, v22

    if-nez v20, :cond_4

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 783
    .end local v5    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 813
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "userId":I
    :cond_5
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 815
    const/16 v20, 0x6

    move/from16 v0, v20

    if-lt v14, v0, :cond_6

    .line 816
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 813
    :catchall_1
    move-exception v20

    :try_start_5
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v20

    .line 818
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_7

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 821
    :cond_7
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 825
    .end local v6    # "i":I
    .end local v14    # "numDone":I
    :pswitch_2
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v21, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 828
    .local v10, "launchIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_a

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    .line 830
    .restart local v19    # "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x200

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 832
    .local v8, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 834
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 835
    .local v18, "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 836
    .local v4, "N":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    if-ge v9, v4, :cond_9

    .line 837
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 838
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 839
    .restart local v5    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v5, :cond_8

    .line 840
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 836
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 842
    :cond_8
    const-string v20, "ApplicationsState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot find pkg: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " on user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 847
    .end local v4    # "N":I
    .end local v5    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v9    # "j":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_2
    move-exception v20

    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v20

    .restart local v4    # "N":I
    .restart local v9    # "j":I
    .restart local v18    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :cond_9
    :try_start_7
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 828
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 850
    .end local v4    # "N":I
    .end local v8    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "j":I
    .end local v18    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v19    # "userId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_b

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 853
    :cond_b
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 856
    .end local v6    # "i":I
    .end local v10    # "launchIntent":Landroid/content/Intent;
    :pswitch_3
    const/4 v14, 0x0

    .line 857
    .restart local v14    # "numDone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 859
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_10

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v14, v0, :cond_10

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 861
    .restart local v5    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    iget-boolean v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    .line 862
    :cond_c
    monitor-enter v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 863
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 865
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x6

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 868
    .restart local v11    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 870
    .end local v11    # "m":Landroid/os/Message;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 872
    :cond_e
    monitor-exit v5

    .line 859
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 872
    :catchall_3
    move-exception v20

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v20

    .line 876
    .end local v5    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :catchall_4
    move-exception v20

    monitor-exit v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v20

    :cond_10
    :try_start_b
    monitor-exit v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 877
    if-lez v14, :cond_11

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_11

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 882
    :cond_11
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v14, v0, :cond_12

    .line 883
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 885
    :cond_12
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 889
    .end local v6    # "i":I
    .end local v14    # "numDone":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 891
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 893
    monitor-exit v21

    goto/16 :goto_2

    .line 926
    :catchall_5
    move-exception v20

    monitor-exit v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v20

    .line 896
    :cond_13
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 897
    .local v12, "now":J
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_19

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 899
    .restart local v5    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-wide v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v20, v22, v24

    if-eqz v20, :cond_14

    iget-boolean v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 900
    :cond_14
    iget-wide v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v20, v22, v24

    if-eqz v20, :cond_15

    iget-wide v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x4e20

    sub-long v24, v12, v24

    cmp-long v20, v22, v24

    if-gez v20, :cond_17

    .line 902
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 903
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x6

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 906
    .restart local v11    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    .end local v11    # "m":Landroid/os/Message;
    :cond_16
    iput-wide v12, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    iget-object v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    iget-object v0, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 915
    :cond_17
    monitor-exit v21

    goto/16 :goto_2

    .line 897
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 918
    .end local v5    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_1a

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 920
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x6

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 923
    .restart local v11    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    .end local v11    # "m":Landroid/os/Message;
    :cond_1a
    monitor-exit v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto/16 :goto_2

    .line 769
    .end local v6    # "i":I
    .end local v12    # "now":J
    .end local v16    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    .restart local v17    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :catchall_6
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    .restart local v16    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    goto/16 :goto_1

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
