.class public Lcom/android/settings_ex/applications/DefaultAppManager;
.super Ljava/lang/Object;
.source "DefaultAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/DefaultAppManager$3;,
        Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;,
        Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;,
        Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;,
        Lcom/android/settings_ex/applications/DefaultAppManager$AppType;
    }
.end annotation


# static fields
.field public static APP_TYPE:Ljava/lang/String;

.field private static final DEBUG:Z

.field public static SYSTEM_APP_TYPE:[Ljava/lang/String;

.field private static final SYSTEM_DEFAULT_APPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final SYSTEM_DEFAULT_APPS_ALIAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field private mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIntentResolveinfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default_home"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "default_message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "default_browser"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "default_camera"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "default_gallery"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "default_music"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "default_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "default_videoPlayer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "default_document"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppManager$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    .line 142
    const-string v0, "AppType"

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->APP_TYPE:Ljava/lang/String;

    .line 143
    const-string v0, "DefaultAppManager"

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appType"    # Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/DefaultAppManager$2;-><init>(Lcom/android/settings_ex/applications/DefaultAppManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS_ALIAS:Ljava/util/Map;

    .line 150
    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    .line 151
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->init()V

    .line 153
    return-void
.end method

.method private ensureDefaultsRemained(Ljava/util/Map;Landroid/content/ComponentName;Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;)V
    .locals 8
    .param p2, "preDefault"    # Landroid/content/ComponentName;
    .param p3, "intentPara"    # Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
            "Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 983
    :cond_0
    return-void

    .line 976
    :cond_1
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 977
    .local v0, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 978
    .local v6, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 980
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 981
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;

    iget-object v2, v1, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;

    iget-object v3, v1, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;->name:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object v1, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/applications/DefaultAppManager;->setDefaultApp(Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    goto :goto_0
.end method

.method private getDefaultAppComponentName(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 279
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v3, v4, :cond_1

    .line 280
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    const v3, 0x10040

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 284
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 285
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private getPreferedAppInfo(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
            "Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    .local p1, "matchedTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 930
    :cond_0
    const/4 v5, 0x0

    .line 953
    :cond_1
    return-object v5

    .line 932
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 933
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;>;"
    new-instance v4, Lcom/android/settings_ex/applications/DefaultAppManager;

    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-direct {v4, v6, v7}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 934
    .local v4, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 935
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_3

    .line 936
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 937
    invoke-virtual {v4}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 938
    .local v0, "defName":Landroid/content/ComponentName;
    if-nez v0, :cond_4

    .line 934
    .end local v0    # "defName":Landroid/content/ComponentName;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    .restart local v0    # "defName":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {v4}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateAppInfo()Ljava/util/List;

    move-result-object v1

    .line 942
    .local v1, "disRiList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 945
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 946
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v6, v6, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 947
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v6, v6, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-direct {v8, p0, v6, v0}, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;-><init>(Lcom/android/settings_ex/applications/DefaultAppManager;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 945
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private handelDefaultSelected(Landroid/content/pm/ResolveInfo;Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 29
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intentPara"    # Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "preDefault"    # Landroid/content/ComponentName;
    .param p5, "clearPackagePrefer"    # Z

    .prologue
    .line 469
    invoke-virtual/range {p2 .. p2}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v14

    .line 470
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mIntentResolveinfoMap:Ljava/util/Map;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateAppInfo()Ljava/util/List;

    .line 474
    :cond_0
    const/4 v15, 0x0

    .line 475
    .local v15, "mOrigResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mIntentResolveinfoMap:Ljava/util/Map;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mIntentResolveinfoMap:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "mOrigResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    check-cast v15, Ljava/util/List;

    .line 479
    .restart local v15    # "mOrigResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    if-nez p1, :cond_2

    .line 480
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_2

    .line 481
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 482
    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v23, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 484
    move-object/from16 p1, v23

    .line 490
    .end local v12    # "i":I
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz v15, :cond_13

    if-eqz p1, :cond_13

    .line 492
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 494
    .local v11, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_3

    .line 495
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    :cond_3
    invoke-virtual {v14}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 498
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_5

    .line 499
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 500
    .local v7, "cat":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 480
    .end local v7    # "cat":Ljava/lang/String;
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v12    # "i":I
    .restart local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 503
    .end local v12    # "i":I
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    :cond_5
    const-string v26, "android.intent.category.DEFAULT"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v26, v0

    const/high16 v27, 0xfff0000

    and-int v7, v26, v27

    .line 506
    .local v7, "cat":I
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 507
    .local v9, "data":Landroid/net/Uri;
    const/high16 v26, 0x600000

    move/from16 v0, v26

    if-ne v7, v0, :cond_6

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 509
    .local v16, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 511
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v16    # "mimeType":Ljava/lang/String;
    :cond_6
    :goto_2
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_e

    .line 522
    const/high16 v26, 0x600000

    move/from16 v0, v26

    if-ne v7, v0, :cond_7

    const-string v26, "file"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    const-string v26, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 525
    :cond_7
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v18

    .line 530
    .local v18, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v18, :cond_a

    .line 531
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v25

    .line 532
    .local v25, "ssp":Ljava/lang/String;
    sget-boolean v26, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v26, :cond_8

    sget-object v26, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "data.getSchemeSpecificPart() : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_8
    if-eqz v25, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 534
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PatternMatcher;

    .line 535
    .local v17, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 536
    sget-boolean v26, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v26, :cond_9

    sget-object v26, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PatternMatcher : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getType()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getType()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 542
    .end local v17    # "p":Landroid/os/PatternMatcher;
    .end local v25    # "ssp":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 543
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_c

    .line 544
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 545
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 546
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v26

    if-ltz v26, :cond_b

    .line 547
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v21

    .line 548
    .local v21, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v27

    if-ltz v21, :cond_10

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-boolean v26, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v26, :cond_c

    sget-object v26, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "AuthorityEntry : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v21    # "port":I
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v18

    .line 556
    if-eqz v18, :cond_e

    .line 557
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 558
    .local v19, "path":Ljava/lang/String;
    sget-boolean v26, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v26, :cond_d

    sget-object v26, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "data.getPath() : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_d
    if-eqz v19, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 560
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PatternMatcher;

    .line 561
    .restart local v17    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 562
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getType()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 570
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v17    # "p":Landroid/os/PatternMatcher;
    .end local v18    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v19    # "path":Ljava/lang/String;
    :cond_e
    if-eqz v11, :cond_13

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 572
    .local v20, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    .line 573
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v24, v0

    .line 574
    .local v24, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 575
    .local v6, "bestMatch":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    if-ge v12, v3, :cond_11

    .line 576
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 577
    .local v22, "r":Landroid/content/pm/ResolveInfo;
    sget-object v27, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "handleDefaultSelect mOrigResolveList.get("

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ") : "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v26, v24, v12

    .line 580
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v6, :cond_f

    move-object/from16 v0, v22

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 575
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 512
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v12    # "i":I
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "r":Landroid/content/pm/ResolveInfo;
    .end local v24    # "set":[Landroid/content/ComponentName;
    .restart local v16    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 513
    .local v10, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v26, "ResolverActivity"

    move-object/from16 v0, v26

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 548
    .end local v10    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v16    # "mimeType":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v18    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v21    # "port":I
    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 582
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v18    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v21    # "port":I
    .restart local v3    # "N":I
    .restart local v6    # "bestMatch":I
    .restart local v12    # "i":I
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "set":[Landroid/content/ComponentName;
    :cond_11
    if-eqz p5, :cond_12

    if-eqz p4, :cond_12

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 583
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 585
    :cond_12
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 589
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v7    # "cat":I
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "data":Landroid/net/Uri;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "i":I
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "set":[Landroid/content/ComponentName;
    :cond_13
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->createIntentFromType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->initSystemDefaultApp()V

    .line 159
    return-void
.end method

.method private initSystemDefaultApp()V
    .locals 5

    .prologue
    .line 162
    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    .line 163
    .local v2, "type":Lcom/android/settings_ex/applications/DefaultAppManager$AppType;
    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->isDefaultAppExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS_ALIAS:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "type":Lcom/android/settings_ex/applications/DefaultAppManager$AppType;
    :cond_1
    return-void
.end method

.method private isCandidateHasOtherPrefer(Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .param p1, "candidatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v6, 0x0

    .line 814
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 834
    :goto_0
    return v5

    .line 817
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 818
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 819
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 820
    .local v0, "candidates":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 821
    iget-object v5, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v5, v5, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 822
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 824
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v3, "nameList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v4, p2, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 826
    if-eqz v3, :cond_3

    .line 827
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 828
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 829
    const/4 v5, 0x1

    goto :goto_0

    .line 827
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "candidates":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v1    # "i":I
    .end local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_3
    move v5, v6

    .line 834
    goto :goto_0
.end method

.method private isDefaultAppExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 916
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 924
    :goto_0
    return v2

    .line 919
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 921
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    const/4 v2, 0x1

    goto :goto_0

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isPackageDefault(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 896
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v6, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v3, v6, :cond_1

    .line 897
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 898
    .local v2, "name":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v3, v4

    .line 913
    .end local v2    # "name":Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 902
    .restart local v2    # "name":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 905
    .end local v2    # "name":Landroid/content/ComponentName;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 906
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 907
    .local v0, "defaultComp":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 908
    :cond_2
    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPackageDefault : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 909
    goto :goto_0

    .line 905
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 912
    .end local v0    # "defaultComp":Landroid/content/ComponentName;
    :cond_4
    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPackageDefault : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  true"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 913
    goto :goto_0
.end method

.method private matchDefaultType(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 958
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v2, v5

    .line 969
    :cond_1
    return-object v2

    .line 961
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v2, "matchedTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 964
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v4

    aget-object v4, v4, v0

    if-eq v3, v4, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "DefaultAppManager"

    invoke-virtual {v3, v5, v4, v7, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 965
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 962
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;>;"
    .local p6, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 771
    .local v8, "mPm":Landroid/content/pm/PackageManager;
    sub-int v12, p3, p2

    add-int/lit8 v9, v12, 0x1

    .line 772
    .local v9, "num":I
    const/4 v12, 0x1

    if-ne v9, v12, :cond_1

    .line 773
    new-instance v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p4

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v12, v0, v1, v13, v14}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_0
    return-void

    .line 775
    :cond_1
    const/4 v11, 0x0

    .line 776
    .local v11, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 777
    .local v10, "startApp":Ljava/lang/CharSequence;
    if-nez v10, :cond_2

    .line 778
    const/4 v11, 0x1

    .line 780
    :cond_2
    if-nez v11, :cond_5

    .line 782
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 784
    .local v3, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v4, p2, 0x1

    .local v4, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v4, v0, :cond_4

    .line 786
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v6, v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 787
    .local v6, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 788
    .local v5, "jApp":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 789
    :cond_3
    const/4 v11, 0x1

    .line 796
    .end local v5    # "jApp":Ljava/lang/CharSequence;
    .end local v6    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 798
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v4    # "j":I
    :cond_5
    move/from16 v7, p2

    .local v7, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v7, v0, :cond_0

    .line 799
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v2, v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 800
    .local v2, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v11, :cond_7

    .line 802
    new-instance v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v2, v13, v14, v15}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 792
    .end local v2    # "add":Landroid/content/pm/ResolveInfo;
    .end local v7    # "k":I
    .restart local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v4    # "j":I
    .restart local v5    # "jApp":Ljava/lang/CharSequence;
    .restart local v6    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 805
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v4    # "j":I
    .end local v5    # "jApp":Ljava/lang/CharSequence;
    .end local v6    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "k":I
    :cond_7
    new-instance v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v2, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v2, v13, v14, v15}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 227
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const v6, 0x10040

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 230
    .local v1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    if-lez v0, :cond_3

    .line 232
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 233
    .local v4, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 234
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 235
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    sget-boolean v6, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_1

    iget-boolean v6, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_2

    .line 243
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 245
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 233
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v1
.end method

.method private removeBackupAndCloud(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 452
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 454
    .local v0, "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v2, "cn.nubia.databackup"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.baidu.xcloud"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cn.nubia.flycow"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cn.nubia.zbiglauncher.preset"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 461
    .end local v0    # "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    return-void
.end method

.method private sortAndHandleDuplicateName(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 704
    .local v9, "mPm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "N":I
    if-lez v7, :cond_5

    .line 705
    const/4 v0, 0x1

    if-le v7, v0, :cond_0

    .line 706
    new-instance v10, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;

    invoke-direct {v10, p0, v9}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;-><init>(Lcom/android/settings_ex/applications/DefaultAppManager;Landroid/content/pm/PackageManager;)V

    .line 708
    .local v10, "rComparator":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;
    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 713
    .end local v10    # "rComparator":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayNameComparator;
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v4, v0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 714
    .local v4, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 715
    .local v2, "start":I
    invoke-virtual {v4, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 716
    .local v5, "r0Label":Ljava/lang/CharSequence;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 717
    if-nez v5, :cond_1

    .line 718
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 720
    :cond_1
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v11, v0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 721
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v11, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 722
    .local v12, "riLabel":Ljava/lang/CharSequence;
    if-nez v12, :cond_2

    .line 723
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 725
    :cond_2
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 728
    :cond_3
    add-int/lit8 v3, v8, -0x1

    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/DefaultAppManager;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 729
    move-object v4, v11

    .line 730
    move-object v5, v12

    .line 731
    move v2, v8

    goto :goto_1

    .line 734
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "riLabel":Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v3, v7, -0x1

    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/DefaultAppManager;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 737
    .end local v2    # "start":I
    .end local v4    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v5    # "r0Label":Ljava/lang/CharSequence;
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method public createIntentFromType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V
    .locals 2
    .param p1, "mAppType"    # Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    .prologue
    .line 172
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$3;->$SwitchMap$com$android$settings$applications$DefaultAppManager$AppType:[I

    invoke-virtual {p1}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->homeIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 177
    :pswitch_2
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->phoneIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 182
    :pswitch_3
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->browserIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 185
    :pswitch_4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mFilter:Landroid/content/IntentFilter;

    .line 186
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->cameraIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 189
    :pswitch_5
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->galleryIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 192
    :pswitch_6
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->musicIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 195
    :pswitch_7
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->emailIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 198
    :pswitch_8
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->videoPlayerIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    :pswitch_9
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->documentIntentList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public enSureDefaultIsSet()V
    .locals 7

    .prologue
    .line 868
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "defaultPkgName":Ljava/lang/String;
    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultPkgName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->isPackageDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->isDefaultAppExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 876
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v3, v4, :cond_2

    .line 877
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 880
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateAppInfo()Ljava/util/List;

    .line 881
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 882
    const/4 v2, 0x0

    .line 883
    .local v2, "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 884
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v3, v3, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 885
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    check-cast v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    .line 889
    .restart local v2    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    :cond_3
    if-eqz v2, :cond_0

    .line 890
    iget-object v3, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings_ex/applications/DefaultAppManager;->setDefaultApp(Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 883
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCandidateActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 209
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const v2, 0x10040

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method public getCandidateAppInfo()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 594
    .local v14, "mPm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v22

    .line 597
    .local v22, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->removeBackupAndCloud(Ljava/util/Collection;)V

    .line 598
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 601
    .local v21, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :try_start_0
    new-instance v5, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 602
    .local v5, "appInfo":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    .end local v5    # "appInfo":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    :catch_0
    move-exception v8

    .line 604
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 607
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v21    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    move-object/from16 v27, v0

    .line 696
    .end local v22    # "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    :goto_1
    return-object v27

    .line 609
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/DefaultAppManager;->mIntentResolveinfoMap:Ljava/util/Map;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 611
    .local v7, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v9

    .line 612
    .local v9, "firstResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mIntentResolveinfoMap:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-boolean v27, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v27, :cond_2

    sget-object v28, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "intentList.get(0) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_2
    sget-boolean v27, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v27, :cond_3

    sget-object v27, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mIntentResolveinfoMap.get(0) : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_3
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    .line 617
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_4

    .line 618
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 619
    .local v20, "rf":Landroid/content/pm/ResolveInfo;
    new-instance v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 621
    .local v12, "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    .line 622
    iget-object v0, v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 626
    .end local v12    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    .end local v20    # "rf":Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_a

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v17

    .line 629
    .local v17, "querryIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v19

    .line 630
    .local v19, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mIntentResolveinfoMap:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-boolean v27, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v27, :cond_5

    sget-object v28, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "intentList.get("

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, ") : "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_5
    sget-boolean v27, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v27, :cond_6

    sget-object v27, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mIntentResolveinfoMap.get("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_6
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_9

    .line 634
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 635
    .local v18, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 636
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_8

    .line 633
    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 640
    :cond_8
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 641
    .local v16, "packageName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 642
    .local v6, "className":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v6, v27, v10

    goto :goto_5

    .line 626
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "className":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 648
    .end local v13    # "j":I
    .end local v17    # "querryIntent":Landroid/content/Intent;
    .end local v19    # "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    sget-boolean v27, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v27, :cond_b

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 650
    .restart local v16    # "packageName":Ljava/lang/String;
    sget-object v28, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "candidate packages info before remove: "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 653
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_b
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v24, "systeAppList":Ljava/util/List;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v26, "thirdPartyList":Ljava/util/List;
    new-instance v25, Ljava/util/ArrayList;

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 656
    .local v25, "systemDefault":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    .line 657
    .local v23, "sysDefaultinfo":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    if-eqz v23, :cond_c

    .line 658
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->sortAndHandleDuplicateName(Ljava/util/List;)V

    .line 661
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 662
    .restart local v16    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    .line 663
    .restart local v12    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    invoke-virtual {v12}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->isIncomplete()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 664
    sget-boolean v27, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v27, :cond_e

    .line 665
    sget-object v27, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "info.isIncomplete() : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v10, 0x0

    :goto_8
    iget-object v0, v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_e

    .line 667
    sget-object v27, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "classNames "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "  : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v12, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->classNames:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 670
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 674
    :cond_f
    const/16 v27, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 676
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    if-gtz v27, :cond_10

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 684
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    .line 685
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 680
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_10
    :try_start_2
    sget-object v27, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 689
    .end local v12    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_11
    sget-boolean v27, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v27, :cond_12

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 691
    .restart local v16    # "packageName":Ljava/lang/String;
    sget-object v28, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "candidate packages info after remove: "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->packages:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 694
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->sortAndHandleDuplicateName(Ljava/util/List;)V

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->sortAndHandleDuplicateName(Ljava/util/List;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    move-object/from16 v27, v0

    goto/16 :goto_1
.end method

.method public getDefaultAppComponentName()Landroid/content/ComponentName;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 253
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 254
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v8, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v6, v8, :cond_1

    .line 255
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v6

    const v8, 0x10040

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 259
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 260
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    .line 261
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .restart local v0    # "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 267
    iget-object v6, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v3

    .line 268
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    .line 269
    .local v4, "name":Landroid/content/ComponentName;
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 270
    :cond_2
    sget-object v6, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultAppComponentName name for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v6, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    const-string v8, "getDefaultAppComponentName return null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 272
    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "name":Landroid/content/ComponentName;
    :cond_3
    move-object v0, v7

    .line 264
    goto :goto_0

    .line 266
    .restart local v1    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "name":Landroid/content/ComponentName;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDefaultAppLabel()Ljava/lang/String;
    .locals 11

    .prologue
    const v9, 0x7f0c0e3b

    .line 291
    iget-object v8, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 292
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->hasPreferredApplication()Z

    move-result v8

    if-nez v8, :cond_0

    .line 293
    iget-object v8, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 294
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    .end local v6    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v7

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 298
    .local v4, "name":Landroid/content/ComponentName;
    if-nez v4, :cond_1

    .line 299
    iget-object v8, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 300
    .restart local v6    # "res":Landroid/content/res/Resources;
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "str":Ljava/lang/String;
    goto :goto_0

    .line 303
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "defaultPackageName":Ljava/lang/String;
    sget-object v8, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    iget-object v9, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 305
    sget-boolean v8, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "system default pacakge: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 307
    .restart local v6    # "res":Landroid/content/res/Resources;
    const v8, 0x7f0c0e3a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "str":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v9, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v8, v9, :cond_5

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 314
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 315
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 321
    :cond_5
    :try_start_1
    sget-boolean v8, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    const-string v9, "resolveActivity getDefaultAppLabel"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v8}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v8

    const v9, 0x10040

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 324
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_4

    .line 325
    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    goto/16 :goto_0

    .line 327
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v2

    .line 328
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDefaultAppLabelFast()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 334
    iget-object v7, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 335
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v7}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v7

    const v8, 0x10040

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 337
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/applications/DefaultAppManager;->hasPreferredApplication(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 338
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 339
    .local v5, "res":Landroid/content/res/Resources;
    const v7, 0x7f0c0e3b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
    .end local v5    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 342
    :cond_1
    const/4 v1, 0x0

    .line 343
    .local v1, "defaultPackageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v8, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v7, v8, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 349
    :goto_1
    sget-object v7, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 350
    iget-object v7, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 351
    .restart local v5    # "res":Landroid/content/res/Resources;
    const v7, 0x7f0c0e3a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "str":Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 354
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v8, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v7, v8, :cond_5

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 358
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 359
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 365
    :cond_5
    if-eqz v3, :cond_4

    .line 366
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    goto :goto_0

    .line 368
    :catch_1
    move-exception v2

    .line 369
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final hasPreferredApplication()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 430
    .local v0, "name":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "android"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasPreferredApplication(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 440
    if-nez p1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetToDefault()V
    .locals 7

    .prologue
    .line 839
    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 840
    .local v0, "defaultPackage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->isDefaultAppExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->isPackageDefault(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 844
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 847
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v3, v4, :cond_3

    .line 848
    const-string v3, "cn.nubia.mms"

    iget-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 851
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateAppInfo()Ljava/util/List;

    .line 852
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 853
    const/4 v2, 0x0

    .line 854
    .local v2, "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 855
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v3, v3, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 856
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    check-cast v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    .line 860
    .restart local v2    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    :cond_4
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 861
    iget-object v3, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings_ex/applications/DefaultAppManager;->setDefaultApp(Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 862
    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 854
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setDefaultApp(Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 13
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "preDefault0"    # Landroid/content/ComponentName;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v0, v1, :cond_1

    .line 387
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 427
    :cond_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 391
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 392
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppComponentName(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    .line 394
    .local v4, "preDefault":Landroid/content/ComponentName;
    const/4 v9, 0x1

    .line 395
    .local v9, "isNeedToRemainPreDefaults":Z
    if-eqz v4, :cond_3

    const-string v0, "android"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ResolverActivity"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    :cond_3
    const/4 v9, 0x0

    .line 399
    :cond_4
    const/4 v6, 0x0

    .line 400
    .local v6, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v10, 0x0

    .line 401
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;>;"
    const/4 v8, 0x0

    .line 402
    .local v8, "isCandidateHasOther":Z
    if-eqz v9, :cond_7

    .line 403
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .restart local v6    # "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-nez v4, :cond_11

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v6}, Lcom/android/settings_ex/applications/DefaultAppManager;->isCandidateHasOtherPrefer(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    .line 405
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ly"

    const-string v1, "before getPreferedAppInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_5
    if-eqz v8, :cond_6

    .line 407
    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/DefaultAppManager;->matchDefaultType(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 408
    .local v11, "otherDefaultTypeInCandidate":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;>;"
    invoke-direct {p0, v11}, Lcom/android/settings_ex/applications/DefaultAppManager;->getPreferedAppInfo(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 410
    .end local v11    # "otherDefaultTypeInCandidate":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/DefaultAppManager$AppType;>;"
    :cond_6
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ly"

    const-string v1, "after getPreferedAppInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_7
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_8

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handelDefaultSelected intentList(i) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_8
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResolveInfo  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_9
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_a
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preDefault  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_b
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ly"

    const-string v1, "before handelDefaultSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_c
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/DefaultAppManager;->handelDefaultSelected(Landroid/content/pm/ResolveInfo;Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 419
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "ly"

    const-string v1, "after handelDefaultSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_d
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "ly"

    const-string v1, "before ensureDefaultsRemained"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_e
    if-eqz v8, :cond_f

    if-eqz v9, :cond_f

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    invoke-direct {p0, v10, v4, v0}, Lcom/android/settings_ex/applications/DefaultAppManager;->ensureDefaultsRemained(Ljava/util/Map;Landroid/content/ComponentName;Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;)V

    .line 425
    :cond_f
    sget-boolean v0, Lcom/android/settings_ex/applications/DefaultAppManager;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "ly"

    const-string v1, "after ensureDefaultsRemained"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 404
    :cond_11
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public setDefaultApp(Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "intentPara"    # Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "preDefault"    # Landroid/content/ComponentName;
    .param p5, "clearPackagePrefer"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v0, v1, :cond_0

    .line 377
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateAppInfo()Ljava/util/List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 381
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/DefaultAppManager;->handelDefaultSelected(Landroid/content/pm/ResolveInfo;Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    goto :goto_0
.end method

.method public setDefaultApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "defaultPkgName"    # Ljava/lang/String;

    .prologue
    .line 986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/DefaultAppManager;->isPackageDefault(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/DefaultAppManager;->isDefaultAppExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    if-ne v2, v3, :cond_2

    .line 993
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 996
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->getCandidateAppInfo()Ljava/util/List;

    .line 997
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 998
    const/4 v1, 0x0

    .line 999
    .local v1, "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1000
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    iget-object v2, v2, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1001
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;

    .line 1005
    .restart local v1    # "info":Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;
    :cond_3
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1006
    iget-object v2, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings_ex/applications/DefaultAppManager;->setDefaultApp(Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1007
    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, v1, Lcom/android/settings_ex/applications/DefaultAppManager$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 999
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    .line 465
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultAppManager;->init()V

    .line 466
    return-void
.end method

.method public writeSystemDefaultToDB()V
    .locals 4

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->ordinal()I

    move-result v2

    aget-object v2, v0, v2

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_DEFAULT_APPS:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppManager;->mAppType:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1014
    return-void
.end method
