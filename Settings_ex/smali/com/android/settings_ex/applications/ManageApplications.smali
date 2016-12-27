.class public Lcom/android/settings_ex/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings_ex/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

.field mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    .line 1497
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$5;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-static {p0}, Lcom/android/settings_ex/applications/ManageApplications;->launchAppOpsActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-static {p0}, Lcom/android/settings_ex/applications/ManageApplications;->luanchAppTypeListActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateNumTabs()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/applications/ManageApplications;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications;->setSystemAppAsDefault(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static launchAppOpsActivity(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1146
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1147
    .local v3, "tags":[Ljava/lang/String;
    const-string v4, "common_tab_label"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string v4, "common_tab_headline"

    const v5, 0x7f0c0e6c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cn.nubia.security.appopssummary.ui.PagerAuthority"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "cn.nubia.security.appopssummary.ui.PagerApplications"

    aput-object v5, v2, v4

    .line 1154
    .local v2, "pagerArray":[Ljava/lang/String;
    const-string v4, "common_tab_class_array"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v4, "cn.nubia.security2"

    const-string v5, "cn.nubia.security.common.tab.CommonTabHost"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1161
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "anEx":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static luanchAppTypeListActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1136
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1138
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :goto_0
    return-void

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setSystemAppAsDefault(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1452
    new-instance v1, Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 1453
    .local v1, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1454
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 1455
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->writeSystemDefaultToDB()V

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1457
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1458
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 1459
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->resetToDefault()V

    .line 1457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1461
    :cond_1
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1343
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1344
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 1347
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0513

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1349
    return-void
.end method

.method private updateNumTabs()V
    .locals 5

    .prologue
    .line 1308
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1310
    .local v1, "newNum":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    if-eq v1, v2, :cond_1

    .line 1311
    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    .line 1312
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    .line 1313
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1315
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    if-eqz v2, :cond_1

    .line 1317
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1319
    .local v0, "index":I
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    if-lt v0, v2, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1324
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1328
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 1308
    .end local v1    # "newNum":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1360
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v1, 0x7f0c0538

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1362
    const v1, 0x7f0c0539

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1363
    const v1, 0x7f0c053a

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1364
    const v1, 0x7f0c0137

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1365
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1366
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1368
    .end local v0    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1009
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    .line 1011
    .local v2, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v8

    .line 1012
    .local v8, "mActionbar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v1, 0x7f0c0532

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const v1, 0x7f0c0e2e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const v1, 0x7f0c0537

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1013
    .local v6, "menuAlphaStrs":[Ljava/lang/CharSequence;
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v1, 0x7f0c0e6b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const v1, 0x7f0c0e2e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const v1, 0x7f0c0537

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1014
    .local v3, "processPermenuSizeStrs":[Ljava/lang/CharSequence;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v1, 0x7f0c0e2e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const v1, 0x7f0c0537

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1015
    .local v4, "menuSizeStrs":[Ljava/lang/CharSequence;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v1, 0x7f0c0535

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const v1, 0x7f0c0534

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1016
    .local v5, "menuShowServiceStrs":[Ljava/lang/CharSequence;
    if-eqz v8, :cond_1

    .line 1017
    const v0, 0x7f0c0509

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1018
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1019
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1020
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040178

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1021
    .local v9, "mCustomView":Landroid/view/View;
    const v0, 0x7f120371

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1022
    .local v10, "moreSettingsIcon":Landroid/widget/ImageView;
    if-eqz v10, :cond_0

    .line 1023
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$2;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    :cond_0
    new-instance v11, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {v11, v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1129
    .local v11, "params":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    const/4 v0, 0x5

    iput v0, v11, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    .line 1130
    invoke-virtual {v8, v9, v11}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    .line 1132
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "mCustomView":Landroid/view/View;
    .end local v10    # "moreSettingsIcon":Landroid/widget/ImageView;
    .end local v11    # "params":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1302
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1305
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1380
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1381
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1383
    .local v4, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1385
    .local v3, "nm":Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1386
    .local v6, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1388
    .local v5, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1389
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/ManageApplications$4;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1448
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "nm":Landroid/app/INotificationManager;
    .end local v4    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v5    # "aom":Landroid/app/AppOpsManager;
    .end local v6    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 844
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 847
    .local v20, "mDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawable: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    .line 849
    .local v19, "mActivity":Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-eqz v19, :cond_9

    .line 852
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v18

    .line 853
    .local v18, "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v18, :cond_8

    .line 854
    if-eqz v20, :cond_7

    .line 855
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    .end local v18    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 871
    .local v17, "intent":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 872
    .local v13, "action":Ljava/lang/String;
    const/16 v16, 0x0

    .line 873
    .local v16, "defaultListType":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "classname"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 875
    .local v14, "className":Ljava/lang/String;
    :goto_1
    if-nez v14, :cond_0

    .line 876
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 878
    :cond_0
    const-class v3, Lcom/android/settings_ex/Settings$RunningServicesActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".RunningServices"

    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 880
    :cond_1
    const/16 v16, 0x1

    .line 891
    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    .line 892
    const-string v3, "sortOrder"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 893
    const-string v3, "defaultListType"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 894
    .local v21, "tmp":I
    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    move/from16 v16, v21

    .line 895
    :cond_3
    const-string v3, "showBackground"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 898
    .end local v21    # "tmp":I
    :cond_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    .line 900
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    .line 902
    .local v15, "containerIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v15, v4, v6}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c055e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c055d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 907
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f0c0540

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 910
    .local v2, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-nez v3, :cond_6

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0542

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 914
    .local v5, "labelName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isInternal(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0c4b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 917
    :cond_5
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v2    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    const/4 v6, 0x2

    move-object/from16 v3, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 920
    .restart local v2    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    .end local v5    # "labelName":Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v2    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c053e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    move-object v6, v2

    move-object/from16 v7, p0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 933
    .restart local v2    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v2    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c053f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    move-object v6, v2

    move-object/from16 v7, p0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 938
    .restart local v2    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 943
    .local v22, "um":Landroid/os/UserManager;
    return-void

    .line 857
    .end local v2    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "className":Ljava/lang/String;
    .end local v15    # "containerIntent":Landroid/content/Intent;
    .end local v16    # "defaultListType":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v22    # "um":Landroid/os/UserManager;
    .restart local v18    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_7
    const-string v3, "ManageApplications"

    const-string v4, "Errors: getDrawable() is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 860
    :cond_8
    const-string v3, "ManageApplications"

    const-string v4, "Errors: getSupportActionBar() is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 863
    .end local v18    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_9
    const-string v3, "ManageApplications"

    const-string v4, "Errors: getActivity() is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 873
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v16    # "defaultListType":I
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 881
    .restart local v14    # "className":Ljava/lang/String;
    :cond_b
    const-class v3, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ".StorageUse"

    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 884
    :cond_c
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 885
    const/16 v16, 0x3

    goto/16 :goto_2

    .line 886
    :cond_d
    const-string v3, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 888
    const/16 v16, 0x3

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 949
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 951
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c6

    invoke-virtual {v0, v1, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 953
    .local v7, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 954
    iput-object v7, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 956
    const v0, 0x7f1200bf

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 957
    iget-object v9, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 958
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 959
    const v0, 0x7f120208

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    .line 961
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    new-instance v1, Lcom/android/settings_ex/applications/ManageApplications$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/ManageApplications$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->setPagerListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 983
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 987
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "resetDialog"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->buildResetDialog()V

    .line 991
    :cond_1
    if-nez p3, :cond_2

    .line 993
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 995
    .local v8, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget v0, v8, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    if-ne v0, v1, :cond_3

    .line 996
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1001
    .end local v6    # "i":I
    .end local v8    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1002
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1003
    return-object v7

    .line 993
    .restart local v6    # "i":I
    .restart local v8    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1354
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1355
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1290
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->detachView()V

    .line 1296
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->release()V

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1298
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1375
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1466
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1467
    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1468
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1469
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1471
    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1272
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1273
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    .line 1274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    .line 1274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1277
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1240
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    .line 1242
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1244
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings_ex/applications/ManageApplications$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/ManageApplications$3;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1255
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1259
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1260
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1261
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1262
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1264
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1265
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1266
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1268
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1235
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1236
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1281
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1282
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1286
    :cond_0
    return-void
.end method

.method public updateCurrentTab(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1474
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1475
    .local v2, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1478
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v3, :cond_1

    .line 1479
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1480
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1485
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1486
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1487
    .local v1, "t":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eq v1, v3, :cond_0

    .line 1488
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    .line 1485
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1482
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1492
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1493
    return-void
.end method
