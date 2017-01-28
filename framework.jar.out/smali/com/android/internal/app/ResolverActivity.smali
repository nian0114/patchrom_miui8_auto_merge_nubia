.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$GridViewAdapter;,
        Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final CHECKED_POSTION_KEY:Ljava/lang/String; = "checked_postion_key_"

.field private static final DEBUG:Z = false

.field private static final RESOLVERACTIVITY_PRE_NAME:Ljava/lang/String; = "ResolverActivity_pre_name_"

.field private static final SHARED_SORT:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.sort"

.field protected static final SHARE_TITLE_KEY:Ljava/lang/String; = "resolver_activity_title"

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field final COLUMN_NUMBER:I

.field final EXTEND_TEXT_LIMIT:I

.field final PAGE_NUMBER:I

.field final ROW_NUMBER:I

.field final VIEWPAGER_ITEM_NUMBER:I

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mIconDpi:I

.field private mIconSize:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mMoreDisplayFlag:Z

.field mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mResolverTitle:Landroid/widget/TextView;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/app/NubiaResolverController;

    invoke-direct {v0}, Lcom/android/internal/app/NubiaResolverController;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->PAGE_NUMBER:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->COLUMN_NUMBER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->ROW_NUMBER:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTEND_TEXT_LIMIT:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->VIEWPAGER_ITEM_NUMBER:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mMoreDisplayFlag:Z

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mMoreDisplayFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mMoreDisplayFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method private checkDefaultHome()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_home"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultHomePkg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->makePackageHome(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReferrerPackageNameSafely()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0    # "referrer":Landroid/net/Uri;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasManagedProfile()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->hasManagedProfile()Z

    move-result v0

    return v0
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .prologue
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean v1, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cmx/cmplus/ISmartContainerManager;->processIntentForClone(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private makePackageHome(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    new-instance v7, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v7, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v7, "mHomeFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x10000

    invoke-virtual {v9, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .local v2, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v6, v11, [Landroid/content/ComponentName;

    .local v6, "mHomeComponentSet":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, "name":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v4, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v6, v3

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v8, Landroid/content/ComponentName;

    .end local v8    # "name":Landroid/content/ComponentName;
    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v8    # "name":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    if-eqz v8, :cond_0

    const/high16 v10, 0x100000

    invoke-virtual {v9, v7, v10, v6, v8}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/4 v10, 0x1

    goto :goto_0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/NubiaResolverController;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 22
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v11, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    iput-object v4, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-eqz p4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v4}, Lcom/android/internal/app/NubiaResolverController;->getUnfilteredCount()I

    move-result v14

    .local v14, "count":I
    const/4 v4, 0x1

    if-le v14, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x3030023

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v4, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x30d0059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v4, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x30d0058

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mResolverTitle:Landroid/widget/TextView;

    iget-object v4, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x30d005a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lnubia/widget/HorizontalPageIndicator;

    .local v17, "indicator":Lnubia/widget/HorizontalPageIndicator;
    iget-object v4, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x30d005b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .local v15, "divider":Landroid/view/View;
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lnubia/widget/HorizontalPageIndicator;->setParent(Lcom/android/internal/widget/ViewPager;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lnubia/widget/HorizontalPageIndicator;->setDivider(Landroid/view/View;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lnubia/widget/HorizontalPageIndicator;->setPageCount(II)V

    new-instance v19, Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;-><init>(Lcom/android/internal/app/ResolverActivity;Lnubia/widget/HorizontalPageIndicator;)V

    .local v19, "pageChangeListener":Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .end local v15    # "divider":Landroid/view/View;
    .end local v17    # "indicator":Lnubia/widget/HorizontalPageIndicator;
    .end local v19    # "pageChangeListener":Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/app/ResolverActivity;->dip2px(Landroid/content/Context;F)I

    move-result v21

    .local v21, "top":I
    const/high16 v4, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/app/ResolverActivity;->dip2px(Landroid/content/Context;F)I

    move-result v18

    .local v18, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->getViewPagerHeight()I

    move-result v4

    add-int v16, v4, v21

    .local v16, "height":I
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v20, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->notifyDataSetChanged()V

    if-eqz p4, :cond_6

    const v4, 0x30d005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .local v13, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v13, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v4, 0x30d005d

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const v4, 0x30d005e

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .end local v13    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/app/NubiaResolverController;->setAlwaysUseOption(Z)V

    .end local v16    # "height":I
    .end local v18    # "left":I
    .end local v20    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "top":I
    :goto_3
    return-void

    .end local v14    # "count":I
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .restart local v14    # "count":I
    :cond_3
    const/4 v4, 0x1

    if-ne v14, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/NubiaResolverController;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040369

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local v13    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v16    # "height":I
    .restart local v18    # "left":I
    .restart local v20    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "top":I
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto :goto_2

    .end local v13    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_6
    const v4, 0x30d005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .local v12, "buttonCancel":Landroid/widget/Button;
    if-eqz v12, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;"
        }
    .end annotation

    .prologue
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    return-object v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/NubiaResolverController;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRealPosition(Landroid/widget/AdapterView;I)I
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "parentPos":I
    mul-int/lit8 v2, v0, 0x8

    add-int v1, v2, p2

    .local v1, "result":I
    return v1
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/NubiaResolverController;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v2}, Lcom/android/internal/app/NubiaResolverController;->hasFilteredItem()Z

    move-result v0

    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "named":Z
    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v5}, Lcom/android/internal/app/NubiaResolverController;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, "id":I
    const v2, 0x30d005f

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->readCheckedPosFromSharedPreferences()I

    move-result v1

    .local v1, "pos":I
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_1

    .end local v1    # "pos":I
    :goto_0
    const v2, 0x30d005d

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->dismiss()V

    return-void

    .restart local v1    # "pos":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v2}, Lcom/android/internal/app/NubiaResolverController;->getFilteredPosition()I

    move-result v1

    goto :goto_0

    .end local v1    # "pos":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/content/Intent;->mCloneExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    const v3, 0x30e000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->checkDefaultHome()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v3, p0, v4, p5, v5}, Lcom/android/internal/app/NubiaResolverController;->init(Landroid/app/Activity;Ljava/util/ArrayList;[Landroid/content/Intent;I)V

    sget-boolean v3, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageNameSafely()Ljava/lang/String;

    move-result-object v2

    .local v2, "referrerPackage":Ljava/lang/String;
    :goto_2
    if-nez p3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_4
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p5, p6, p7}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    goto :goto_0

    .end local v2    # "referrerPackage":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "referrerPackage":Ljava/lang/String;
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->handlePackagesChanged()V

    return-void
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/NubiaResolverController;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    return v0
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected readCheckedPosFromSharedPreferences()I
    .locals 3

    .prologue
    const-string v1, "ResolverActivity_pre_name_"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "sh":Landroid/content/SharedPreferences;
    const-string v1, "checked_postion_key_"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    return-void
.end method

.method saveDisplayListSort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->saveDisplayListSort(Ljava/util/List;)V

    return-void
.end method

.method sendVoiceChoicesIfNeeded()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v3}, Lcom/android/internal/app/NubiaResolverController;->getDisplayInfoCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/NubiaResolverController;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_0
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->setAdditionalTargets([Landroid/content/Intent;)V

    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 1
    .param p1, "safeForwarding"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->setSafeForwardingMode(Z)V

    return-void
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->shouldGetActivityMetadata()Z

    move-result v0

    return v0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/NubiaResolverController;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method startSelected(IZZ)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/NubiaResolverController;->startSelected(IZZ)V

    return-void
.end method

.method protected writeCheckedPosToSharedPreferences(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const-string v2, "ResolverActivity_pre_name_"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "checked_postion_key_"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
