.class public Lcom/android/settings_ex/notification/NotificationBackend;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationBackend$AppRow;,
        Lcom/android/settings_ex/notification/NotificationBackend$Row;
    }
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method


# virtual methods
.method public getHighPriority(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 65
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    .local v1, "enabled":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 69
    .end local v1    # "enabled":Z
    :cond_0
    :goto_0
    return v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NotificationBackend"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPeekable(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 95
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getPackagePeekable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSensitive(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 114
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPackageVisibilityOverride(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 36
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;-><init>()V

    .line 37
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 38
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    .line 40
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    .line 47
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->priority:Z

    .line 48
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getPeekable(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->peekable:Z

    .line 49
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->sensitive:Z

    .line 50
    return-object v0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setHighPriority(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "highPriority"    # Z

    .prologue
    const/4 v1, 0x0

    .line 84
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v1, 0x1

    .line 89
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 84
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setNotificationsBanned(Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "banned"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    :try_start_0
    sget-object v4, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    if-nez p3, :cond_0

    move v3, v1

    :goto_0
    invoke-interface {v4, p1, p2, v3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    return v1

    :cond_0
    move v3, v2

    .line 55
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 59
    goto :goto_1
.end method

.method public setPeekable(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "peekable"    # Z

    .prologue
    .line 104
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setPackagePeekable(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSensitive(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "sensitive"    # Z

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    move v2, v1

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setPackageVisibilityOverride(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v1, 0x1

    .line 129
    :goto_1
    return v1

    .line 123
    :cond_0
    const/16 v2, -0x3e8

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
