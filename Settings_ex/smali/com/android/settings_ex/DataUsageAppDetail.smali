.class public Lcom/android/settings_ex/DataUsageAppDetail;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DataUsageAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;
    }
.end annotation


# instance fields
.field private mAppBackground:Landroid/widget/TextView;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

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

.field private mContext:Landroid/content/Context;

.field private mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

.field private mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUsageSummary:Landroid/widget/TextView;

.field private mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 160
    new-instance v0, Lcom/android/settings_ex/DataUsageAppDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageAppDetail$1;-><init>(Lcom/android/settings_ex/DataUsageAppDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/android/settings_ex/DataUsageAppDetail$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageAppDetail$2;-><init>(Lcom/android/settings_ex/DataUsageAppDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 205
    new-instance v0, Lcom/android/settings_ex/DataUsageAppDetail$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageAppDetail$3;-><init>(Lcom/android/settings_ex/DataUsageAppDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 224
    new-instance v0, Lcom/android/settings_ex/DataUsageAppDetail$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageAppDetail$4;-><init>(Lcom/android/settings_ex/DataUsageAppDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 481
    new-instance v0, Lcom/android/settings_ex/DataUsageAppDetail$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageAppDetail$5;-><init>(Lcom/android/settings_ex/DataUsageAppDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageAppDetail;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageAppDetail;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/DataUsageUtilitys;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/DataUsageAppDetail;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;
    .param p1, "x1"    # Lcom/android/settings_ex/net/ChartData;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataUsageAppDetail;)Lcom/android/settings_ex/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DataUsageAppDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageAppDetail;->updateCycleList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/DataUsageAppDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageAppDetail;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageAppDetail;->updateDetailData()V

    return-void
.end method

.method private bindCycleDropdown(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 149
    const v0, 0x7f120132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleView:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleView:Landroid/view/View;

    const v1, 0x7f120133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    .line 151
    new-instance v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    const v0, 0x7f12012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 158
    return-void
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    iget v0, v2, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    .line 441
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 442
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 199
    const v1, 0x7f04006b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-object v0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 190
    const-string v1, "DataUsage"

    const-string v2, "setAppRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    iget v0, v1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    .line 192
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    return-void

    .line 192
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 17

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    if-nez v13, :cond_0

    .line 387
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 324
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 325
    .local v11, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 328
    .local v5, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    iget v12, v13, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    .line 332
    .local v12, "uid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v13}, Lcom/android/settings_ex/DataUsageUtilitys;->getUidDetailProvider()Lcom/android/settings_ex/net/UidDetailProvider;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v12, v14}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v3

    .line 333
    .local v3, "detail":Lcom/android/settings_ex/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppIcon:Landroid/widget/ImageView;

    iget-object v14, v3, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 336
    iget-object v13, v3, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v13, :cond_1

    .line 337
    iget-object v1, v3, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .local v1, "arr$":[Ljava/lang/CharSequence;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v6, v1, v4

    .line 338
    .local v6, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v14, v6}, Lcom/android/settings_ex/DataUsageAppDetail;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 341
    .end local v1    # "arr$":[Ljava/lang/CharSequence;
    .end local v4    # "i$":I
    .end local v6    # "label":Ljava/lang/CharSequence;
    .end local v7    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v15, v3, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v14, v15}, Lcom/android/settings_ex/DataUsageAppDetail;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 345
    :cond_2
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, "packageNames":[Ljava/lang/String;
    if-eqz v10, :cond_5

    array-length v13, v10

    if-lez v13, :cond_5

    .line 347
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const/4 v8, 0x0

    .line 352
    .local v8, "matchFound":Z
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v9, v1, v4

    .line 353
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v13, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 355
    const/4 v8, 0x1

    .line 356
    if-eqz v9, :cond_3

    const-string v13, "cn.nubia.browser"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 357
    const/4 v8, 0x0

    .line 362
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v13, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettings:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "matchFound":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v13

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v15}, Lcom/android/settings_ex/DataUsageUtilitys;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageUtilitys$AppItem;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->updateDetailData()V

    .line 375
    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v13}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v13}, Lcom/android/settings_ex/DataUsageUtilitys;->isBandwidthControlEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageUtilitys;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    const v15, 0x7f0c0885

    invoke-virtual {v13, v14, v15}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceTitle(Landroid/view/View;I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    const v15, 0x7f0c0886

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/DataUsageAppDetail;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/settings_ex/DataUsageUtilitys;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getAppRestrictBackground()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 352
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "matchFound":Z
    .restart local v9    # "packageName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 366
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "matchFound":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettings:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 385
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateCycleList()V
    .locals 24

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v2}, Lcom/android/settings_ex/DataUsageUtilitys;->getNetworkPolicyEditor()Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v8}, Lcom/android/settings_ex/DataUsageUtilitys;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v15

    .line 251
    .local v15, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    .line 252
    .local v22, "previousItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->clear()V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 256
    .local v3, "context":Landroid/content/Context;
    const-wide v18, 0x7fffffffffffffffL

    .line 257
    .local v18, "historyStart":J
    const-wide/high16 v16, -0x8000000000000000L

    .line 258
    .local v16, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v2, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v2, v2, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v18

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v2, v2, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v16

    .line 263
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 264
    .local v20, "now":J
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v2, v18, v8

    if-nez v2, :cond_1

    move-wide/from16 v18, v20

    .line 265
    :cond_1
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v2, v16, v8

    if-nez v2, :cond_2

    const-wide/16 v8, 0x1

    add-long v16, v20, v8

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->setChangePossible(Z)V

    .line 269
    const/4 v14, 0x0

    .line 270
    .local v14, "hasCycles":Z
    if-eqz v15, :cond_3

    .line 272
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v15}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 275
    .local v6, "cycleEnd":J
    :goto_0
    cmp-long v2, v6, v18

    if-lez v2, :cond_3

    .line 276
    invoke-static {v6, v7, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 277
    .local v4, "cycleStart":J
    const-string v2, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generating cs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to ce="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " waiting for hs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    new-instance v2, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v8, v2}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 280
    move-wide v6, v4

    .line 281
    const/4 v14, 0x1

    .line 282
    goto :goto_0

    .line 287
    .end local v4    # "cycleStart":J
    .end local v6    # "cycleEnd":J
    :cond_3
    if-nez v14, :cond_4

    .line 289
    move-wide/from16 v6, v16

    .line 290
    .restart local v6    # "cycleEnd":J
    :goto_1
    cmp-long v2, v6, v18

    if-lez v2, :cond_4

    .line 291
    const-wide v8, 0x90321000L

    sub-long v4, v6, v8

    .line 292
    .restart local v4    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    new-instance v2, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v8, v2}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 293
    move-wide v6, v4

    .line 294
    goto :goto_1

    .line 298
    .end local v4    # "cycleStart":J
    .end local v6    # "cycleEnd":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->findNearestPosition(Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;)I

    move-result v11

    .line 300
    .local v11, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-virtual {v2, v11}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    .line 305
    .local v23, "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 306
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-interface/range {v8 .. v13}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 314
    .end local v11    # "position":I
    .end local v23    # "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    :goto_2
    return-void

    .line 309
    .restart local v11    # "position":I
    .restart local v23    # "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->updateDetailData()V

    goto :goto_2

    .line 312
    .end local v11    # "position":I
    .end local v23    # "selectedItem":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 28

    .prologue
    .line 396
    const-string v3, "DataUsage"

    const-string v11, "updateDetailData()"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 399
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 400
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 402
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 404
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 405
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 408
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 409
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 410
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 412
    .local v22, "foregroundBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const/16 v11, 0xaf

    invoke-virtual {v3, v11}, Lcom/android/settings_ex/widget/PieChartView;->setOriginAngle(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/PieChartView;->removeAllSlices()V

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const-string v11, "#d88d3a"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/settings_ex/widget/PieChartView;->addSlice(JI)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const-string v11, "#666666"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/settings_ex/widget/PieChartView;->addSlice(JI)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/PieChartView;->generatePath()V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v11, v3, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 428
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    :cond_0
    if-eqz v10, :cond_1

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v26, v12, v14

    .line 429
    .local v26, "totalBytes":J
    :goto_0
    move-wide/from16 v0, v26

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    .line 430
    .local v25, "totalPhrase":Ljava/lang/String;
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/settings_ex/DataUsageUtilitys;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v19

    .line 433
    .local v19, "rangePhrase":Ljava/lang/String;
    const v24, 0x7f0c089f

    .line 435
    .local v24, "summaryRes":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageAppDetail;->mUsageSummary:Landroid/widget/TextView;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v25, v11, v12

    const/4 v12, 0x1

    aput-object v19, v11, v12

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/settings_ex/DataUsageAppDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    return-void

    .line 428
    .end local v19    # "rangePhrase":Ljava/lang/String;
    .end local v24    # "summaryRes":I
    .end local v25    # "totalPhrase":Ljava/lang/String;
    .end local v26    # "totalBytes":J
    :cond_1
    const-wide/16 v26, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->getCurrentApp()Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->getPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->getChartData()Lcom/android/settings_ex/net/ChartData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mChartData:Lcom/android/settings_ex/net/ChartData;

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    const v1, 0x7f040072

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/DataUsageAppDetail;->bindCycleDropdown(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    const v1, 0x7f1200b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppIcon:Landroid/widget/ImageView;

    .line 113
    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppTitles:Landroid/view/ViewGroup;

    .line 114
    const v1, 0x7f120138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/widget/PieChartView;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    .line 115
    const v1, 0x7f120136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppForeground:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f120137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppBackground:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f120139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 119
    const v1, 0x7f1200b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettings:Landroid/widget/Button;

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettings:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings_ex/DataUsageUtilitys;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail;->mUsageSummary:Landroid/widget/TextView;

    .line 133
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageAppDetail;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageAppDetail;->updateAppDetail()V

    .line 140
    return-void
.end method
