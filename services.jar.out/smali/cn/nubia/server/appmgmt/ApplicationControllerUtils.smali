.class public Lcn/nubia/server/appmgmt/ApplicationControllerUtils;
.super Ljava/lang/Object;
.source "ApplicationControllerUtils.java"


# static fields
.field public static DOMESTIC_BUILD:I = 0x0

.field private static final INTERNAL_BUILD_ID:Ljava/lang/String; = "ro.build.internal.id"

.field public static INTERNATIONAL_BUILD:I

.field private static final SYSTEM_FILE:Ljava/io/File;

.field private static sDefaultAllowedAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedCheckAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x1

    sput v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DOMESTIC_BUILD:I

    .line 18
    const/4 v0, -0x1

    sput v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBuildString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string v0, "ro.build.internal.id"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildType()I
    .locals 3

    .prologue
    .line 30
    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 31
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->getBuildString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "buildString":Ljava/lang/String;
    const-string v1, "_Z0_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DOMESTIC_BUILD:I

    :goto_0
    sput v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    .line 35
    :cond_0
    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    return v1

    .line 32
    :cond_1
    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    goto :goto_0
.end method

.method private static isAppDefaultAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.cts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    const/4 v1, 0x1

    .line 127
    :cond_1
    return v1

    .line 116
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDefaultAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 94
    if-nez p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {p0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isAppDefaultAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_3
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v1, ""

    .line 69
    .local v1, "content":Ljava/lang/String;
    const/4 v3, 0x0

    .line 71
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 74
    .local v0, "buffer":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_1

    .line 76
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 79
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 80
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-eqz v3, :cond_0

    .line 84
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v1

    .line 78
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 83
    if-eqz v4, :cond_2

    .line 84
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move-object v3, v4

    .line 88
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 86
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 89
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 86
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 83
    :goto_3
    if-eqz v3, :cond_3

    .line 84
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 88
    :cond_3
    :goto_4
    throw v7

    .line 86
    :catch_3
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 79
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 53
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    if-eqz v3, :cond_0

    .line 59
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 65
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 61
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 64
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 54
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    if-eqz v2, :cond_1

    .line 59
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 61
    :catch_2
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 58
    :goto_2
    if-eqz v2, :cond_2

    .line 59
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 63
    :cond_2
    :goto_3
    throw v4

    .line 61
    :catch_3
    move-exception v1

    .line 62
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 54
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
