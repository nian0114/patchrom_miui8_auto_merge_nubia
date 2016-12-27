.class public Lcom/android/settings_ex/DataUsageAppList;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DataUsageAppList.java"


# instance fields
.field private final MENU_REFRESH_DATA:I

.field private mActionBarBottom:Landroid/view/View;

.field private final mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mDataUsageListEmpty:Landroid/widget/TextView;

.field private mInsetSide:I

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mRefreshDataItem:Landroid/view/MenuItem;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/DataUsageAppList;->MENU_REFRESH_DATA:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mInsetSide:I

    .line 121
    new-instance v0, Lcom/android/settings_ex/DataUsageAppList$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageAppList$1;-><init>(Lcom/android/settings_ex/DataUsageAppList;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 206
    new-instance v0, Lcom/android/settings_ex/DataUsageAppList$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageAppList$3;-><init>(Lcom/android/settings_ex/DataUsageAppList;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageAppList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppList;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageAppList;->showDataUsageAppDetail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageAppList;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageAppList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataUsageAppList;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method private initBottomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    const v1, 0x7f1200da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppList;->mActionBarBottom:Landroid/view/View;

    .line 186
    const v1, 0x7f120129

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    .local v0, "refreshBtn":Landroid/widget/TextView;
    new-instance v1, Lcom/android/settings_ex/DataUsageAppList$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageAppList$2;-><init>(Lcom/android/settings_ex/DataUsageAppList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private showDataUsageAppDetail()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 136
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0bf4

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 138
    return-void
.end method

.method private showRefreshView(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 171
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mActionBarBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateListView()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageAppList;->showRefreshView(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 145
    const/4 v0, 0x0

    const v1, 0x7f0c0bed

    invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    const v1, 0x7f0200f1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppList;->mRefreshDataItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 73
    const v5, 0x7f04006a

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, "view":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    .line 76
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x2000000

    if-ne v5, v8, :cond_0

    move v2, v6

    .line 78
    .local v2, "shouldInset":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x105002b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mInsetSide:I

    .line 84
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget v7, p0, Lcom/android/settings_ex/DataUsageAppList;->mInsetSide:I

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/DataUsageUtilitys;->setInsetSide(I)V

    .line 86
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 87
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageAppList;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v6}, Lcom/android/settings_ex/DataUsageUtilitys;->getAdapter()Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const v5, 0x7f120128

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mDataUsageListEmpty:Landroid/widget/TextView;

    .line 92
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DataUsageAppList;->initBottomView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->orientation:I

    .line 95
    .local v1, "orientation":I
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageAppList;->showRefreshView(I)V

    .line 96
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v5}, Lcom/android/settings_ex/DataUsageUtilitys;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v3

    .line 98
    .local v3, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 99
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageAppList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/DataUsageUtilitys;->setStatsSession(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object v4

    .end local v1    # "orientation":I
    .end local v2    # "shouldInset":Z
    .end local v3    # "statsService":Landroid/net/INetworkStatsService;
    :cond_0
    move v2, v7

    .line 76
    goto :goto_0

    .line 82
    .restart local v2    # "shouldInset":Z
    :cond_1
    iput v7, p0, Lcom/android/settings_ex/DataUsageAppList;->mInsetSide:I

    goto :goto_1

    .line 100
    .restart local v1    # "orientation":I
    .restart local v3    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 229
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 157
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->bindAdapter()V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->getAdapter()Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->isEmpty()Z

    move-result v0

    .line 111
    .local v0, "isEmpty":Z
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppList;->mDataUsageListEmpty:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageAppList;->updateListView()V

    .line 113
    return-void

    .line 111
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
