.class Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settings_ex/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 943
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 886
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 944
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 949
    const/4 v9, 0x0

    .line 950
    .local v9, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v12, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 951
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 952
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    .end local v9    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    .local v10, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v9, v10

    .line 955
    .end local v10    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    .restart local v9    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    :cond_0
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 956
    if-eqz v9, :cond_1

    .line 957
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 958
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v11}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 957
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 955
    .end local v3    # "i":I
    :catchall_0
    move-exception v11

    :goto_1
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 962
    :cond_1
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 1063
    :goto_2
    :pswitch_0
    return-void

    .line 966
    :pswitch_1
    const/4 v8, 0x0

    .line 967
    .local v8, "numDone":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v12, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 969
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4

    const/4 v11, 0x6

    if-ge v8, v11, :cond_4

    .line 970
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v11, :cond_2

    .line 971
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 972
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x6

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 974
    .local v5, "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v11, v5}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 976
    .end local v5    # "m":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 977
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v13, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    .line 978
    add-int/lit8 v8, v8, 0x1

    .line 979
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v11, v4}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 969
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 983
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 985
    const/4 v11, 0x6

    if-lt v8, v11, :cond_5

    .line 986
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 983
    :catchall_1
    move-exception v11

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v11

    .line 988
    :cond_5
    const/4 v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 992
    .end local v3    # "i":I
    .end local v8    # "numDone":I
    :pswitch_2
    const/4 v8, 0x0

    .line 993
    .restart local v8    # "numDone":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v12, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 995
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_a

    const/4 v11, 0x2

    if-ge v8, v11, :cond_a

    .line 996
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 997
    .local v2, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v11, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    iget-boolean v11, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v11, :cond_9

    .line 998
    :cond_6
    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 999
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v13, v13, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v11, v13}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1000
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v11, :cond_7

    .line 1001
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x6

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1004
    .restart local v5    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v11, v5}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1006
    .end local v5    # "m":Landroid/os/Message;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 1008
    :cond_8
    monitor-exit v2

    .line 995
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1008
    :catchall_2
    move-exception v11

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v11

    .line 1012
    .end local v2    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :catchall_3
    move-exception v11

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v11

    :cond_a
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1013
    if-lez v8, :cond_b

    .line 1014
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1015
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1018
    :cond_b
    const/4 v11, 0x2

    if-lt v8, v11, :cond_c

    .line 1019
    const/4 v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1021
    :cond_c
    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1025
    .end local v3    # "i":I
    .end local v8    # "numDone":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v12, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 1027
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v11, :cond_d

    .line 1029
    monitor-exit v12

    goto/16 :goto_2

    .line 1060
    :catchall_4
    move-exception v11

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v11

    .line 1032
    :cond_d
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1033
    .local v6, "now":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_13

    .line 1034
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 1035
    .restart local v2    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v16, -0x1

    cmp-long v11, v14, v16

    if-eqz v11, :cond_e

    iget-boolean v11, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v11, :cond_12

    .line 1036
    :cond_e
    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_f

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v16, 0x4e20

    sub-long v16, v6, v16

    cmp-long v11, v14, v16

    if-gez v11, :cond_11

    .line 1038
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v11, :cond_10

    .line 1039
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1040
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x6

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1042
    .restart local v5    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v11, v5}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    .end local v5    # "m":Landroid/os/Message;
    :cond_10
    iput-wide v6, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1045
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v13, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v13, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1046
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v13, v13, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 1049
    :cond_11
    monitor-exit v12

    goto/16 :goto_2

    .line 1033
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1052
    .end local v2    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    .line 1053
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1054
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1057
    .restart local v5    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v11, v5}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1060
    .end local v5    # "m":Landroid/os/Message;
    :cond_14
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_2

    .line 955
    .end local v3    # "i":I
    .end local v6    # "now":J
    .end local v9    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    .restart local v10    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    :catchall_5
    move-exception v11

    move-object v9, v10

    .end local v10    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    .restart local v9    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$Session;>;"
    goto/16 :goto_1

    .line 962
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
