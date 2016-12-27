.class public Lcom/android/settings_ex/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
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
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settings_ex/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .param p2, "callbacks"    # Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 479
    iput-object p2, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    .line 480
    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 11

    .prologue
    .line 553
    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 554
    :try_start_0
    iget-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_0

    .line 555
    monitor-exit v9

    .line 612
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 559
    .local v3, "filter":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 560
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 561
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 562
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 563
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 567
    if-eqz v3, :cond_1

    .line 568
    invoke-interface {v3}, Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;->init()V

    .line 572
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 573
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 574
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v4, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 579
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 580
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 583
    :try_start_2
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v8, v6}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 584
    .local v2, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 586
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 578
    .end local v2    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filter":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    .end local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 574
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .restart local v3    # "filter":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 588
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .restart local v5    # "i":I
    .restart local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 592
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const-string v8, "java.util.Arrays.useLegacyMergeSort"

    const-string v9, "true"

    invoke-static {v8, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 595
    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 596
    :try_start_6
    iget-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_5

    .line 597
    iput-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 598
    iget-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v8, :cond_6

    .line 599
    iput-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 600
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 609
    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 611
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 602
    :cond_6
    :try_start_7
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 603
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 605
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v7}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 609
    .end local v7    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 500
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessionsChanged:Z

    .line 503
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 507
    :cond_0
    monitor-exit v1

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "filter"    # Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    iget-object v6, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v1, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 514
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 516
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 517
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 518
    iput-object p2, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 519
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 526
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xfa

    add-long v4, v8, v10

    .line 533
    .local v4, "waitend":J
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 535
    .local v2, "now":J
    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 544
    .end local v2    # "now":J
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 546
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 528
    .end local v4    # "waitend":J
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 547
    :catchall_1
    move-exception v1

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 539
    .restart local v2    # "now":J
    .restart local v4    # "waitend":J
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v8, v4, v2

    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 540
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->pause()V

    .line 616
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 618
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
    .line 484
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessionsChanged:Z

    .line 491
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 493
    :cond_1
    monitor-exit v1

    .line 495
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
