.class public Lcom/android/settings_ex/applications/MemoryManageFragment;
.super Landroid/app/Fragment;
.source "MemoryManageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;,
        Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurPos:I

.field private mFragmentTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuAvg:Landroid/view/MenuItem;

.field private mMenuMax:Landroid/view/MenuItem;

.field private mPagerAdapter:Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;

.field private mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

.field private mShowMax:Z

.field private mTabNormalBtnList:[I

.field private mTabPressedBtnList:[I

.field private mTabViewList:[Landroid/widget/Button;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mCurPos:I

    .line 221
    new-instance v0, Lcom/android/settings_ex/applications/MemoryManageFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/MemoryManageFragment$1;-><init>(Lcom/android/settings_ex/applications/MemoryManageFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 238
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/MemoryManageFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/MemoryManageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/MemoryManageFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/MemoryManageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/MemoryManageFragment;->updateTabBars(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/MemoryManageFragment;)[Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/MemoryManageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabViewList:[Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/MemoryManageFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/MemoryManageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private initFragmentListener()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0e67

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-direct {v3, v5}, Lcom/android/settings_ex/applications/ProcessStatsUi;-><init>(I)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;-><init>(Lcom/android/settings_ex/applications/MemoryManageFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0e68

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/applications/ProcessStatsUi;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/settings_ex/applications/ProcessStatsUi;-><init>(I)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;-><init>(Lcom/android/settings_ex/applications/MemoryManageFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0e69

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/applications/ProcessStatsUi;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/settings_ex/applications/ProcessStatsUi;-><init>(I)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;-><init>(Lcom/android/settings_ex/applications/MemoryManageFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0e6a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/applications/ProcessStatsUi;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/settings_ex/applications/ProcessStatsUi;-><init>(I)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;-><init>(Lcom/android/settings_ex/applications/MemoryManageFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;-><init>(Lcom/android/settings_ex/applications/MemoryManageFragment;Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerAdapter:Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerAdapter:Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerAdapter:Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->setPagerListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 138
    return-void
.end method

.method private initTabBtns(Landroid/view/View;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    .line 98
    const v5, 0x7f1203d8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    .local v0, "tabBtn1":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v5, 0x7f1203d9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 101
    .local v1, "tabBtn2":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v5, 0x7f1203da

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 103
    .local v2, "tabBtn3":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v5, 0x7f1203db

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 105
    .local v3, "tabBtn4":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-array v4, v6, [Landroid/widget/Button;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 107
    .local v4, "tabViewlist":[Landroid/widget/Button;
    iput-object v4, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabViewList:[Landroid/widget/Button;

    .line 108
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabNormalBtnList:[I

    .line 111
    new-array v5, v6, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabPressedBtnList:[I

    .line 114
    return-void

    .line 108
    :array_0
    .array-data 4
        0x7f020366
        0x7f020368
        0x7f020368
        0x7f02036a
    .end array-data

    .line 111
    :array_1
    .array-data 4
        0x7f020367
        0x7f020369
        0x7f020369
        0x7f02036b
    .end array-data
.end method

.method private updateMenu()V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mMenuMax:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mShowMax:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mMenuAvg:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mShowMax:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTabBars(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mCurPos:I

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabViewList:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 213
    iget v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mCurPos:I

    if-ne v1, v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabViewList:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabPressedBtnList:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 212
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabViewList:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabNormalBtnList:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 219
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 70
    const/4 v0, 0x1

    const v1, 0x7f0c0afd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mMenuAvg:Landroid/view/MenuItem;

    .line 71
    const/4 v0, 0x2

    const v1, 0x7f0c0afe

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mMenuMax:Landroid/view/MenuItem;

    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->updateMenu()V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v1, 0x7f0400c9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 54
    const v1, 0x7f120208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    iput-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    .line 55
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->initTabBtns(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->initFragmentListener()V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/MemoryManageFragment;->setHasOptionsMenu(Z)V

    .line 58
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mPagerAdapter:Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 236
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 80
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mShowMax:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mShowMax:Z

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->updateMenu()V

    .line 82
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->access$000(Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ProcessStatsUi;

    .line 85
    .local v0, "fragment":Lcom/android/settings_ex/applications/ProcessStatsUi;
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mShowMax:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsUi;->refreshUIBySortType(Z)V

    goto :goto_0

    .line 80
    .end local v0    # "fragment":Lcom/android/settings_ex/applications/ProcessStatsUi;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 64
    iget v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment;->mCurPos:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->updateTabBars(I)V

    .line 65
    return-void
.end method
