.class public Lcom/android/settings_ex/DataUsageSummary;
.super Lcom/android/settings_ex/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAutoSyncListener:Landroid/view/View$OnClickListener;

.field private mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mAutoSyncView:Landroid/view/View;

.field private mBinding:Z

.field private mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings_ex/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mControlSwitches:Landroid/widget/LinearLayout;

.field private mControlSwitchesContainer:Landroid/view/ViewGroup;

.field private mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataUsageDetailListener:Landroid/view/View$OnClickListener;

.field private mDataUsageDetailView:Landroid/view/View;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mEnd:J

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMeterdListener:Landroid/view/View$OnClickListener;

.field private mMeterdView:Landroid/view/View;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPhoneId:I

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRestrictBackgoundListener:Landroid/view/View$OnClickListener;

.field private mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mRestrictBackgroundView:Landroid/view/View;

.field private mShowAppImmediatePkg:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStart:J

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchSimCautionListener:Landroid/view/View$OnClickListener;

.field private mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mSwitchSimCautionView:Landroid/view/View;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

.field private mUsageDataEmpty:Landroid/widget/TextView;

.field private mUsageDataEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mUsageSummary:Landroid/widget/TextView;

.field private mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "restrict_background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1958
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$16;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$16;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/HighlightingFragment;-><init>()V

    .line 236
    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 271
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 272
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 277
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 283
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 284
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneId:I

    .line 343
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$1;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 779
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$5;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageDataEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 794
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$6;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1053
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$7;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgoundListener:Landroid/view/View$OnClickListener;

    .line 1067
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$8;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncListener:Landroid/view/View$OnClickListener;

    .line 1079
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$9;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1105
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$10;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailListener:Landroid/view/View$OnClickListener;

    .line 1112
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$11;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdListener:Landroid/view/View$OnClickListener;

    .line 1135
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$12;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1217
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$13;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1246
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$14;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1310
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$15;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2042
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$17;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->showDataUsageAppList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->showDataUsageMetered()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/net/ChartData;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageUtilitys;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setAutoSyncChecked(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setSwitchSimCaution(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setDisplaySwitchSimCautionView(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method private addMutiTab()V
    .locals 3

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "mobile"

    const v2, 0x7f0c087a

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2070
    return-void
.end method

.method private bindControlContainer(Landroid/view/LayoutInflater;)V
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f04017c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 556
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f12013c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitchesContainer:Landroid/view/ViewGroup;

    .line 558
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f12013d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    .line 559
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 560
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {v3, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 561
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 562
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/NubiaSwitch;->setFocusable(Z)V

    .line 563
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/settings_ex/DataUsageUtilitys;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundView:Landroid/view/View;

    .line 564
    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$2;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 574
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgoundListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    new-instance v3, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {v3, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 578
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 579
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/NubiaSwitch;->setFocusable(Z)V

    .line 580
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/settings_ex/DataUsageUtilitys;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncView:Landroid/view/View;

    .line 581
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 582
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 585
    .local v2, "meterdView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/settings_ex/DataUsageUtilitys;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdView:Landroid/view/View;

    .line 586
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 587
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 588
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 591
    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 592
    .local v1, "dataUsageView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/settings_ex/DataUsageUtilitys;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailView:Landroid/view/View;

    .line 593
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 594
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 595
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    return-void
.end method

.method private bindCycleDropdown(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v1, 0x7f120132

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 494
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const/high16 v1, 0x7f120000

    const-string v2, "data_usage_cycle"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v1, 0x7f120133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 496
    new-instance v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    .line 497
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v1, 0x7f12012b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 503
    return-void
.end method

.method private bindNetworkContainer(Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 507
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v2, 0x7f12013a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 509
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v2, 0x7f12013b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 511
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 513
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 514
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 515
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setFocusable(Z)V

    .line 516
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 518
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/high16 v2, 0x7f120000

    const-string v3, "data_usage_disable_mobile_limit"

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 520
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 521
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 522
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMoreThanOneSim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    new-instance v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 529
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 530
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setFocusable(Z)V

    .line 531
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    .line 532
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 533
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 534
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    :cond_0
    return-void
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 715
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 719
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 720
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageDataEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1746
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 1747
    .local v0, "template":Landroid/net/NetworkTemplate;
    if-nez v0, :cond_0

    .line 1759
    :goto_0
    return-object v1

    .line 1749
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1755
    :pswitch_0
    const-string v1, "mobile"

    goto :goto_0

    .line 1751
    :pswitch_1
    const-string v1, "3g"

    goto :goto_0

    .line 1753
    :pswitch_2
    const-string v1, "4g"

    goto :goto_0

    .line 1757
    :pswitch_3
    const-string v1, "wifi"

    goto :goto_0

    .line 1749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 704
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 705
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 706
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mControlSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 708
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 709
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 710
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 711
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method private getActiveSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1306
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1307
    .local v0, "subId":[I
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneId()I
    .locals 2

    .prologue
    .line 2073
    iget v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneId:I

    .line 2076
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneId:I

    return v0
.end method

.method private getSwitchSimCaution(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2058
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkPolicy;->getSwitchSimCaution()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1829
    const/4 v0, 0x0

    return v0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1851
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1852
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 1946
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1947
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1951
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1952
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1953
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1955
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1956
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1957
    return-void
.end method

.method private isMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMoreThanOneSim()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2062
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 2063
    .local v0, "hasIccCard1":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 2064
    .local v1, "hasIccCard2":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 935
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoSyncChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 949
    return-void
.end method

.method private setDisplaySwitchSimCautionView(Z)V
    .locals 8
    .param p1, "display"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2032
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2034
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2035
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move v1, v2

    .line 2037
    .local v1, "visible":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    if-eqz v1, :cond_2

    move v4, v3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2038
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->getSwitchSimCaution(Landroid/net/NetworkPolicy;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 2040
    .end local v0    # "policy":Landroid/net/NetworkPolicy;
    .end local v1    # "visible":Z
    :cond_0
    return-void

    .restart local v0    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    move v1, v3

    .line 2035
    goto :goto_0

    .line 2037
    .restart local v1    # "visible":Z
    :cond_2
    const/16 v4, 0x8

    goto :goto_1

    :cond_3
    move v2, v3

    .line 2038
    goto :goto_2
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 896
    const-string v0, "DataUsage"

    const-string v1, "setPolicyLimitBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 898
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 899
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 890
    const-string v0, "DataUsage"

    const-string v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 892
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 893
    return-void
.end method

.method private setRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 940
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 943
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 945
    return-void
.end method

.method private setSwitchSimCaution(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 2053
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setSwitchSimCaution(Landroid/net/NetworkTemplate;Z)V

    .line 2054
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 2055
    return-void
.end method

.method private showDataUsageAppList()V
    .locals 7

    .prologue
    .line 1120
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1121
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v1, "start"

    iget-wide v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mStart:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1122
    const-string v1, "end"

    iget-wide v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mEnd:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 1124
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/DataUsageAppList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0bf4

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1127
    return-void
.end method

.method private showDataUsageMetered()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 1131
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c08a0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1133
    return-void
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 808
    iput-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 809
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 812
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "currentTab":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 815
    const-string v2, "DataUsage"

    const-string v3, "no tab selected; hiding body"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 817
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 820
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 821
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 826
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBody() with currentTab="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 830
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v4, 0x7f0c0874

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 831
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 832
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    .line 833
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMoreThanOneSim()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v6}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 835
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    const v4, 0x7f0c0c55

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 837
    invoke-direct {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->setDisplaySwitchSimCautionView(Z)V

    .line 871
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundView:Landroid/view/View;

    const v4, 0x7f0c085e

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 872
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncView:Landroid/view/View;

    const v4, 0x7f0c0866

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 874
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMeterdView:Landroid/view/View;

    const v4, 0x7f0c0865

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 875
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsageDetailView:Landroid/view/View;

    const v4, 0x7f0c0bf4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 880
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    invoke-static {v4, v5}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageUtilitys$AppItem;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 884
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 886
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .line 839
    :cond_3
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 840
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v4, 0x7f0c0876

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 842
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 843
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    .line 845
    :cond_4
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 846
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v4, 0x7f0c0875

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 848
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 849
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_1

    .line 851
    :cond_5
    const-string v2, "wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 853
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 855
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 856
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_1

    .line 858
    :cond_6
    const-string v2, "ethernet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 860
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 861
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 862
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 863
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_1

    .line 866
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tab: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 25
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    .line 988
    .local v17, "previousItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->clear()V

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 992
    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .line 993
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 994
    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_0

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 999
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1000
    .local v22, "now":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    .line 1001
    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    .line 1003
    :cond_2
    const/16 v16, 0x0

    .line 1004
    .local v16, "hasCycles":Z
    if-eqz p1, :cond_4

    .line 1006
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1009
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_3

    .line 1010
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1011
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1014
    move-wide v8, v6

    .line 1015
    const/16 v16, 0x1

    .line 1016
    goto :goto_0

    .line 1019
    .end local v6    # "cycleStart":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->setChangePossible(Z)V

    .line 1022
    .end local v8    # "cycleEnd":J
    :cond_4
    if-nez v16, :cond_6

    .line 1024
    move-wide/from16 v8, v18

    .line 1025
    .restart local v8    # "cycleEnd":J
    :goto_1
    cmp-long v4, v8, v20

    if-lez v4, :cond_5

    .line 1026
    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .line 1027
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1028
    move-wide v8, v6

    .line 1029
    goto :goto_1

    .line 1031
    .end local v6    # "cycleStart":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->setChangePossible(Z)V

    .line 1035
    .end local v8    # "cycleEnd":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 1036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->findNearestPosition(Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;)I

    move-result v13

    .line 1037
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    .line 1042
    .local v24, "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1043
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1051
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    :goto_2
    return-void

    .line 1046
    .restart local v13    # "position":I
    .restart local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .line 1049
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 20

    .prologue
    .line 1174
    const-string v3, "DataUsage"

    const-string v4, "updateDetailData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mStart:J

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mEnd:J

    .line 1178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1180
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1182
    .local v2, "context":Landroid/content/Context;
    const/4 v11, 0x0

    .line 1184
    .local v11, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_0

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/DataUsageSummary;->mEnd:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 1189
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/DataUsageSummary;->mStart:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mEnd:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v5, v6, v7, v0, v1}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1192
    if-eqz v11, :cond_2

    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    .line 1193
    .local v14, "totalBytes":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-lez v3, :cond_4

    .line 1194
    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 1195
    .local v16, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/DataUsageSummary;->mEnd:J

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/settings_ex/DataUsageUtilitys;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v12

    .line 1198
    .local v12, "rangePhrase":Ljava/lang/String;
    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1200
    :cond_1
    const v13, 0x7f0c089f

    .line 1205
    .local v13, "summaryRes":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/android/settings_ex/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageDataEmpty:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    .end local v12    # "rangePhrase":Ljava/lang/String;
    .end local v13    # "summaryRes":I
    .end local v16    # "totalPhrase":Ljava/lang/String;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1215
    return-void

    .line 1192
    .end local v14    # "totalBytes":J
    :cond_2
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 1202
    .restart local v12    # "rangePhrase":Ljava/lang/String;
    .restart local v14    # "totalBytes":J
    .restart local v16    # "totalPhrase":Ljava/lang/String;
    :cond_3
    const v13, 0x7f0c089e

    .restart local v13    # "summaryRes":I
    goto :goto_1

    .line 1209
    .end local v12    # "rangePhrase":Ljava/lang/String;
    .end local v13    # "summaryRes":I
    .end local v16    # "totalPhrase":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageDataEmpty:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 8
    .param p1, "refreshCycle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 958
    .local v0, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 959
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v0, :cond_2

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 961
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMoreThanOneSim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings_ex/msim/NBCardUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 964
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSwitchSimCautionSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->getSwitchSimCaution(Landroid/net/NetworkPolicy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 974
    :goto_1
    if-eqz p1, :cond_1

    .line 976
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 978
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 960
    goto :goto_0

    .line 970
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1
.end method

.method private updateStats()V
    .locals 3

    .prologue
    .line 641
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$4;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 663
    return-void
.end method

.method private updateTabs()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 730
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 731
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 732
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "3g"

    const v7, 0x7f0c087c

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 733
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "4g"

    const v7, 0x7f0c087b

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 752
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 753
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "wifi"

    const v7, 0x7f0c0878

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 755
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 756
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "ethernet"

    const v7, 0x7f0c0879

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 759
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    .line 760
    .local v2, "noTabs":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-le v5, v3, :cond_6

    move v1, v3

    .line 761
    .local v1, "multipleTabs":Z
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 762
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 763
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 765
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    .line 769
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 774
    :cond_3
    :goto_5
    return-void

    .line 734
    .end local v1    # "multipleTabs":Z
    .end local v2    # "noTabs":Z
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->addMutiTab()V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 759
    goto :goto_1

    .restart local v2    # "noTabs":Z
    :cond_6
    move v1, v4

    .line 760
    goto :goto_2

    .line 761
    .restart local v1    # "multipleTabs":Z
    :cond_7
    const/16 v4, 0x8

    goto :goto_3

    .line 767
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 770
    :cond_9
    if-eqz v2, :cond_3

    .line 772
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1863
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 1864
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 1867
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 1869
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 1880
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1872
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 1873
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1876
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 1880
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 367
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    .line 368
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageUtilitys;->getNetworkService()Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 369
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageUtilitys;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 370
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageUtilitys;->getPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 371
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 372
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 373
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 375
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageUtilitys;->getNetworkPolicyEditor()Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 388
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DataUsageUtilitys;->setStatsSession(Landroid/net/INetworkStatsSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    new-instance v3, Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settings_ex/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 403
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 404
    const-string v3, "showAppImmediatePkg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    .line 407
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 413
    sget-object v3, Lcom/android/settings_ex/DataUsageSummary;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 415
    sget-object v3, Lcom/android/settings_ex/DataUsageSummary;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 418
    :cond_2
    return-void

    .line 381
    .end local v0    # "arguments":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 389
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 390
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 423
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 424
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f040075

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 425
    .local v2, "view":Landroid/view/View;
    const v3, 0x1020012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 426
    const v3, 0x7f12013e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 427
    const v3, 0x1020013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 428
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 432
    iput v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 435
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v6}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 436
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 437
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 439
    const v3, 0x7f040073

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 440
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 442
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 443
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 444
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 446
    iget v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    if-lez v3, :cond_0

    .line 448
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-static {v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 449
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    iget v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 451
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->bindNetworkContainer(Landroid/view/LayoutInflater;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->bindControlContainer(Landroid/view/LayoutInflater;)V

    .line 453
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->bindCycleDropdown(Landroid/content/Context;)V

    .line 454
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f120134

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 455
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageDataEmpty:Landroid/widget/TextView;

    .line 458
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 460
    const v3, 0x7f120140

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyView:Landroid/view/View;

    .line 461
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyView:Landroid/view/View;

    const v4, 0x7f120141

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 463
    .local v1, "noCardTip":Landroid/widget/TextView;
    const v3, 0x7f0c0d6f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 465
    return-object v2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 668
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 670
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/UidDetailProvider;->clearCache()V

    .line 671
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 673
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 675
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 680
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onDestroy()V

    .line 681
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onPause()V

    .line 688
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 689
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 611
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onResume()V

    .line 612
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$3;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 618
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 620
    const-string v2, "subscription"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneId:I

    .line 625
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateStats()V

    .line 633
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    .local v1, "mAutoSyncFilter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 637
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 600
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 603
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 606
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    .line 607
    return-void
.end method
