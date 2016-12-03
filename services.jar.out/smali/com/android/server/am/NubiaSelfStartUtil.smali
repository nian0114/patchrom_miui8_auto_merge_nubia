.class Lcom/android/server/am/NubiaSelfStartUtil;
.super Ljava/lang/Object;
.source "NubiaSelfStartUtil.java"


# static fields
.field private static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field private static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field private static final APPWIDGET_ACTION:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_"

.field protected static final BIND_SERVICE:Ljava/lang/String; = "bindServiceLocked"

.field private static final CLOSE_STATUS:I = 0x1

.field private static final COLUMN_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final COLUMN_DATE:Ljava/lang/String; = "date"

.field private static final COLUMN_MAX_NUM:Ljava/lang/String; = "max_num"

.field private static final COLUMN_NUM:Ljava/lang/String; = "num"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field protected static final CONTENT_PROVIDER:Ljava/lang/String; = "ContentProviderImpl"

.field private static final CONTENT_URI_SELFSTART:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final DEFAULT_STATUS:I = 0x0

.field private static final INTERNAL_BUILD_ID:Ljava/lang/String; = "ro.build.internal.id"

.field protected static final JOB_SCHEDULER:Ljava/lang/String; = "JobScheduler"

.field private static final OPEN_STATUS:I = 0x2

.field protected static final RESTART_SERVICE:Ljava/lang/String; = "killServicesLocked"

.field protected static final START_SERVICE:Ljava/lang/String; = "startServiceLocked"

.field protected static final SYNC_MANAGER:Ljava/lang/String; = "SyncManager"

.field private static final TAG:Ljava/lang/String; = "NubiaSelfStartUtil"

.field private static final sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;


# instance fields
.field private final mBindListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBlackListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallerListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstBoot:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsInternationVersion:Ljava/lang/Boolean;

.field private final mLimitListPkgNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNBSecurityExist:Ljava/lang/Boolean;

.field private final mProtectListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStartServiceListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWhiteListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://selfstart_provider/selfstart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    .line 34
    const-string v0, "content://selfstart_provider/protection_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    .line 36
    const-string v0, "content://selfstart_provider/black_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    .line 38
    const-string v0, "content://selfstart_provider/limit_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 40
    const-string v0, "content://selfstart_provider/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 42
    const-string v0, "content://selfstart_provider/bind_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    .line 44
    const-string v0, "content://selfstart_provider/caller_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    .line 46
    const-string v0, "content://selfstart_provider/startservice_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    .line 48
    const-string v0, "content://selfstart_provider/provider_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    .line 96
    new-instance v0, Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {v0}, Lcom/android/server/am/NubiaSelfStartUtil;-><init>()V

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setStartServiceListPkgNames()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setContentProviderListPkgNames()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setLimitListPkgNames()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setProtectionListPkgNames()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBlackListPkgNames()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBindListPkgNames()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setCallerListPkgNames()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method private addWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$9;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    return-void
.end method

.method private addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 334
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 339
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "package_name"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v4, "class_name"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private buildType()V
    .locals 4

    .prologue
    .line 1049
    const-string v1, "ro.build.internal.id"

    const-string v2, "UNKNOWN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "internalVersion":Ljava/lang/String;
    const-string v1, "_Z0_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    .line 1052
    const-string v1, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsInternationVersion=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return-void

    .line 1050
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkNBSecurity()V
    .locals 4

    .prologue
    .line 1019
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1020
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/nubia_NBSecurity2"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const-string v3, "cn.nubia.security2"

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    .line 1026
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    const-string v1, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNBSecurityExist=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void

    .line 1026
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 352
    const/4 v2, -0x1

    .line 353
    .local v2, "result":I
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    move v3, v2

    .line 367
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 356
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 357
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 358
    .local v6, "uri":Landroid/net/Uri;
    const-string v4, "package_name=? and class_name=?"

    .line 359
    .local v4, "selection":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    aput-object p2, v5, v7

    .line 360
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v0, v6, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    move v3, v2

    .line 367
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 363
    .end local v3    # "result":I
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "result":I
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getBindListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 977
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 979
    return-object v5
.end method

.method private getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 965
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 966
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 967
    return-object v5
.end method

.method private getCPPermittedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v1, " from contentprovider autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCallerListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 983
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 984
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 985
    return-object v5
.end method

.method private getContentProviderListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 995
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 996
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 997
    return-object v5
