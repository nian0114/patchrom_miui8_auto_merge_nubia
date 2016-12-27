.class public Lcom/android/settings_exlib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settings_exlib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .param p2, "callbacks"    # Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 545
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .line 546
    return-void
.end method


# virtual methods
.method public getAllApps()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 575
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleRebuildList()V
    .locals 10

    .prologue
    .line 619
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 620
    :try_start_0
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v7, :cond_0

    .line 621
    monitor-exit v8

    .line 676
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 625
    .local v3, "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 626
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 627
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 628
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 629
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 633
    if-eqz v3, :cond_1

    .line 634
    invoke-interface {v3}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->init()V

    .line 638
    :cond_1
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    .line 639
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 640
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 642
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v4, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 645
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 646
    .local v2, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 647
    :cond_2
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    .line 649
    :try_start_2
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 644
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 629
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .end local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v5    # "i":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 640
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v3    # "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 653
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v5    # "i":I
    :catchall_2
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    .line 657
    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 659
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 660
    :try_start_6
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v7, :cond_5

    .line 661
    iput-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 662
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v7, :cond_6

    .line 663
    iput-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 664
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 673
    :cond_5
    :goto_2
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 675
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 666
    :cond_6
    :try_start_7
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 667
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 669
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v6}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 673
    .end local v6    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v7
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 563
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    .line 565
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 566
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 570
    :cond_0
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    .line 553
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 554
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 556
    :cond_0
    monitor-exit v1

    .line 558
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
