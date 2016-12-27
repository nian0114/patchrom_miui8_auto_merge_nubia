.class public Lcom/android/settings_ex/dual/DualSupportInstance;
.super Ljava/lang/Object;
.source "DualSupportInstance.java"


# static fields
.field private static supportAppName:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/android/settings_ex/dual/DualSupportInstance$1;

    invoke-direct {v0}, Lcom/android/settings_ex/dual/DualSupportInstance$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dual/DualSupportInstance;->supportAppName:Ljava/util/HashSet;

    return-void
.end method

.method public static getDualSupportPkgName(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v1, "dualSupportPkg":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 48
    .local v5, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 49
    .local v4, "packageInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v6, Lcom/android/settings_ex/dual/DualSupportInstance;->supportAppName:Ljava/util/HashSet;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v1
.end method

.method public static getSupportAppList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dual/DualApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Lcom/android/settings_ex/dual/DualInstanceUtils;

    invoke-direct {v1}, Lcom/android/settings_ex/dual/DualInstanceUtils;-><init>()V

    .line 60
    .local v1, "dualUtils":Lcom/android/settings_ex/dual/DualInstanceUtils;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v4, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dual/DualApplicationInfo;>;"
    new-instance v3, Lcom/android/settings_ex/dual/DualApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0d8f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings_ex/dual/DualApplicationInfo;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "info":Lcom/android/settings_ex/dual/DualApplicationInfo;
    invoke-static {p0}, Lcom/android/settings_ex/dual/DualSupportInstance;->getDualSupportPkgName(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "appInfo":Ljava/lang/String;
    invoke-virtual {v1, v0, p0}, Lcom/android/settings_ex/dual/DualInstanceUtils;->isPackageCloned(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/dual/DualApplicationInfo;->addAppNameData(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0    # "appInfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/settings_ex/dual/DualSupportInstance;->getDualSupportPkgName(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .restart local v0    # "appInfo":Ljava/lang/String;
    invoke-virtual {v1, v0, p0}, Lcom/android/settings_ex/dual/DualInstanceUtils;->isPackageCloned(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 70
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/dual/DualApplicationInfo;->addAppNameData(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    .end local v0    # "appInfo":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v4
.end method