.end method

.method private getForbidStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "offer"    # Ljava/lang/String;

    .prologue
    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Not allow packageName=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->getOfferStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, " autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/NubiaSelfStartUtil;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    return-object v0
.end method

.method private getLimitListPkgNames(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1002
    .local v0, "resultHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 1003
    return-object v0
.end method

.method private getOfferStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "offer"    # Ljava/lang/String;

    .prologue
    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 862
    const-string v1, " from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 845
    :sswitch_0
    const-string v2, "startServiceLocked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "bindServiceLocked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "JobScheduler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "SyncManager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "killServicesLocked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 847
    :pswitch_0
    const-string v1, " from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 850
    :pswitch_1
    const-string v1, " from bindservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 853
    :pswitch_2
    const-string v1, " from jobscheduler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 856
    :pswitch_3
    const-string v1, " from syncmanager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 859
    :pswitch_4
    const-string v1, " from restartservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 845
    :sswitch_data_0
    .sparse-switch
        -0x7c4b43fa -> :sswitch_4
        -0x45818262 -> :sswitch_2
        -0x1b011f1e -> :sswitch_1
        0x335a2072 -> :sswitch_3
        0x573464dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v1, " from broadcast Intent{act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 882
    const-string v1, "} autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "offer"    # Ljava/lang/String;

    .prologue
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->getOfferStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string v1, " autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProtectionListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 959
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 960
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 961
    return-object v5
.end method

.method private getStartServiceListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 989
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 990
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 991
    return-object v5
.end method

.method private getTodayZeroTime()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 421
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 422
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 423
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 424
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 426
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 427
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 428
    .local v2, "time":J
    return-wide v2
.end method

.method private getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const-string v3, "status=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 182
    return-object v5
.end method

.method private getWidgetListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 972
    .local v0, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->loadWidgetMapFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 973
    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 472
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaSelfStartUtil"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 473
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 474
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    .line 475
    return-void
.end method

.method private isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1033
    const/4 v1, 0x0

    .line 1035
    .local v1, "isInstall":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1036
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1038
    .local v0, "apkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 1041
    :cond_1
    const/4 v1, 0x1

    .line 1045
    .end local v0    # "apkInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    return v1

    .line 1043
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isAuthorityAllow(Ljava/lang/String;)Z
    .locals 9
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 593
    const/4 v5, 0x0

    .line 594
    .local v5, "result":Z
    if-eqz p1, :cond_2

    .line 595
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "authorities":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 597
    .local v1, "auth":Ljava/lang/String;
    const-string v6, "browser"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.browser"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.accounts.cts.unaffiliated.authenticators.provider"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v5, 0x1

    .line 600
    :goto_1
    if-eqz v5, :cond_4

    .line 605
    .end local v1    # "auth":Ljava/lang/String;
    :cond_1
    const-string v6, "NubiaSelfStartUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "authority=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "authorities":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return v5

    .line 597
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "auth":Ljava/lang/String;
    .restart local v2    # "authorities":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 596
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    const/4 v0, 0x0

    .line 821
    :cond_0
    :goto_0
    monitor-exit v2

    .line 822
    return v0

    .line 810
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.cts."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.tests."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.accounts.cts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.compatibility.common.deviceinfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.jobscheduler.cts.deviceside"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInBindList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x0

    monitor-exit v1

    .line 688
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInProtectList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInternalVersion()Z
    .locals 2

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLimited(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 694
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v4

    .line 695
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 697
    .local v1, "time":I
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 698
    .local v0, "count":[Ljava/lang/Integer;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 699
    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 700
    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 701
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {p0, v2, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    :goto_0
    const-string v2, "NubiaSelfStartUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLimitListPkgNames=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[0]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[1]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[2]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v0    # "count":[Ljava/lang/Integer;
    .end local v1    # "time":I
    :cond_0
    monitor-exit v4

    move v2, v3

    .line 720
    :goto_1
    return v2

    .line 704
    .restart local v0    # "count":[Ljava/lang/Integer;
    .restart local v1    # "time":I
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 705
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 706
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {p0, v2, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 719
    .end local v0    # "count":[Ljava/lang/Integer;
    .end local v1    # "time":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 709
    .restart local v0    # "count":[Ljava/lang/Integer;
    .restart local v1    # "time":I
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private isNBSecurityExist()Z
    .locals 2

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1008
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1009
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRootOrShell(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 801
    if-eqz p1, :cond_0

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWidget(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 499
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.appwidget.action.APPWIDGET_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const/4 v1, 0x1

    .line 505
    .end local v0    # "intentAction":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 16
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    const-string v9, "package_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 402
    .local v8, "packageNameIndex":I
    const-string v9, "num"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 403
    .local v6, "numIndex":I
    const-string v9, "max_num"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 404
    .local v4, "maxNumIndex":I
    const-string v9, "date"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 405
    .local v2, "dateIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v10

    .line 406
    .local v10, "time":J
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 407
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 409
    .local v3, "maxNum":I
    const/4 v5, 0x0

    .line 410
    .local v5, "num":I
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-nez v9, :cond_0

    .line 411
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 415
    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 413
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v12}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 418
    .end local v3    # "maxNum":I
    .end local v5    # "num":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 373
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 374
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "num"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "max_num"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    .line 376
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 380
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 382
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 383
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 384
    invoke-direct {p0, p2, v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_2
    if-eqz v6, :cond_0

    .line 391
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v7

    .line 393
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 387
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    if-eqz v6, :cond_0

    .line 391
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 392
    :catch_2
    move-exception v7

    .line 393
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 391
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 394
    :cond_3
    :goto_1
    throw v3

    .line 392
    :catch_3
    move-exception v7

    .line 393
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "package_name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "class_name"

    aput-object v4, v3, v2

    .line 189
    .local v3, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 193
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 195
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 196
    if-eqz v9, :cond_3

    .line 197
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 198
    .local v13, "sum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_3

    .line 199
    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 200
    const-string v2, "package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 202
    .local v12, "packageName":Ljava/lang/String;
    const-string v2, "class_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "className":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 210
    .local v8, "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    move-object/from16 v0, p5

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 208
    .end local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_2

    .line 217
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "sum":I
    :cond_3
    if-eqz v9, :cond_0

    .line 219
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v10

    .line 221
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 215
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    if-eqz v9, :cond_0

    .line 219
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 220
    :catch_2
    move-exception v10

    .line 221
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 219
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    :cond_4
    :goto_3
    throw v2

    .line 220
    :catch_3
    move-exception v10

    .line 221
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 229
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v2, v3

    .line 230
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 236
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    if-eqz v6, :cond_2

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 239
    .local v9, "sum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 240
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 241
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 247
    .end local v8    # "i":I
    .end local v9    # "sum":I
    :cond_2
    if-eqz v6, :cond_0

    .line 249
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v7

    .line 251
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 245
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    if-eqz v6, :cond_0

    .line 249
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 250
    :catch_2
    move-exception v7

    .line 251
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 249
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 252
    :cond_3
    :goto_2
    throw v1

    .line 250
    :catch_3
    move-exception v7

    .line 251
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private loadWidgetFromCursor(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const-string v5, "package_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 287
    .local v3, "packageNameIndex":I
    const-string v5, "class_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "classNameIndex":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 293
    .local v2, "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    .end local v2    # "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 296
    .restart local v2    # "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadWidgetMapFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 260
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "class_name"

    aput-object v4, v2, v3

    .line 262
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 266
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 268
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 270
    invoke-direct {p0, p2, v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadWidgetFromCursor(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_2
    if-eqz v6, :cond_0

    .line 277
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v7

    .line 279
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 273
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v6, :cond_0

    .line 277
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 278
    :catch_2
    move-exception v7

    .line 279
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 277
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 280
    :cond_3
    :goto_1
    throw v3

    .line 278
    :catch_3
    move-exception v7

    .line 279
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private onWidgetDisabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 770
    .local v0, "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 772
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->removeWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .end local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private onWidgetEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 755
    .local v0, "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 760
    .end local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 761
    .restart local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$10;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void
.end method

.method private setBindListPkgNames()V
    .locals 3

    .prologue
    .line 919
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getBindListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 920
    .local v0, "bindListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v2

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 922
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 923
    monitor-exit v2

    .line 924
    return-void

    .line 923
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setBlackListPkgNames()V
    .locals 3

    .prologue
    .line 903
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 904
    .local v0, "blackPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 905
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 906
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 907
    monitor-exit v2

    .line 908
    return-void

    .line 907
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCallerListPkgNames()V
    .locals 3

    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getCallerListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 928
    .local v0, "callerPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 930
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 931
    monitor-exit v2

    .line 932
    return-void

    .line 931
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setContentProviderListPkgNames()V
    .locals 3

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getContentProviderListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 944
    .local v0, "contentProviderListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    monitor-enter v2

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 946
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 947
    monitor-exit v2

    .line 948
    return-void

    .line 947
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setLimitListPkgNames()V
    .locals 3

    .prologue
    .line 951
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getLimitListPkgNames(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 952
    .local v0, "limitListPkgNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v2

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 954
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 955
    monitor-exit v2

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setProtectionListPkgNames()V
    .locals 3

    .prologue
    .line 895
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getProtectionListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 896
    .local v0, "protectionPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 898
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 899
    monitor-exit v2

    .line 900
    return-void

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStartServiceListPkgNames()V
    .locals 3

    .prologue
    .line 935
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getStartServiceListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 936
    .local v0, "startServiceListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    monitor-enter v2

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 938
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 939
    monitor-exit v2

    .line 940
    return-void

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWhiteListPkgNames()V
    .locals 3

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 888
    .local v0, "allowedPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 890
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 891
    monitor-exit v2

    .line 892
    return-void

    .line 891
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWidgetListPkgNames()V
    .locals 3

    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getWidgetListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 912
    .local v0, "widgetPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v2

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 914
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 915
    monitor-exit v2

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Integer;

    .prologue
    .line 433
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 434
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "package_name=? "

    .line 435
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    .line 436
    .local v3, "selectionArgs":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 440
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v4

    .line 442
    .local v4, "time":J
    const-string v8, "num"

    invoke-virtual {v1, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string v8, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    :try_start_0
    invoke-virtual {v0, v6, v1, v7, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 303
    const/4 v8, 0x0

    .line 304
    .local v8, "result":Z
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    move v9, v8

    .line 330
    .end local v8    # "result":Z
    .local v9, "result":I
    :goto_0
    return v9

    .line 307
    .end local v9    # "result":I
    .restart local v8    # "result":Z
    :cond_0
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 308
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v12, [Ljava/lang/String;

    const-string v5, "package_name"

    aput-object v5, v2, v10

    const-string v5, "class_name"

    aput-object v5, v2, v11

    .line 310
    .local v2, "selections":[Ljava/lang/String;
    const-string v3, "package_name=? and class_name=?"

    .line 311
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v11

    .line 312
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 315
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    .line 317
    const/4 v8, 0x1

    .line 322
    :cond_1
    if-eqz v6, :cond_2

    .line 324
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v9, v8

    .line 330
    .restart local v9    # "result":I
    goto :goto_0

    .line 325
    .end local v9    # "result":I
    :catch_0
    move-exception v7

    .line 326
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 319
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 320
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    if-eqz v6, :cond_2

    .line 324
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 325
    :catch_2
    move-exception v7

    .line 326
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 322
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_3

    .line 324
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 327
    :cond_3
    :goto_2
    throw v5

    .line 325
    :catch_3
    move-exception v7

    .line 326
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method countWidget(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 730
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 750
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "className":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v4

    .line 744
    :try_start_0
    const-string v3, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 745
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->onWidgetEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 746
    :cond_4
    :try_start_1
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 747
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->onWidgetDisabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method firstBootGetAllowPkgNames()V
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 454
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->buildType()V

    .line 455
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->checkNBSecurity()V

    .line 456
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->initHandler()V

    .line 458
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    .line 459
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setProtectionListPkgNames()V

    .line 460
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBlackListPkgNames()V

    .line 461
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWidgetListPkgNames()V

    .line 462
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBindListPkgNames()V

    .line 463
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setCallerListPkgNames()V

    .line 464
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setStartServiceListPkgNames()V

    .line 465
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setContentProviderListPkgNames()V

    .line 466
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setLimitListPkgNames()V

    .line 469
    :cond_0
    return-void
.end method

.method initContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 176
    return-void
.end method

.method public isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;I)Z
    .locals 6
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-nez v3, :cond_2

    .line 529
    :cond_0
    const/4 v2, 0x1

    .line 546
    :cond_1
    :goto_0
    return v2

    .line 531
    :cond_2
    const/4 v2, 0x0

    .line 532
    .local v2, "result":Z
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 533
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInBindList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 538
    :cond_5
    const/4 v2, 0x1

    .line 540
    :cond_6
    if-eqz v2, :cond_7

    .line 541
    const-string v3, "NubiaSelfStartUtil"

    const-string v4, "bindServiceLocked"

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_7
    if-nez v2, :cond_1

    .line 543
    const-string v3, "NubiaSelfStartUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allow packageName=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from bind service autostart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "callingUid"    # I
    .param p3, "offer"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-nez v2, :cond_2

    .line 510
    :cond_0
    const/4 v1, 0x1

    .line 524
    :cond_1
    :goto_0
    return v1

    .line 512
    :cond_2
    const/4 v1, 0x0

    .line 513
    .local v1, "result":Z
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 514
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 517
    :cond_5
    const/4 v1, 0x1

    .line 519
    :cond_6
    if-eqz v1, :cond_7

    .line 520
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_7
    if-nez v1, :cond_1

    .line 522
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->getForbidStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-nez v2, :cond_2

    .line 480
    :cond_0
    const/4 v1, 0x1

    .line 495
    :cond_1
    :goto_0
    return v1

    .line 482
    :cond_2
    const/4 v1, 0x0

    .line 483
    .local v1, "result":Z
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 484
    .local v0, "packageName":Ljava/lang/String;
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 488
    :cond_5
    const/4 v1, 0x1

    .line 490
    :cond_6
    if-eqz v1, :cond_7

    .line 491
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :cond_7
    if-nez v1, :cond_1

    .line 493
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " R=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAllowedSelfStartPkg(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingUid"    # I

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-nez v2, :cond_2

    .line 552
    :cond_0
    const/4 v1, 0x1

    .line 567
    :cond_1
    :goto_0
    return v1

    .line 554
    :cond_2
    const/4 v1, 0x0

    .line 555
    .local v1, "result":Z
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 556
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isAuthorityAllow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 559
    :cond_5
    const/4 v1, 0x1

    .line 561
    :cond_6
    if-eqz v1, :cond_7

    .line 562
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getCPPermittedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :cond_7
    if-nez v1, :cond_1

    .line 564
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from contentProvider autostart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAllowedServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x1

    .line 571
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 572
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v12, "killServicesLocked"

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v0

    .line 573
    .local v0, "allow":Z
    if-eqz v0, :cond_0

    .line 589
    .end local v0    # "allow":Z
    :goto_1
    return v9

    .line 571
    .restart local v0    # "allow":Z
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "allow":Z
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 578
    .local v8, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "conni":I
    :goto_2
    if-ltz v4, :cond_2

    .line 579
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 580
    .local v3, "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 581
    .local v2, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v10, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 582
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_3

    .line 583
    const-string v10, "NubiaSelfStartUtil"

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v12, "killServicesLocked"

    invoke-direct {p0, v11, v12}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 578
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 589
    .end local v3    # "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "conni":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method isInCallerList(I)Z
    .locals 8
    .param p1, "callerUid"    # I

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v7

    if-nez v7, :cond_2

    .line 619
    :cond_0
    const/4 v6, 0x1

    .line 638
    :cond_1
    :goto_0
    return v6

    .line 621
    :cond_2
    const/4 v6, 0x0

    .line 622
    .local v6, "result":Z
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_1

    .line 624
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "callerPkgList":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 627
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 628
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 629
    const/4 v6, 0x1

    .line 630
    goto :goto_0

    .line 627
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 634
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "callerPkgList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 635
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method isInContentProviderList(Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-nez v3, :cond_2

    .line 662
    :cond_0
    const/4 v2, 0x1

    .line 674
    :cond_1
    :goto_0
    return v2

    .line 664
    :cond_2
    const/4 v2, 0x0

    .line 665
    .local v2, "result":Z
    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 666
    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 667
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 669
    const/4 v2, 0x0

    goto :goto_0

    .line 671
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method isInStartServiceList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-nez v3, :cond_2

    .line 643
    :cond_0
    const/4 v2, 0x1

    .line 657
    :cond_1
    :goto_0
    return v2

    .line 645
    :cond_2
    const/4 v2, 0x0

    .line 646
    .local v2, "result":Z
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 647
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 648
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 650
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 651
    const/4 v2, 0x0

    goto :goto_0

    .line 653
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method registerSelfStartObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 105
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$1;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$2;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$3;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$4;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$5;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$6;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$6;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$7;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$7;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$8;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$8;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method
