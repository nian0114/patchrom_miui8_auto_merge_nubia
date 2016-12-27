.class public Lcom/android/settings_ex/notification/NubiaNotificationAppList;
.super Landroid/app/ListFragment;
.source "NubiaNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;,
        Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;,
        Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;,
        Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;,
        Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private static removeNotificationApp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

.field private mBackend:Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "NNotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->DEBUG:Z

    .line 62
    new-instance v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->removeNotificationApp:Ljava/util/HashSet;

    .line 212
    new-instance v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

    .line 309
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/notification/NubiaNotificationAppList;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;
    .param p1, "x1"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->removeNotificationApp:Ljava/util/HashSet;

    return-object v0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

    .prologue
    .line 198
    new-instance v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;-><init>()V

    .line 199
    .local v0, "row":Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    .line 200
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->uid:I

    .line 202
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->priority:Z

    .line 209
    return-object v0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NNotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    new-instance v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;-><init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList;Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    new-instance v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;-><init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c09fb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->cancel(Z)Z

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 110
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 99
    return-void
.end method
