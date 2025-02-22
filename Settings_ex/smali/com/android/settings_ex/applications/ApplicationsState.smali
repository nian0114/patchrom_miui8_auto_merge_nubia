.class public Lcom/android/settings_ex/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings_ex/applications/ApplicationsState$Session;,
        Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALL_ENABLED_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 163
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 178
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 189
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 200
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 211
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 226
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 239
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 252
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 413
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    const-wide/16 v2, 0x1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Lcom/android/settings_ex/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 281
    iput-wide v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    .line 426
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 427
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 428
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 430
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 431
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    .line 434
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const v0, 0xa200

    iput v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    return-void

    .line 439
    :cond_0
    const v0, 0x8200

    iput v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 460
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ApplicationsState;
    .param p1, "x1"    # J

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 417
    sget-object v1, Lcom/android/settings_ex/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 421
    :cond_0
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 870
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 873
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 859
    if-eqz p1, :cond_0

    .line 862
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 866
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 852
    if-eqz p1, :cond_0

    .line 853
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 855
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "tmp":Ljava/lang/String;
    sget-object v1, Lcom/android/settings_ex/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 763
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 771
    monitor-exit v2

    .line 797
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 776
    monitor-exit v2

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 795
    :catch_0
    move-exception v1

    goto :goto_0

    .line 778
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 779
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_3

    .line 780
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 782
    monitor-exit v2

    goto :goto_0

    .line 784
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 786
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 788
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 790
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 791
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 794
    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 684
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 692
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 693
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 694
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    .line 695
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 697
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method doResumeIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 631
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    if-eqz v3, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    .line 635
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_2

    .line 636
    new-instance v3, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    .line 637
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 639
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 640
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_3

    .line 641
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 644
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 647
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 648
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 655
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 656
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 657
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 660
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_8

    .line 661
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 662
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 663
    add-int/lit8 v1, v1, -0x1

    .line 656
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 650
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 651
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iput-boolean v5, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 666
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_7
    iput-boolean v5, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 668
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 669
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_5

    .line 670
    iput-object v2, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 673
    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_9
    iput-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 674
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method ensureIcon(Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .prologue
    .line 720
    iget-object v0, p1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 726
    :goto_0
    return-void

    .line 723
    :cond_0
    monitor-enter p1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 725
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 703
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 704
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 705
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 706
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 707
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 708
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 715
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v4

    return-object v0

    .line 706
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 838
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 840
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 841
    .restart local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_0
    :goto_0
    return-object v0

    .line 843
    :cond_1
    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 844
    iput-object p1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public haveDisabledApps()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 753
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 758
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public newSession(Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ex/applications/ApplicationsState$Session;
    .locals 3
    .param p1, "callbacks"    # Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    .prologue
    .line 623
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState$Session;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)V

    .line 624
    .local v0, "s":Lcom/android/settings_ex/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    monitor-exit v2

    .line 627
    return-object v0

    .line 626
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 346
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 347
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    .line 348
    monitor-exit v3

    .line 358
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;

    .line 353
    .local v1, "s":Lcom/android/settings_ex/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    .end local v1    # "s":Lcom/android/settings_ex/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 800
    iget-object v5, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 802
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v2

    .line 804
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 805
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 807
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 808
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 811
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 812
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 813
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 814
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 815
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 816
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 817
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 822
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 823
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 827
    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v5

    .line 828
    return-void

    .line 815
    .restart local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .restart local v1    # "i":I
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 732
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 736
    :cond_0
    monitor-exit v2

    .line 737
    return-void

    .line 736
    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sumCacheSizes()J
    .locals 8

    .prologue
    .line 740
    const-wide/16 v2, 0x0

    .line 742
    .local v2, "sum":J
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->cacheSize:J

    add-long/2addr v2, v6

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 748
    :cond_0
    monitor-exit v4

    .line 749
    return-wide v2

    .line 748
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
