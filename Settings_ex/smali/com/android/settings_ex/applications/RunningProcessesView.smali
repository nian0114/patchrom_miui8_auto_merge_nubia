.class public Lcom/android/settings_ex/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings_ex/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field private mAppsProcessPrefix:Landroid/widget/TextView;

.field private mAppsProcessText:Landroid/widget/TextView;

.field private mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorsId:[I

.field private mCurHighRam:J

.field private mCurLowRam:J

.field private mCurMedRam:J

.field mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

.field private mCurShowCached:Z

.field private mCurTotalRam:J

.field mDataAvail:Ljava/lang/Runnable;

.field private mForegroundProcessPrefix:Landroid/widget/TextView;

.field private mForegroundProcessText:Landroid/widget/TextView;

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settings_ex/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, -0x1

    .line 438
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 83
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurTotalRam:J

    .line 84
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurHighRam:J

    .line 85
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurMedRam:J

    .line 86
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurLowRam:J

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    .line 96
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 392
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorsId:[I

    .line 439
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMyUserId:I

    .line 440
    return-void

    .line 392
    :array_0
    .array-data 4
        0x7f0e0063
        0x7f0e005f
        0x7f0e0061
    .end array-data
.end method

.method private showChart([F)V
    .locals 7
    .param p1, "allSize"    # [F

    .prologue
    .line 396
    const v3, 0x7f12012b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/AppRunningPieChart;

    .line 397
    .local v2, "mPieChart":Lcom/android/settings_ex/widget/AppRunningPieChart;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v1, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/widget/AppRunningPieEntity;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 399
    new-instance v3, Lcom/android/settings_ex/widget/AppRunningPieEntity;

    aget v4, p1, v0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorsId:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/widget/AppRunningPieEntity;-><init>(FI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/AppRunningPieChart;->setData(Ljava/util/List;)V

    .line 404
    invoke-virtual {v2}, Lcom/android/settings_ex/widget/AppRunningPieChart;->invalidate()V

    .line 405
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V
    .locals 7
    .param p1, "mi"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .prologue
    const/4 v4, 0x0

    .line 417
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 419
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v2, "args":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 421
    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    const-string v1, "process"

    iget-object v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v1, "background"

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 428
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0596

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 431
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 447
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040164

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 448
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 449
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 451
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 453
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 454
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 455
    new-instance v4, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 456
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    const v4, 0x7f040162

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 458
    .local v2, "mHeader":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 460
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 461
    .local v3, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 462
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 463
    const v4, 0x7f120352

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    .line 464
    const v4, 0x7f120350

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    .line 465
    const v4, 0x7f12034f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 466
    const v4, 0x7f120353

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    .line 467
    const v4, 0x7f120351

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 468
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 472
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 473
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 474
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "owner"    # Landroid/app/Fragment;
    .param p2, "dataAvail"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 477
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 478
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 479
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 486
    :goto_0
    return v0

    .line 485
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 486
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 410
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 411
    .local v1, "mi":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    .line 412
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 413
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 504
    packed-switch p1, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 506
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 509
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 513
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 22
    .param p1, "dataChanged"    # Z

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 327
    .local v2, "adapter":Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 328
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 331
    .end local v2    # "adapter":Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v13, :cond_1

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 333
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 338
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 342
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v13, v13, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    .line 344
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v13, :cond_5

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0593

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0594

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v14

    .line 359
    .local v14, "totalRam":J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v13, :cond_6

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v20

    add-long v8, v18, v20

    .line 361
    .local v8, "lowRam":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v10, v13, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    .line 368
    .local v10, "medRam":J
    :goto_1
    sub-long v18, v14, v10

    sub-long v6, v18, v8

    .line 370
    .local v6, "highRam":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurTotalRam:J

    move-wide/from16 v18, v0

    cmp-long v13, v18, v14

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurHighRam:J

    move-wide/from16 v18, v0

    cmp-long v13, v18, v6

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurMedRam:J

    move-wide/from16 v18, v0

    cmp-long v13, v18, v10

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurLowRam:J

    move-wide/from16 v18, v0

    cmp-long v13, v18, v8

    if-eqz v13, :cond_4

    .line 372
    :cond_3
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurTotalRam:J

    .line 373
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurHighRam:J

    .line 374
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurMedRam:J

    .line 375
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurLowRam:J

    .line 376
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 377
    .local v4, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "freeSize":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "appSize":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 383
    .local v12, "systemSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .end local v3    # "appSize":Ljava/lang/String;
    .end local v4    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v5    # "freeSize":Ljava/lang/String;
    .end local v12    # "systemSize":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x3

    new-array v13, v13, [F

    const/16 v17, 0x0

    long-to-float v0, v8

    move/from16 v18, v0

    aput v18, v13, v17

    const/16 v17, 0x1

    long-to-float v0, v6

    move/from16 v18, v0

    aput v18, v13, v17

    const/16 v17, 0x2

    long-to-float v0, v10

    move/from16 v18, v0

    aput v18, v13, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/applications/RunningProcessesView;->showChart([F)V

    .line 389
    monitor-exit v16

    .line 390
    return-void

    .line 350
    .end local v6    # "highRam":J
    .end local v8    # "lowRam":J
    .end local v10    # "medRam":J
    .end local v14    # "totalRam":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0590

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0591

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 389
    :catchall_0
    move-exception v13

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 363
    .restart local v14    # "totalRam":J
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v20

    add-long v18, v18, v20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v0, v13, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v20, v0

    add-long v8, v18, v20

    .line 365
    .restart local v8    # "lowRam":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v10, v13, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v10    # "medRam":J
    goto/16 :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 491
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 493
    .local v0, "ai":Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 500
    .end local v0    # "ai":Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
