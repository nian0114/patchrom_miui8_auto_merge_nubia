.class public Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

.field private mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mCurItemPositon:I

.field public final mFilter:I

.field private mFreeStorage:J

.field private mFreeStorageText:Landroid/widget/TextView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field protected mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings_ex/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mStorageChartLabel:Landroid/widget/TextView;

.field private mTotalStorage:J

.field private mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p2, "apps"    # Lcom/android/settings_ex/applications/ApplicationsState;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "listType"    # I
    .param p5, "clickListener"    # Lcom/android/settings_ex/applications/AppClickListener;
    .param p6, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 250
    iput v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mCurItemPositon:I

    .line 252
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    .line 262
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 263
    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 264
    iput p4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    .line 265
    packed-switch p4, :pswitch_data_0

    .line 269
    :pswitch_0
    iput v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    .line 271
    :goto_0
    iput-object p5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

    .line 272
    invoke-virtual {p1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c055e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 273
    invoke-virtual {p1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c055d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 274
    iput-object p6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 275
    return-void

    .line 266
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 267
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 268
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .prologue
    .line 216
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mCurItemPositon:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    .line 436
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 440
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 441
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    sub-long/2addr v6, v8

    long-to-float v5, v6

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    long-to-float v6, v6

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v7, v8

    div-float/2addr v6, v7

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    long-to-float v7, v8

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 443
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long v2, v4, v6

    .line 444
    .local v2, "usedStorage":J
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 445
    iput-wide v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 446
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "sizeStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0585

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .end local v1    # "sizeStr":Ljava/lang/String;
    :cond_2
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 452
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 453
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    .restart local v1    # "sizeStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0584

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 459
    .end local v0    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v1    # "sizeStr":Ljava/lang/String;
    .end local v2    # "usedStorage":J
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    invoke-virtual {v4, v10, v10, v10}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 460
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 461
    iput-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 462
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_4
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 465
    iput-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 466
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "contentParent"    # Landroid/view/ViewGroup;
    .param p3, "contentChild"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 283
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 334
    :goto_0
    return-object v3

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 289
    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v3, v5, :cond_5

    const v3, 0x7f0400c8

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 292
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v4, 0x7f120200

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 293
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v4, 0x7f120202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 295
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 297
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "emptyView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 299
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 302
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 303
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 304
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 305
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 306
    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 307
    new-instance v3, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v3, v4, p0, v5}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications$TabInfo;I)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 310
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 311
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f120203

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 312
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f120204

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    .line 313
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f120205

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    .line 314
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f120206

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    .line 315
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v3, v6}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 316
    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 317
    const v2, 0x7f0c0548

    .line 318
    .local v2, "resid":I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isInternal(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    const v2, 0x7f0c0c43

    .line 321
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .end local v2    # "resid":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 328
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v4, 0x7f12020c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/RunningProcessesView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    .line 330
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v3, :cond_4

    .line 331
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 334
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 289
    :cond_5
    const v3, 0x7f0400c5

    goto/16 :goto_1

    .line 323
    .restart local v0    # "emptyView":Landroid/view/View;
    .restart local v1    # "lv":Landroid/widget/ListView;
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0546

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 340
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 344
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 480
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
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
    .line 473
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mCurItemPositon:I

    .line 474
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/settings_ex/applications/AppClickListener;->onItemClick(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 475
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->doPause()V

    .line 368
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 374
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 5
    .param p1, "sortOrder"    # I

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 352
    .local v0, "haveData":Z
    if-eqz v0, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/applications/RunningProcessesView;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .end local v0    # "haveData":Z
    :cond_1
    :goto_0
    return-void

    .line 356
    .restart local v0    # "haveData":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p1, "containerService"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 280
    return-void
.end method

.method updateStorageUsage()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 378
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_0

    .line 381
    iput-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 382
    iput-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 383
    iput-wide v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 385
    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 386
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_2

    .line 388
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 390
    .local v5, "stats":[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 391
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v5    # "stats":[J
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_7

    .line 398
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 399
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_7

    .line 400
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 401
    .local v1, "ae":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 399
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 392
    .end local v0    # "N":I
    .end local v1    # "ae":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 393
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 406
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_4

    .line 408
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 410
    .restart local v5    # "stats":[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 411
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    .end local v5    # "stats":[J
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 418
    .local v3, "emulatedStorage":Z
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_6

    .line 419
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 420
    .restart local v0    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v0, :cond_6

    .line 421
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 422
    .restart local v1    # "ae":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->dataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 423
    if-eqz v3, :cond_5

    .line 424
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 420
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 412
    .end local v0    # "N":I
    .end local v1    # "ae":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v3    # "emulatedStorage":Z
    .end local v4    # "i":I
    :catch_1
    move-exception v2

    .line 413
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 428
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "emulatedStorage":Z
    :cond_6
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/settings_ex/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 431
    .end local v3    # "emulatedStorage":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
