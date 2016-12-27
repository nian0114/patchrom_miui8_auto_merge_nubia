.class public Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageUtilitys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageUtilitys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/DataUsageUtilitys$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings_ex/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/net/UidDetailProvider;I)V
    .locals 1
    .param p1, "provider"    # Lcom/android/settings_ex/net/UidDetailProvider;
    .param p2, "insetSide"    # I

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 263
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 267
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 268
    iput p2, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mInsetSide:I

    .line 269
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 18
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 277
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 278
    .local v3, "currentUserId":I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 280
    .local v7, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings_ex/DataUsageUtilitys$AppItem;>;"
    const/4 v4, 0x0

    .line 281
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v9

    .line 282
    .local v9, "size":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_6

    .line 283
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 286
    iget v10, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 288
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 289
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v3, :cond_2

    .line 290
    move v2, v10

    .line 300
    .local v2, "collapseKey":I
    :goto_2
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 301
    .local v6, "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    if-nez v6, :cond_0

    .line 302
    new-instance v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .end local v6    # "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    invoke-direct {v6, v2}, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;-><init>(I)V

    .line 303
    .restart local v6    # "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget v11, v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    invoke-virtual {v7, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    :cond_0
    invoke-virtual {v6, v10}, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->addUid(I)V

    .line 307
    iget-wide v12, v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    iget-wide v14, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v12, v14

    iput-wide v12, v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 281
    .end local v2    # "collapseKey":I
    .end local v5    # "i":I
    .end local v6    # "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    .end local v9    # "size":I
    .end local v10    # "uid":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 292
    .restart local v5    # "i":I
    .restart local v9    # "size":I
    .restart local v10    # "uid":I
    :cond_2
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v11}, Lcom/android/settings_ex/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v2

    .restart local v2    # "collapseKey":I
    goto :goto_2

    .line 294
    .end local v2    # "collapseKey":I
    :cond_3
    const/4 v11, -0x4

    if-eq v10, v11, :cond_4

    const/4 v11, -0x5

    if-ne v10, v11, :cond_5

    .line 295
    :cond_4
    move v2, v10

    .restart local v2    # "collapseKey":I
    goto :goto_2

    .line 297
    .end local v2    # "collapseKey":I
    :cond_5
    const/16 v2, 0x3e8

    .restart local v2    # "collapseKey":I
    goto :goto_2

    .line 310
    .end local v2    # "collapseKey":I
    .end local v10    # "uid":I
    :cond_6
    if-eqz p2, :cond_8

    .line 311
    move-object/from16 v0, p2

    array-length v8, v0

    .line 312
    .local v8, "restrictedUidsMax":I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_8

    .line 313
    aget v10, p2, v5

    .line 315
    .restart local v10    # "uid":I
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 316
    .restart local v6    # "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    if-nez v6, :cond_7

    .line 317
    new-instance v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .end local v6    # "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    invoke-direct {v6, v10}, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;-><init>(I)V

    .line 318
    .restart local v6    # "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    const-wide/16 v12, -0x1

    iput-wide v12, v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    .line 319
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget v11, v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    invoke-virtual {v7, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    :cond_7
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->restricted:Z

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 326
    .end local v6    # "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    .end local v8    # "restrictedUidsMax":I
    .end local v10    # "uid":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    iget-wide v12, v11, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    :goto_4
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mLargest:J

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->notifyDataSetChanged()V

    .line 329
    return-void

    .line 327
    :cond_9
    const-wide/16 v12, 0x0

    goto :goto_4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    iget v0, v0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 348
    if-nez p2, :cond_0

    .line 349
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040074

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 352
    iget v5, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_0

    .line 353
    iget v5, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 357
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 359
    .local v0, "context":Landroid/content/Context;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 360
    .local v4, "text1":Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 364
    .local v3, "progress":Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 365
    .local v1, "item":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/android/settings_ex/DataUsageUtilitys$UidDetailTask;->bindView(Lcom/android/settings_ex/net/UidDetailProvider;Lcom/android/settings_ex/DataUsageUtilitys$AppItem;Landroid/view/View;)V

    .line 367
    iget-boolean v5, v1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->restricted:Z

    if-eqz v5, :cond_2

    iget-wide v6, v1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 368
    const v5, 0x7f0c0872

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 369
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 375
    :goto_0
    iget-wide v6, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mLargest:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, v1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->mLargest:J

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 376
    .local v2, "percentTotal":I
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 378
    return-object p2

    .line 371
    .end local v2    # "percentTotal":I
    :cond_2
    iget-wide v6, v1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
