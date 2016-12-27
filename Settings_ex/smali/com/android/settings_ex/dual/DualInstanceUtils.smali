.class public Lcom/android/settings_ex/dual/DualInstanceUtils;
.super Ljava/lang/Object;
.source "DualInstanceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSmartContext(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 70
    .local v3, "smartInstance":Ljava/lang/Object;
    :try_start_0
    const-string v4, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    .local v2, "getInstance":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 78
    .end local v2    # "getInstance":Ljava/lang/reflect/Method;
    .end local v3    # "smartInstance":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 75
    .restart local v3    # "smartInstance":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deleteCloneForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    const-string v3, "deleteCloneForPackage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 31
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 32
    invoke-direct {p0, p2}, Lcom/android/settings_ex/dual/DualInstanceUtils;->getSmartContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 34
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 33
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v3, v4

    .line 34
    goto :goto_0
.end method

.method public getPkgCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v4, ""

    .line 52
    .local v4, "pkgCloneLabel":Ljava/lang/String;
    const/4 v1, 0x0

    .line 54
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    const-string v5, "markCloneLabel"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 56
    .local v3, "getLabel":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    if-eqz v3, :cond_0

    .line 58
    invoke-direct {p0, p2}, Lcom/android/settings_ex/dual/DualInstanceUtils;->getSmartContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v3    # "getLabel":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v4

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isPackageCloned(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 18
    const-string v3, "isPackageCloned"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 19
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 20
    invoke-direct {p0, p2}, Lcom/android/settings_ex/dual/DualInstanceUtils;->getSmartContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 22
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 21
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v3, v4

    .line 22
    goto :goto_0
.end method

.method public setConfig(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    const-string v3, "createCloneForPackage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 43
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    invoke-direct {p0, p2}, Lcom/android/settings_ex/dual/DualInstanceUtils;->getSmartContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 46
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 45
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v3, v4

    .line 46
    goto :goto_0
.end method
