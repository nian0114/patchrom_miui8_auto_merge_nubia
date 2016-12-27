.class public Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDiskInfo:Landroid/os/storage/DiskInfo;

.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemRuntime:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mSystemCacheSize:J

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 65
    const-string v0, "StorageVolumePreferenceCategory"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->TAG:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 656
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 144
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 145
    invoke-static {p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 148
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 149
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 152
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    if-nez p2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->initSystemStorage()V

    .line 157
    :cond_0
    return-void

    .line 152
    :cond_1
    const v0, 0x7f0c0c43

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 137
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes1"    # I
    .param p3, "colorRes2"    # I

    .prologue
    .line 161
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method private buildItem(IIII)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 6
    .param p1, "titleRes"    # I
    .param p2, "colorRes1"    # I
    .param p3, "colorRes2"    # I
    .param p4, "flag"    # I

    .prologue
    .line 167
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;IIII)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeta(J)J
    .locals 7
    .param p1, "total"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 748
    const-wide/32 v2, 0x40000000

    .line 749
    .local v2, "size1G":J
    const/4 v6, 0x2

    shl-long v0, v2, v6

    .line 750
    .local v0, "size":J
    :goto_0
    cmp-long v6, v0, p1

    if-gez v6, :cond_1

    .line 751
    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    .line 756
    :goto_1
    return-wide v4

    .line 750
    :cond_0
    const/4 v6, 0x1

    shl-long/2addr v0, v6

    goto :goto_0

    .line 754
    :cond_1
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sub-long v4, v0, p1

    goto :goto_1
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 738
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 739
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 740
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 741
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 744
    :cond_1
    return-object v1
.end method

