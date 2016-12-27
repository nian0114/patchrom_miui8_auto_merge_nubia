.class Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settings_ex/applications/ApplicationsState;

.field private final mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications$TabInfo;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/settings_ex/applications/ApplicationsState;
    .param p2, "tab"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .param p3, "filterMode"    # I

    .prologue
    .line 574
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 554
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 575
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 576
    invoke-virtual {p1, p0}, Lcom/android/settings_ex/applications/ApplicationsState;->newSession(Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ex/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    .line 577
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 578
    iget-object v0, p2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 579
    iput p3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 580
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    return-object v0
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
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
    .line 694
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 708
    :cond_1
    return-object v2

    .line 697
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 702
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 703
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 705
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 794
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v5, p2}, Lcom/android/settings_ex/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings_ex/applications/AppViewHolder;

    move-result-object v1

    .line 795
    .local v1, "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 798
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 799
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 800
    :try_start_0
    iput-object v0, v1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 801
    iget-object v5, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 802
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;)V

    .line 805
    iget-object v5, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 806
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v5, v6}, Lcom/android/settings_ex/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 809
    iget-object v5, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    .line 810
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v6, 0x7f0c0544

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 818
    :goto_0
    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 819
    iget-object v5, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 821
    .local v2, "visiable":Z
    :goto_1
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->checkBox:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    .end local v2    # "visiable":Z
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 827
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    return-object p2

    .line 812
    :cond_2
    :try_start_1
    iget-object v5, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_3

    .line 813
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 814
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v6, 0x7f0c0543

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 816
    :cond_3
    :try_start_2
    iget-object v5, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 819
    goto :goto_1

    .restart local v2    # "visiable":Z
    :cond_5
    move v3, v4

    .line 821
    goto :goto_2

    .line 823
    .end local v2    # "visiable":Z
    :cond_6
    iget-object v3, v1, Lcom/android/settings_ex/applications/AppViewHolder;->checkBox:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 769
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 770
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 773
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 553
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 839
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 737
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 747
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 748
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/AppViewHolder;

    .line 749
    .local v0, "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 750
    iget-object v3, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 751
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings_ex/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 752
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    iget-object v2, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 759
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 765
    .end local v0    # "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    :cond_1
    return-void

    .line 752
    .restart local v0    # "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 747
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 719
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$500(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$500(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 722
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$400(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$400(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$500(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 728
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 729
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 730
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 732
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 715
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->release()V

    .line 599
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 612
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .param p1, "eraseold"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 623
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 624
    .local v1, "emulated":Z
    if-eqz v1, :cond_1

    .line 625
    iput v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 629
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 643
    sget-object v3, Lcom/android/settings_ex/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 646
    .local v3, "filterObj":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 661
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 664
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v4, v3, v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 666
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 690
    :goto_3
    return-void

    .line 627
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filterObj":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 631
    :pswitch_0
    sget-object v3, Lcom/android/settings_ex/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 632
    .restart local v3    # "filterObj":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 634
    .end local v3    # "filterObj":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/settings_ex/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 635
    .restart local v3    # "filterObj":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 636
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 640
    .end local v3    # "filterObj":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :pswitch_2
    sget-object v3, Lcom/android/settings_ex/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 641
    .restart local v3    # "filterObj":Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 648
    :pswitch_3
    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 656
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 657
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 650
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 651
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 653
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :pswitch_5
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 654
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 670
    .restart local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 671
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 672
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 676
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 678
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mCurItemPositon:I
    invoke-static {v5}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$300(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 680
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 682
    if-nez v2, :cond_4

    .line 683
    iput-boolean v7, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 684
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$400(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$500(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 674
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 687
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$400(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$500(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 646
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    .line 648
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->release()V

    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 609
    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 2
    .param p1, "sort"    # I

    .prologue
    const/4 v1, 0x1

    .line 584
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 585
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->resume()V

    .line 587
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 588
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method
