.class public Lcom/android/settings_exlib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings_exlib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;,
        Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_CLONE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
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

.field final mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurId:J

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

.field final mOwnerRetrieveFlags:I

.field mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$Session;",
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
            "Lcom/android/settings_exlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 1190
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1198
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1209
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1220
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1236
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1249
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1264
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1295
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_CLONE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1323
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1340
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1355
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1365
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1375
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1385
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 6
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    const-wide/16 v4, 0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 109
    new-instance v2, Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    invoke-direct {v2}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    .line 111
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 115
    iput-wide v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurId:J

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 125
    new-instance v2, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    invoke-direct {v2, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;)V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    .line 128
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 129
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 130
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 131
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 132
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 133
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 135
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ApplicationsState.Loader"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 137
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v2, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    .line 141
    const v2, 0xa200

    iput v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mOwnerRetrieveFlags:I

    .line 144
    const v2, 0x8200

    iput v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 161
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_1
    :try_start_1
    monitor-exit v3

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 164
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p1, "x1"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/settings_exlib/applications/ApplicationsState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_exlib/applications/ApplicationsState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method private addUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doPauseLocked()V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 448
    :cond_1
    monitor-exit v1

    .line 450
    :cond_2
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearEntries()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 251
    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 303
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 308
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-object v1

    .line 301
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 469
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 470
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 472
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 474
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v2, p1, v4, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 475
    .restart local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    :goto_0
    return-object v0

    .line 477
    :cond_1
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v2, p1, :cond_0

    .line 478
    iput-object p1, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 86
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 90
    :cond_0
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 91
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
    .line 504
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 507
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
    .line 493
    if-eqz p1, :cond_0

    .line 496
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 500
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
    .line 486
    if-eqz p1, :cond_0

    .line 487
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 489
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private removeUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 453
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 454
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 455
    .local v2, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v2, :cond_1

    .line 456
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 457
    .local v0, "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 458
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v5, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    .end local v0    # "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 460
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 461
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 465
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 365
    monitor-exit v2

    .line 396
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 370
    monitor-exit v2

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 394
    :catch_0
    move-exception v1

    goto :goto_0

    .line 372
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez p2, :cond_2

    iget v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mOwnerRetrieveFlags:I

    :goto_1
    invoke-interface {v3, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 375
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    .line 376
    monitor-exit v2

    goto :goto_0

    .line 372
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_1

    .line 378
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_5

    .line 379
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 381
    monitor-exit v2

    goto :goto_0

    .line 383
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 385
    :cond_5
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 387
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 389
    :cond_6
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 390
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 393
    :cond_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 258
    iget-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doPauseLocked()V

    goto :goto_0
.end method

.method doPauseLocked()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    .line 271
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    .line 275
    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 182
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    if-eqz v7, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iput-boolean v10, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    .line 186
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v7, :cond_2

    .line 187
    new-instance v7, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v7, p0, v12}, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_exlib/applications/ApplicationsState$1;)V

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    .line 188
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v7}, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 190
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 191
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 194
    .local v5, "user":Landroid/os/UserHandle;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3

    .line 195
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    :cond_3
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mOwnerRetrieveFlags:I

    :goto_2
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-interface {v8, v7, v9}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 202
    .local v4, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 203
    .end local v4    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v7

    goto :goto_1

    .line 198
    :cond_4
    iget v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRetrieveFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 207
    .end local v5    # "user":Landroid/os/UserHandle;
    :cond_5
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 210
    invoke-direct {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->clearEntries()V

    .line 217
    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_b

    .line 219
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 222
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v7, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_a

    .line 223
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_9

    .line 224
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    add-int/lit8 v1, v1, -0x1

    .line 218
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 212
    .end local v1    # "i":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 213
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iput-boolean v10, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 228
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_9
    iput-boolean v10, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 230
    :cond_a
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 231
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 232
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_7

    .line 233
    iput-object v3, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_4

    .line 236
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "userId":I
    :cond_b
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v7, v8, :cond_c

    .line 238
    invoke-direct {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->clearEntries()V

    .line 240
    :cond_c
    iput-object v12, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 241
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v7, v11}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 242
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v7, v11}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 279
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 281
    .local v1, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-nez v1, :cond_1

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 283
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_0

    .line 285
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 291
    :cond_0
    if-eqz v2, :cond_1

    .line 292
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 296
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    monitor-exit v4

    move-object v3, v1

    :goto_0
    return-object v3

    .line 286
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ApplicationsState"

    const-string v5, "getEntry couldn\'t reach PackageManager"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 347
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 352
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 345
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 352
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 432
    return-void
.end method

.method public newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    .locals 3
    .param p1, "callbacks"    # Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .prologue
    .line 174
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)V

    .line 175
    .local v0, "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v2

    .line 178
    return-object v0

    .line 177
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
    .line 511
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 512
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    .line 513
    monitor-exit v3

    .line 523
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 517
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 518
    .local v1, "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    .end local v1    # "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
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

.method public removePackage(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 399
    iget-object v5, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 401
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v2

    .line 403
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 404
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 406
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 407
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 411
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 412
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 413
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 415
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 416
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 421
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 422
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 426
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v5

    .line 427
    return-void

    .line 414
    .restart local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local v1    # "i":I
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
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

.method public requestSize(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 324
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 328
    :cond_0
    monitor-exit v2

    .line 329
    return-void

    .line 328
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
