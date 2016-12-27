.class public Lcom/android/settings_ex/DataUsageUtilitys;
.super Ljava/lang/Object;
.source "DataUsageUtilitys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;,
        Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;,
        Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;,
        Lcom/android/settings_ex/DataUsageUtilitys$UidDetailTask;,
        Lcom/android/settings_ex/DataUsageUtilitys$AppItem;,
        Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;
    }
.end annotation


# static fields
.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;

.field private static sInstace:Lcom/android/settings_ex/DataUsageUtilitys;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

.field private mChartData:Lcom/android/settings_ex/net/ChartData;

.field private mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

.field private mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

.field private mInsetSide:I

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkStats:Landroid/net/NetworkStats;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRestrictedUids:[I

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/DataUsageUtilitys;->sInstace:Lcom/android/settings_ex/DataUsageUtilitys;

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/DataUsageUtilitys;->sBuilder:Ljava/lang/StringBuilder;

    .line 592
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings_ex/DataUsageUtilitys;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageUtilitys;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mInsetSide:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 90
    new-instance v0, Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 91
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 93
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mStatsService:Landroid/net/INetworkStatsService;

    .line 95
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 96
    new-instance v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mCycleAdapter:Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;

    .line 97
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 596
    const v8, 0x10010

    .line 598
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings_ex/DataUsageUtilitys;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 599
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/DataUsageUtilitys;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 600
    sget-object v1, Lcom/android/settings_ex/DataUsageUtilitys;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings_ex/DataUsageUtilitys;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v0, Lcom/android/settings_ex/DataUsageUtilitys;->sInstace:Lcom/android/settings_ex/DataUsageUtilitys;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/settings_ex/DataUsageUtilitys;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageUtilitys;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageUtilitys;->sInstace:Lcom/android/settings_ex/DataUsageUtilitys;

    .line 86
    :cond_0
    sget-object v0, Lcom/android/settings_ex/DataUsageUtilitys;->sInstace:Lcom/android/settings_ex/DataUsageUtilitys;

    return-object v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 251
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 252
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 253
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    .line 254
    .local v2, "isNetworkSupported":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-ne v6, v7, :cond_0

    move v1, v4

    .line 256
    .local v1, "getSimState":Z
    :goto_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-ne v6, v7, :cond_1

    :goto_1
    return v4

    .end local v1    # "getSimState":Z
    :cond_0
    move v1, v5

    .line 254
    goto :goto_0

    .restart local v1    # "getSimState":Z
    :cond_1
    move v4, v5

    .line 256
    goto :goto_1
.end method


# virtual methods
.method public bindAdapter()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mNetworkStats:Landroid/net/NetworkStats;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mRestrictedUids:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 175
    :cond_0
    return-void
.end method

.method public clearAdapter()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 181
    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    iget v2, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mInsetSide:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;-><init>(Lcom/android/settings_ex/net/UidDetailProvider;I)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mNetworkStats:Landroid/net/NetworkStats;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mRestrictedUids:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    return-object v0
.end method

.method public getChartData()Lcom/android/settings_ex/net/ChartData;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method public getCurrentApp()Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    return-object v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkService()Landroid/os/INetworkManagementService;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public getPolicyManager()Landroid/net/NetworkPolicyManager;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public getStatsService()Landroid/net/INetworkStatsService;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method public getStatsSession()Landroid/net/INetworkStatsSession;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method public getUidDetailProvider()Lcom/android/settings_ex/net/UidDetailProvider;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    return-object v0
.end method

.method public inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 584
    const v2, 0x7f04011b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 587
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    return-object v0
.end method

.method public isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAdapter([ILandroid/net/NetworkStats;)V
    .locals 3
    .param p1, "restrictedUids"    # [I
    .param p2, "networkStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mRestrictedUids:[I

    .line 165
    iput-object p2, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mNetworkStats:Landroid/net/NetworkStats;

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mAdapter:Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mNetworkStats:Landroid/net/NetworkStats;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mRestrictedUids:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 169
    :cond_0
    return-void
.end method

.method public setCurrentApp(Lcom/android/settings_ex/DataUsageUtilitys$AppItem;)V
    .locals 0
    .param p1, "app"    # Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mCurrentApp:Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 201
    return-void
.end method

.method public setInsetSide(I)V
    .locals 0
    .param p1, "insetSide"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mInsetSide:I

    .line 193
    return-void
.end method

.method public setNetworkTemplate(Landroid/net/NetworkTemplate;)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mTemplate:Landroid/net/NetworkTemplate;

    .line 117
    return-void
.end method

.method public setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 238
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method public setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 229
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 231
    return-void
.end method

.method public setStatsSession(Landroid/net/INetworkStatsSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageUtilitys;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 129
    return-void
.end method
