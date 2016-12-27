.class public Lcom/android/settings_ex/dual/DualgetpkgUtils;
.super Ljava/lang/Object;
.source "DualgetpkgUtils.java"


# instance fields
.field private context:Landroid/content/Context;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualgetpkgUtils;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dual/DualgetpkgUtils;->pm:Landroid/content/pm/PackageManager;

    .line 14
    return-void
.end method


# virtual methods
.method public getPkgDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualgetpkgUtils;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 29
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualgetpkgUtils;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 33
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualgetpkgUtils;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 19
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualgetpkgUtils;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 23
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    const/4 v2, 0x0

    goto :goto_0
.end method
