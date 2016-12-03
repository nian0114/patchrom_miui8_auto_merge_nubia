.class final Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsRegistry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;,
        Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;
    }
.end annotation


# instance fields
.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider;)V
    .locals 2

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    .line 1437
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 1438
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    .line 1439
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateAllLegacySettingsIfNeeded()V

    .line 1440
    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Landroid/app/backup/BackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .param p1, "x1"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "x2"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "x3"    # I

    .prologue
    .line 1416
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method private ensureSecureSettingAndroidIdSetLocked(Lcom/android/providers/settings/SettingsState;)V
    .locals 12
    .param p1, "secureSettings"    # Lcom/android/providers/settings/SettingsState;

    .prologue
    .line 1714
    const-string v7, "android_id"

    invoke-virtual {p1, v7}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1716
    .local v6, "value":Lcom/android/providers/settings/SettingsState$Setting;
    if-eqz v6, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget v7, p1, Lcom/android/providers/settings/SettingsState;->mKey:I

    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v5

    .line 1723
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1725
    .local v2, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v7}, Lcom/android/providers/settings/SettingsProvider;->access$400(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1727
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1729
    if-eqz v4, :cond_0

    .line 1734
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "androidId":Ljava/lang/String;
    const-string v7, "android_id"

    const-string v8, "android"

    invoke-virtual {p1, v7, v0, v8}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1738
    const-string v7, "SettingsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Generated and saved new ANDROID_ID ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1743
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 1745
    .local v1, "dbm":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "restricted_profile_ssaid"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1746
    const-string v7, "restricted_profile_ssaid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "restricted_profile_ssaid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1727
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "dbm":Landroid/os/DropBoxManager;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private ensureSettingsStateLocked(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 1481
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getMaxBytesPerPackageForType(I)I

    move-result v0

    .line 1483
    .local v0, "maxBytesPerPackage":I
    new-instance v1, Lcom/android/providers/settings/SettingsState;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/android/providers/settings/SettingsState;-><init>(Ljava/lang/Object;Ljava/io/File;II)V

    .line 1485
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1487
    .end local v0    # "maxBytesPerPackage":I
    .end local v1    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :cond_0
    return-void
.end method

.method private getMaxBytesPerPackageForType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1882
    packed-switch p1, :pswitch_data_0

    .line 1889
    :pswitch_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    .line 1885
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1882
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNotificationUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1867
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isGlobalSettingsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1868
    if-eqz p2, :cond_0

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1874
    :goto_0
    return-object v0

    .line 1868
    :cond_0
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1870
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1871
    if-eqz p2, :cond_2

    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1873
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1874
    if-eqz p2, :cond_4

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1877
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid settings key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSettingsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 1849
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isGlobalSettingsKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1850
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v0

    .line 1851
    .local v0, "userId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "settings_global.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1859
    :goto_0
    return-object v1

    .line 1853
    .end local v0    # "userId":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1854
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v0

    .line 1855
    .restart local v0    # "userId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "settings_system.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 1857
    .end local v0    # "userId":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1858
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v0

    .line 1859
    .restart local v0    # "userId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "settings_secure.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 1862
    .end local v0    # "userId":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid settings key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTypeFromKey(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1829
    shr-int/lit8 v0, p1, 0x1c

    return v0
.end method

.method private getUserIdFromKey(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1833
    const v0, 0xfffffff

    and-int/2addr v0, p1

    return v0
.end method

.method private isGlobalSettingsKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1837
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureSettingsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1845
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemSettingsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 1841
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getTypeFromKey(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeKey(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1825
    shl-int/lit8 v0, p1, 0x1c

    or-int/2addr v0, p2

    return v0
.end method

.method private maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1810
    .local p4, "keysCloned":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1811
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->access$400(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1812
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1813
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1814
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1816
    .local v1, "profile":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, p1, :cond_0

    .line 1817
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1813
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1822
    .end local v0    # "i":I
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "size":I
    :cond_1
    return-void
.end method

.method private migrateAllLegacySettingsIfNeeded()V
    .locals 14

    .prologue
    .line 1597
    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1598
    const/4 v11, 0x0

    const/4 v13, 0x0

    :try_start_0
    invoke-direct {p0, v11, v13}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v6

    .line 1599
    .local v6, "key":I
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1600
    .local v2, "globalFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1601
    monitor-exit v12

    .line 1629
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1606
    .local v4, "identity":J
    :try_start_1
    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v11}, Lcom/android/providers/settings/SettingsProvider;->access$400(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 1608
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 1609
    .local v8, "userCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 1610
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v9, v11, Landroid/content/pm/UserInfo;->id:I

    .line 1612
    .local v9, "userId":I
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v11}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11, v9}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 1613
    .local v1, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1614
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, v0, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 1617
    new-instance v7, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;

    invoke-direct {v7, p0, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    .line 1618
    .local v7, "upgrader":Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->upgradeIfNeededLocked()V

    .line 1621
    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v11}, Lcom/android/providers/settings/SettingsProvider;->access$400(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;

    move-result-object v11

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v13}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1622
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->removeUserStateLocked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1609
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1626
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    .end local v7    # "upgrader":Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
    .end local v9    # "userId":I
    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1628
    monitor-exit v12

    goto :goto_0

    .end local v2    # "globalFile":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "identity":J
    .end local v6    # "key":I
    .end local v8    # "userCount":I
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1626
    .restart local v2    # "globalFile":Ljava/io/File;
    .restart local v4    # "identity":J
    .restart local v6    # "key":I
    :catchall_1
    move-exception v11

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private migrateLegacySettingsForUserIfNeededLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1633
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v3

    .line 1634
    .local v3, "secureKey":I
    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1635
    .local v2, "secureFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1643
    :goto_0
    return-void

    .line 1639
    :cond_0
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 1640
    .local v1, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1642
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, v0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0
.end method

.method private migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 7
    .param p1, "dbHelper"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "userId"    # I

    .prologue
    .line 1648
    if-nez p3, :cond_0

    .line 1649
    const/4 v6, 0x0

    invoke-direct {p0, v6, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1650
    .local v0, "globalKey":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1651
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    .line 1652
    .local v1, "globalSettings":Lcom/android/providers/settings/SettingsState;
    const-string v6, "global"

    invoke-direct {p0, v1, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->persistSyncLocked()V

    .line 1657
    .end local v0    # "globalKey":I
    .end local v1    # "globalSettings":Lcom/android/providers/settings/SettingsState;
    :cond_0
    const/4 v6, 0x2

    invoke-direct {p0, v6, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v2

    .line 1658
    .local v2, "secureKey":I
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1659
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/SettingsState;

    .line 1660
    .local v3, "secureSettings":Lcom/android/providers/settings/SettingsState;
    const-string v6, "secure"

    invoke-direct {p0, v3, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1661
    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSecureSettingAndroidIdSetLocked(Lcom/android/providers/settings/SettingsState;)V

    .line 1662
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState;->persistSyncLocked()V

    .line 1665
    const/4 v6, 0x1

    invoke-direct {p0, v6, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v4

    .line 1666
    .local v4, "systemKey":I
    invoke-direct {p0, v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1667
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/settings/SettingsState;

    .line 1668
    .local v5, "systemSettings":Lcom/android/providers/settings/SettingsState;
    const-string v6, "system"

    invoke-direct {p0, v5, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState;->persistSyncLocked()V

    .line 1672
    # getter for: Lcom/android/providers/settings/SettingsProvider;->DROP_DATABASE_ON_MIGRATION:Z
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1673
    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->dropDatabase()V

    .line 1677
    :goto_0
    return-void

    .line 1675
    :cond_1
    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->backupDatabase()V

    goto :goto_0
.end method

.method private migrateLegacySettingsLocked(Lcom/android/providers/settings/SettingsState;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 14
    .param p1, "settingsState"    # Lcom/android/providers/settings/SettingsState;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 1681
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1682
    .local v1, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1684
    # getter for: Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$600()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1687
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1692
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1709
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1696
    :cond_1
    :try_start_1
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1697
    .local v11, "nameColumnIdx":I
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1699
    .local v13, "valueColumnIdx":I
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    .line 1701
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1702
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1703
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1704
    .local v12, "value":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {p1, v10, v12, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1706
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1709
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameColumnIdx":I
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "valueColumnIdx":I
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v11    # "nameColumnIdx":I
    .restart local v13    # "valueColumnIdx":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private notifyForSettingsChange(ILjava/lang/String;)V
    .locals 10
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1757
    const/4 v0, 0x0

    .line 1758
    .local v0, "backedUpDataChanged":Z
    const/4 v1, 0x0

    .line 1759
    .local v1, "property":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isGlobalSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1760
    const-string v1, "sys.settings_global_version"

    .line 1761
    const/4 v0, 0x1

    .line 1770
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1771
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 1772
    .local v4, "version":J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    .end local v4    # "version":J
    :cond_1
    if-eqz v0, :cond_2

    .line 1780
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1785
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v3

    .line 1786
    .local v3, "userId":I
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getNotificationUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1788
    .local v2, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1791
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1793
    sget-boolean v6, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # invokes: Lcom/android/providers/settings/SettingsProvider;->isVirtualBox(I)Z
    invoke-static {v6, v3}, Lcom/android/providers/settings/SettingsProvider;->access$700(Lcom/android/providers/settings/SettingsProvider;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1794
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToCloneBoxSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$800()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    .line 1806
    :cond_3
    :goto_1
    return-void

    .line 1762
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "userId":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSecureSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1763
    const-string v1, "sys.settings_secure_version"

    .line 1764
    const/4 v0, 0x1

    goto :goto_0

    .line 1765
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1766
    const-string v1, "sys.settings_system_version"

    .line 1767
    const/4 v0, 0x1

    goto :goto_0

    .line 1797
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "userId":I
    :cond_6
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$900()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 1798
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->isSystemSettingsKey(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1800
    sget-boolean v6, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # invokes: Lcom/android/providers/settings/SettingsProvider;->isVirtualBox(I)Z
    invoke-static {v6, v3}, Lcom/android/providers/settings/SettingsProvider;->access$700(Lcom/android/providers/settings/SettingsProvider;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1801
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToCloneBoxSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$1000()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 1804
    :cond_8
    # getter for: Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$1100()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->maybeNotifyProfiles(ILandroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1
.end method

.method private peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1587
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsState;

    .line 1588
    .local v0, "settingsState":Lcom/android/providers/settings/SettingsState;
    if-eqz v0, :cond_0

    .line 1593
    .end local v0    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :goto_0
    return-object v0

    .line 1592
    .restart local v0    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getUserIdFromKey(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsForUserLocked(I)V

    .line 1593
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public deleteSettingLocked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1541
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1543
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1544
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3}, Lcom/android/providers/settings/SettingsState;->deleteSettingLocked(Ljava/lang/String;)Z

    move-result v2

    .line 1546
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 1547
    invoke-direct {p0, v0, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    .line 1549
    :cond_0
    return v2
.end method

.method public ensureSettingsForUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1455
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserIfNeededLocked(I)V

    .line 1458
    if-nez p1, :cond_0

    .line 1459
    invoke-direct {p0, v5, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1460
    .local v0, "globalKey":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1464
    .end local v0    # "globalKey":I
    :cond_0
    invoke-direct {p0, v6, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v1

    .line 1465
    .local v1, "secureKey":I
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1468
    invoke-virtual {p0, v6, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v2

    .line 1469
    .local v2, "secureSettings":Lcom/android/providers/settings/SettingsState;
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSecureSettingAndroidIdSetLocked(Lcom/android/providers/settings/SettingsState;)V

    .line 1472
    const/4 v5, 0x1

    invoke-direct {p0, v5, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v3

    .line 1473
    .local v3, "systemKey":I
    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsStateLocked(I)V

    .line 1476
    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;

    invoke-direct {v4, p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    .line 1477
    .local v4, "upgrader":Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->upgradeIfNeededLocked()V

    .line 1478
    return-void
.end method

.method public getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1553
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1555
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1556
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    return-object v2
.end method

.method public getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1449
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1450
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    return-object v1
.end method

.method public getSettingsNamesLocked(II)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1443
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1444
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1445
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1529
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1531
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1532
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1534
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 1535
    invoke-direct {p0, v0, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    .line 1537
    :cond_0
    return v2
.end method

.method public onPackageRemovedLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1579
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1580
    .local v0, "systemKey":I
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    .line 1581
    .local v1, "systemSettings":Lcom/android/providers/settings/SettingsState;
    if-eqz v1, :cond_0

    .line 1582
    invoke-virtual {v1, p1}, Lcom/android/providers/settings/SettingsState;->onPackageRemovedLocked(Ljava/lang/String;)V

    .line 1584
    :cond_0
    return-void
.end method

.method public removeUserStateLocked(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "permanently"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1493
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v2

    .line 1494
    .local v2, "systemKey":I
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/SettingsState;

    .line 1495
    .local v3, "systemSettingsState":Lcom/android/providers/settings/SettingsState;
    if-eqz v3, :cond_0

    .line 1496
    if-eqz p2, :cond_2

    .line 1497
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1498
    invoke-virtual {v3, v5}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    .line 1510
    :cond_0
    :goto_0
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1511
    .local v0, "secureKey":I
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsState;

    .line 1512
    .local v1, "secureSettingsState":Lcom/android/providers/settings/SettingsState;
    if-eqz v1, :cond_1

    .line 1513
    if-eqz p2, :cond_3

    .line 1514
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1515
    invoke-virtual {v1, v5}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    .line 1525
    :cond_1
    :goto_1
    return-void

    .line 1500
    .end local v0    # "secureKey":I
    .end local v1    # "secureSettingsState":Lcom/android/providers/settings/SettingsState;
    :cond_2
    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$1;

    invoke-direct {v4, p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$1;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    invoke-virtual {v3, v4}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1517
    .restart local v0    # "secureKey":I
    .restart local v1    # "secureSettingsState":Lcom/android/providers/settings/SettingsState;
    :cond_3
    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;

    invoke-direct {v4, p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;-><init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V

    invoke-virtual {v1, v4}, Lcom/android/providers/settings/SettingsState;->destroyLocked(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1561
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->makeKey(II)I

    move-result v0

    .line 1563
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->peekSettingsStateLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1564
    .local v1, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1566
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 1567
    invoke-direct {p0, v0, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->notifyForSettingsChange(ILjava/lang/String;)V

    .line 1570
    :cond_0
    return v2
.end method
