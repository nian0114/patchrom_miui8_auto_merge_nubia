.class Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field mLabel:Ljava/lang/CharSequence;


# virtual methods
.method public loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 105
    iget v1, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 110
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 111
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 112
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method