.method private initSystemStorage()V
    .locals 9

    .prologue
    .line 172
    new-instance v1, Landroid/os/StatFs;

    const-string v6, "/system"

    invoke-direct {v1, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "system":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    .line 175
    .local v4, "systemTotalSize":J
    new-instance v0, Landroid/os/StatFs;

    const-string v6, "/cache"

    invoke-direct {v0, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "cache":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v2

    .line 177
    .local v2, "cacheTotalSize":J
    const-string v6, "StorageVolumePreferenceCategory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "systemTotalSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";cacheTotalSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    add-long v6, v4, v2

    iput-wide v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mSystemCacheSize:J

    .line 180
    return-void
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->invalidate()V

    .line 619
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measure()V

    .line 620
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 550
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 551
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 550
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updateApproximate(JJ)V
    .locals 19
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v11, :cond_1

    .line 519
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mSystemCacheSize:J

    add-long v14, v14, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getDeta(J)J

    move-result-wide v8

    .line 520
    .local v8, "deltaSize":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mSystemCacheSize:J

    add-long v14, v14, p1

    add-long/2addr v14, v8

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 521
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 537
    .end local v8    # "deltaSize":J
    :goto_0
    sub-long v12, p1, p3

    .line 539
    .local v12, "usedSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v11}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 540
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 541
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    const/4 v14, 0x0

    long-to-float v15, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    const v16, -0x777778

    const v17, -0x777778

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v14, v15, v0, v1}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFII)V

    .line 543
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    .line 545
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 546
    return-void

    .line 524
    .end local v12    # "usedSize":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 525
    .local v6, "context":Landroid/content/Context;
    move-wide/from16 v0, p3

    invoke-static {v6, v0, v1}, Lcom/android/settings_ex/Utils;->getFileSizeAndUnits(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v5

    .line 527
    .local v5, "availsizeAndUnit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file.size"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Lcom/android/settings_ex/Utils;->formatSDcardSize(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "file.units"

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "availCapacityStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {v11, v4}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    move-wide/from16 v0, p1

    invoke-static {v6, v0, v1}, Lcom/android/settings_ex/Utils;->getFileSizeAndUnits(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v10

    .line 533
    .local v10, "totalsizeAndUnit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file.size"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Lcom/android/settings_ex/Utils;->formatSDcardSize(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "file.units"

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, "totalCapacityStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {v11, v7}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 605
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 606
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {p1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 608
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color1:I

    iget v4, p1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color2:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFII)V

    .line 615
    .end local v0    # "order":I
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 11

    .prologue
    const v10, 0x7f0c03dc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 372
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    if-nez v6, :cond_3

    .line 373
    :cond_0
    const-string v7, "StorageVolumePreferenceCategory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<updatePreferencesFromState> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "mVolume == null"

    :goto_0
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    :goto_1
    return-void

    .line 373
    :cond_2
    const-string v6, "mDiskInfo == null"

    goto :goto_0

    .line 376
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 381
    .local v5, "titleResId":I
    const/4 v4, 0x0

    .line 383
    .local v4, "summaryResId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 384
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 385
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 388
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "state":Ljava/lang/String;
    const-string v6, "mounted_ro"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 390
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v7, 0x7f0c03c9

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 391
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_5

    .line 392
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    :cond_5
    :goto_2
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 399
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_7

    .line 400
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 402
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 403
    const v5, 0x7f0c0dc0

    .line 404
    const v4, 0x7f0c0dc1

    .line 415
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 416
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 480
    :cond_7
    :goto_4
    iget-boolean v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v6, :cond_1a

    const-string v6, "mtp"

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "ptp"

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 483
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_9

    .line 484
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 486
    :cond_9
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 488
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_b

    .line 489
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    :cond_b
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_1

    .line 495
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 496
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 395
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v7, 0x7f0c03c8

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_2

    .line 406
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v6, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 407
    const v5, 0x7f0c0da4

    .line 408
    const v4, 0x7f0c0da2

    goto :goto_3

    .line 411
    :cond_e
    const v5, 0x7f0c03d3

    .line 412
    const v4, 0x7f0c03d4

    goto :goto_3

    .line 419
    :cond_f
    const-string v6, "unmounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "nofs"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "unmountable"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 422
    :cond_10
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_11

    .line 423
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 424
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 425
    const v5, 0x7f0c0dc4

    .line 426
    const v4, 0x7f0c0dc5

    .line 436
    :goto_5
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    :cond_11
    :goto_6
    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 466
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 468
    :cond_12
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 469
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "needFomartInternal":Z
    const-string v6, "nofs"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "unmountable"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 473
    const/4 v1, 0x1

    .line 475
    :cond_14
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_7

    if-nez v1, :cond_7

    .line 476
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 428
    .end local v1    # "needFomartInternal":Z
    :cond_15
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v6, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 429
    const v5, 0x7f0c0d97

    .line 430
    const v4, 0x7f0c0d98

    goto :goto_5

    .line 433
    :cond_16
    const v5, 0x7f0c03d6

    .line 434
    const v4, 0x7f0c03d7

    goto :goto_5

    .line 442
    :cond_17
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_11

    .line 443
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 445
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 446
    const v5, 0x7f0c0dc4

    .line 447
    const v4, 0x7f0c0dc6

    .line 458
    :goto_7
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 449
    :cond_18
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v6, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 450
    const v5, 0x7f0c0d97

    .line 451
    const v4, 0x7f0c0d99

    goto :goto_7

    .line 454
    :cond_19
    const v5, 0x7f0c03d6

    .line 455
    const v4, 0x7f0c03d5

    goto :goto_7

    .line 499
    :cond_1a
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_1

    .line 500
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 501
    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 502
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0c0dce

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 505
    :cond_1b
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 506
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0c0dc3

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 508
    :cond_1c
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v6, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 509
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0c0d96

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 512
    :cond_1d
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0c03d9

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 24

    .prologue
    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 185
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 189
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 194
    .local v7, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v12

    .line 198
    .local v12, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v15, 0x0

    .line 200
    .local v15, "showUsers":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 201
    new-instance v20, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    :cond_0
    const v20, 0x7f0c03ca

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 207
    const v20, 0x7f0c03c8

    const v21, 0x7f0e007e

    const v22, 0x7f0e0086

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(IIII)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 212
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 215
    const v20, 0x7f0c0bf1

    const v21, 0x7f0e0085

    const v22, 0x7f0e008d

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(IIII)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemRuntime:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 218
    :cond_1
    const v20, 0x7f0c03cc

    const v21, 0x7f0e007f

    const v22, 0x7f0e0087

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 220
    const v20, 0x7f0c03cf

    const v21, 0x7f0e0081

    const v22, 0x7f0e0089

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 222
    const v20, 0x7f0c03d0

    const v21, 0x7f0e0082

    const v22, 0x7f0e008a

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 224
    const v20, 0x7f0c03ce

    const v21, 0x7f0e0080

    const v22, 0x7f0e0088

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 226
    const v20, 0x7f0c03d2

    const v21, 0x7f0e0083

    const v22, 0x7f0e008b

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 228
    const v20, 0x7f0c03d1

    const v21, 0x7f0e0084

    const v22, 0x7f0e008c

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    const-string v21, "cache"

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v20

    if-eqz v20, :cond_7

    :cond_2
    const/4 v14, 0x1

    .line 234
    .local v14, "showDetails":Z
    :goto_1
    if-eqz v14, :cond_3

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemRuntime:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v11

    .line 268
    .local v11, "isRemovable":Z
    :goto_2
    const/16 v18, 0x0

    .line 269
    .local v18, "titleResId":I
    const/16 v17, 0x0

    .line 270
    .local v17, "summaryResId":I
    if-eqz v11, :cond_a

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    :cond_4
    new-instance v20, Landroid/preference/Preference;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, "fsUuid":Ljava/lang/String;
    if-nez v9, :cond_9

    .line 359
    .end local v9    # "fsUuid":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 190
    .end local v7    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "isRemovable":Z
    .end local v12    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v14    # "showDetails":Z
    .end local v15    # "showUsers":Z
    .end local v17    # "summaryResId":I
    .end local v18    # "titleResId":I
    :catch_0
    move-exception v8

    .line 191
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Failed to get current user"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 210
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v7    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v12    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v15    # "showUsers":Z
    :cond_6
    const v20, 0x7f0c03c8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    goto/16 :goto_0

    .line 233
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 263
    .restart local v14    # "showDetails":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 279
    .restart local v9    # "fsUuid":Ljava/lang/String;
    .restart local v11    # "isRemovable":Z
    .restart local v17    # "summaryResId":I
    .restart local v18    # "titleResId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v19

    .line 280
    .local v19, "volumeInfo":Landroid/os/storage/VolumeInfo;
    if-eqz v19, :cond_5

    .line 283
    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 286
    const v18, 0x7f0c0dc0

    .line 287
    const v17, 0x7f0c0dc1

    .line 296
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 303
    const v18, 0x7f0c0ea9

    .line 309
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    .end local v9    # "fsUuid":Ljava/lang/String;
    .end local v19    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    const/4 v5, 0x1

    .line 315
    .local v5, "allowFormat":Z
    :goto_7
    const/4 v10, 0x0

    .line 316
    .local v10, "inFormatstate":Z
    if-eqz v5, :cond_c

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v16

    .line 318
    .local v16, "state":Ljava/lang/String;
    const-string v20, "mounted"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "unmountable"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "nofs"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    :cond_b
    const/4 v10, 0x1

    .line 322
    .end local v16    # "state":Ljava/lang/String;
    :cond_c
    :goto_8
    if-eqz v5, :cond_d

    if-eqz v10, :cond_d

    .line 323
    new-instance v20, Landroid/preference/Preference;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 326
    const v18, 0x7f0c0dcd

    .line 327
    const v17, 0x7f0c0dce

    .line 338
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    :cond_d
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 346
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v13}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    if-nez v20, :cond_18

    .line 347
    new-instance v20, Landroid/preference/Preference;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOrder(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const v21, 0x7f0c03e4

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const v21, 0x7f0c03e5

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 357
    :catch_1
    move-exception v20

    goto/16 :goto_3

    .line 288
    .end local v5    # "allowFormat":Z
    .end local v10    # "inFormatstate":Z
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v9    # "fsUuid":Ljava/lang/String;
    .restart local v19    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 289
    const v18, 0x7f0c0da4

    .line 290
    const v17, 0x7f0c0da2

    goto/16 :goto_4

    .line 292
    :cond_f
    const v18, 0x7f0c03d3

    .line 293
    const v17, 0x7f0c03d4

    goto/16 :goto_4

    .line 304
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 305
    const v18, 0x7f0c0ea8

    goto/16 :goto_5

    .line 307
    :cond_11
    const v18, 0x7f0c03c7

    goto/16 :goto_5

    .line 309
    :cond_12
    const v20, 0x7f0c0c43

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    goto/16 :goto_6

    .line 314
    .end local v9    # "fsUuid":Ljava/lang/String;
    .end local v19    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 318
    .restart local v5    # "allowFormat":Z
    .restart local v10    # "inFormatstate":Z
    .restart local v16    # "state":Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 328
    .end local v16    # "state":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mDiskInfo:Landroid/os/storage/DiskInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 329
    const v18, 0x7f0c0dc2

    .line 330
    const v17, 0x7f0c0dc3

    goto/16 :goto_9

    .line 331
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 332
    const v18, 0x7f0c0d95

    .line 333
    const v17, 0x7f0c0d96

    goto/16 :goto_9

    .line 335
    :cond_17
    const v18, 0x7f0c03d8

    .line 336
    const v17, 0x7f0c03d9

    goto/16 :goto_9

    .line 353
    .restart local v13    # "pm":Landroid/content/pm/IPackageManager;
    :cond_18
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 677
    const/4 v1, 0x0

    .line 683
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 685
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 688
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 711
    :cond_0
    :goto_0
    return-object v1

    .line 689
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_2

    .line 690
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 694
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_3

    .line 695
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 697
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_4

    .line 698
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "audio/mp3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 700
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_5

    .line 701
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 706
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 708
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 646
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 642
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 650
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 624
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 625
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 2

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 629
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 631
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 632
    return-void
.end method

.method public updateDetails(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 22
    .param p1, "details"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_0
    const/4 v11, 0x1

    .line 560
    .local v11, "showDetails":Z
    :goto_0
    if-nez v11, :cond_3

    .line 602
    :cond_1
    :goto_1
    return-void

    .line 559
    .end local v11    # "showDetails":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 564
    .restart local v11    # "showDetails":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v15}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v15}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 567
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v15, :cond_5

    .line 568
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mSystemCacheSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getDeta(J)J

    move-result-wide v6

    .line 569
    .local v6, "deltaSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mSystemCacheSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v18, v18, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemRuntime:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mSystemCacheSize:J

    move-wide/from16 v18, v0

    add-long v18, v18, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 575
    .end local v6    # "deltaSize":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 578
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 581
    .local v4, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 582
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x3

    sget-object v20, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x4

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v12

    .line 586
    .local v12, "musicSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 587
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v8

    .line 589
    .local v8, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 594
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 595
    .local v14, "userPref":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v0, v14, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    .line 596
    .local v16, "userSize":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_3

    .line 573
    .end local v4    # "dcimSize":J
    .end local v8    # "downloadsSize":J
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "musicSize":J
    .end local v14    # "userPref":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v16    # "userSize":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 599
    .restart local v4    # "dcimSize":J
    .restart local v8    # "downloadsSize":J
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "musicSize":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v15}, Lcom/android/settings_ex/Utils;->isInternal(Landroid/os/storage/StorageVolume;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 600
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v15}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method

.method public updateStorageVolume(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setVolume(Landroid/os/storage/StorageVolume;)V

    .line 367
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object p1
.end method
