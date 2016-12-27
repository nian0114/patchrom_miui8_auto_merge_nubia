.class public Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;
.super Ljava/lang/Object;
.source "DataBaseManager.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://cn.nubia.providers.AppSettingsInfoProvider/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mPM:Landroid/content/pm/PackageManager;

    .line 26
    return-void
.end method


# virtual methods
.method public insert(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V
    .locals 3
    .param p1, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .param p2, "flag"    # I

    .prologue
    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "PKG_NAME"

    invoke-virtual {p1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "FLAG"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 72
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setInserted(Z)V

    .line 73
    return-void
.end method

.method public querryAll()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v6, 0x0

    .line 86
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v9, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, "FLAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 91
    .local v8, "flag":I
    const-string v0, "PKG_NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "pkgName":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    .end local v8    # "flag":I
    .end local v10    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v9

    .line 98
    :cond_1
    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public query(Ljava/lang/String;)Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .locals 14
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 29
    new-instance v6, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-direct {v6}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;-><init>()V

    .line 30
    .local v6, "appinfo":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    const/4 v8, 0x0

    .line 32
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "FLAG"

    aput-object v4, v2, v3

    const-string v3, "PKG_NAME=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 37
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "FLAG"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 39
    .local v10, "flag":I
    invoke-virtual {v6, v10}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setInserted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v10    # "flag":I
    :goto_0
    if-eqz v8, :cond_0

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_0
    :goto_1
    invoke-virtual {v6, p1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setPackageName(Ljava/lang/String;)V

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mPM:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 59
    .local v12, "pkg_info":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setAppName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v6

    .line 64
    .end local v6    # "appinfo":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .end local v12    # "pkg_info":Landroid/content/pm/PackageInfo;
    .local v7, "appinfo":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    :goto_2
    return-object v7

    .line 42
    .end local v7    # "appinfo":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .restart local v6    # "appinfo":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mPM:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_2

    .line 43
    .local v11, "isThirdPartyApp":Z
    :goto_3
    if-eqz v11, :cond_3

    const-string v0, "cn.nubia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 44
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V

    .line 48
    :goto_4
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setInserted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 50
    .end local v11    # "isThirdPartyApp":Z
    :catch_0
    move-exception v0

    .line 52
    if-eqz v8, :cond_0

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    move v11, v13

    .line 42
    goto :goto_3

    .line 46
    .restart local v11    # "isThirdPartyApp":Z
    :cond_3
    const/4 v0, 0x5

    :try_start_3
    invoke-virtual {v6, v0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 52
    .end local v11    # "isThirdPartyApp":Z
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 60
    :catch_1
    move-exception v9

    .line 61
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 62
    const/4 v6, 0x0

    move-object v7, v6

    .end local v6    # "appinfo":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .restart local v7    # "appinfo":Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    goto :goto_2
.end method

.method public update(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V
    .locals 7
    .param p1, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .param p2, "flag"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "FLAG"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "PKG_NAME=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    return-void
.end method
