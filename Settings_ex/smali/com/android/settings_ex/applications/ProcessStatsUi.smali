.class public Lcom/android/settings_ex/applications/ProcessStatsUi;
.super Lcom/android/settings_ex/applications/ProcessStatsBase;
.source "ProcessStatsUi.java"


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field public static final FOREGROUND_PROC_STATES:[I

.field static final sMaxPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mMaxMemory:D

.field private mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

.field private mPkgEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowMax:Z

.field preferenceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 112
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 212
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsUi$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsUi$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    .line 225
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsUi$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsUi$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    return-void

    .line 104
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;-><init>()V

    .line 172
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsUi$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ProcessStatsUi$1;-><init>(Lcom/android/settings_ex/applications/ProcessStatsUi;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->preferenceHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "durationIndex"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;-><init>(I)V

    .line 172
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsUi$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ProcessStatsUi$1;-><init>(Lcom/android/settings_ex/applications/ProcessStatsUi;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->preferenceHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ProcessStatsUi;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ProcessStatsUi;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMaxMemory:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ProcessStatsUi;)Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ProcessStatsUi;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ProcessStatsUi;IIDLcom/android/settings_ex/applications/ProcStatsData$MemInfo;)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ProcessStatsUi;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # D
    .param p5, "x4"    # Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/applications/ProcessStatsUi;->addExtraPreference(IIDLcom/android/settings_ex/applications/ProcStatsData$MemInfo;)V

    return-void
.end method

.method private addExtraPreference(IIDLcom/android/settings_ex/applications/ProcStatsData$MemInfo;)V
    .locals 15
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "maxMemory"    # D
    .param p5, "memInfo"    # Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 192
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 193
    const-string v5, "ProcessStatsUi"

    const-string v6, "addExtraPreference() getActivity() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p2

    if-ge v5, v0, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    .line 198
    :cond_2
    move/from16 v13, p1

    .local v13, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v13, v0, :cond_0

    .line 199
    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 200
    .local v4, "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-object v5, v4, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 198
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 203
    :cond_3
    new-instance v3, Lcom/android/settings_ex/applications/ProcessStatsPreference;

    invoke-direct {v3, v2}, Lcom/android/settings_ex/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 204
    .local v3, "pref":Lcom/android/settings_ex/applications/ProcessStatsPreference;
    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, v5}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 205
    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    move-object/from16 v0, p5

    iget-wide v10, v0, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->totalScale:D

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-nez v6, :cond_4

    const/4 v12, 0x1

    :goto_2
    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v12}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->init(Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V

    .line 207
    invoke-virtual {v3, v13}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->setOrder(I)V

    .line 208
    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 205
    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x17

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    .line 71
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 72
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 73
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 87
    instance-of v2, p2, Lcom/android/settings_ex/applications/ProcessStatsPreference;

    if-nez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    .line 94
    :goto_0
    return v2

    :cond_0
    move-object v1, p2

    .line 90
    check-cast v1, Lcom/android/settings_ex/applications/ProcessStatsPreference;

    .line 91
    .local v1, "pgp":Lcom/android/settings_ex/applications/ProcessStatsPreference;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v0

    .line 92
    .local v0, "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->getEntry()Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/settings_ex/applications/ProcessStatsUi;->launchMemoryDetail(Lcom/android/settings_ex/SettingsActivity;Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;)V

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public refreshUIBySortType(Z)V
    .locals 0
    .param p1, "isShowMax"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->refreshUi()V

    .line 134
    return-void
.end method

.method public refreshUi()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xf

    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 140
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c0af7

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 144
    .local v7, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    .line 147
    const/4 v9, 0x0

    .local v9, "i":I
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_1
    if-ge v9, v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 149
    .local v11, "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    invoke-virtual {v11}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->updateMetrics()V

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "N":I
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "i":I
    .end local v11    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    :cond_0
    const v1, 0x7f0c0af6

    goto :goto_0

    .line 151
    .restart local v0    # "N":I
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v9    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings_ex/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    :goto_2
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    iget-wide v4, v1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realTotalRam:D

    :goto_3
    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMaxMemory:D

    .line 160
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMaxMemory:D

    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings_ex/applications/ProcessStatsUi;->addExtraPreference(IIDLcom/android/settings_ex/applications/ProcStatsData$MemInfo;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 162
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v8, "data":Landroid/os/Bundle;
    const-string v1, "startIndex"

    invoke-virtual {v8, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v1, "endIndex"

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPkgEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 166
    .local v10, "msg":Landroid/os/Message;
    invoke-virtual {v10, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 167
    const/4 v1, 0x1

    iput v1, v10, Landroid/os/Message;->what:I

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->preferenceHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 170
    .end local v8    # "data":Landroid/os/Bundle;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 151
    :cond_3
    sget-object v1, Lcom/android/settings_ex/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    goto :goto_2

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    iget-wide v4, v1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v4, v12

    goto :goto_3
.end method
