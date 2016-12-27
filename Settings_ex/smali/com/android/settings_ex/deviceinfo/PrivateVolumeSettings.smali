.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;
    }
.end annotation


# static fields
.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I


# instance fields
.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

.field private final mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0c040e

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c040e
        0x7f0c040f
        0x7f0c0410
        0x7f0c0411
        0x7f0c0413
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 479
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 552
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 725
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 249
    .local v0, "category":Landroid/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 252
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 253
    return-object v0

    .line 245
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101008c

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addDetailItems(Landroid/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 257
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 258
    .local v1, "itemsToAdd":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 259
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    .end local v0    # "i":I
    .end local v1    # "itemsToAdd":[I
    :cond_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    goto :goto_0

    .line 261
    .restart local v0    # "i":I
    .restart local v1    # "itemsToAdd":[I
    :cond_1
    return-void
.end method

.method private addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "userId"    # I

    .prologue
    .line 265
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 271
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz v0, :cond_0

    .line 272
    if-eqz p3, :cond_2

    .line 273
    invoke-virtual {v0, p3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    :goto_1
    const v1, 0x7f0c03cb

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 278
    iput p4, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 280
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 282
    :cond_0
    return-void

    .line 268
    .end local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 269
    .restart local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1
.end method

.method private addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 236
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 237
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 291
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 293
    return-object v0
.end method

.method private buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 6

    .prologue
    const v3, 0x7f0e001d

    .line 286
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const/16 v5, -0x2710

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;III)V

    .line 287
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    return-object v0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 532
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 10
    .param p0, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 538
    const-wide/16 v6, 0x0

    .line 539
    .local v6, "total":J
    iget-object v5, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 540
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v4, :cond_1

    .line 541
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 542
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 543
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 541
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_1
    const-string v5, "StorageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_2
    return-wide v6
.end method

.method private updateDetails(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .param p1, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 487
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v4, v14, :cond_0

    .line 488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 489
    .local v5, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget v9, v5, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 490
    .local v9, "userId":I
    invoke-virtual {v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getTitleRes()I

    move-result v8

    .line 491
    .local v8, "itemTitleId":I
    sparse-switch v8, :sswitch_data_0

    .line 487
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 493
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 496
    :sswitch_1
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v6

    .line 499
    .local v6, "imagesSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 502
    .end local v6    # "imagesSize":J
    :sswitch_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v12

    .line 504
    .local v12, "videosSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 507
    .end local v12    # "videosSize":J
    :sswitch_3
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v2

    .line 511
    .local v2, "audioSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 514
    .end local v2    # "audioSize":J
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 517
    :sswitch_5
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 520
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 521
    .local v10, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 525
    .end local v5    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v8    # "itemTitleId":I
    .end local v9    # "userId":I
    .end local v10    # "userSize":J
    :cond_0
    return-void

    .line 491
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x7f0c040e -> :sswitch_0
        0x7f0c040f -> :sswitch_1
        0x7f0c0410 -> :sswitch_2
        0x7f0c0411 -> :sswitch_3
        0x7f0c0412 -> :sswitch_5
        0x7f0c0413 -> :sswitch_4
    .end sparse-switch
.end method

.method private updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 137
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 145
    new-instance v1, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_0
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 156
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 159
    const v1, 0x7f0c03ef

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    .line 161
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 328
    const v0, 0x7f140009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 329
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 323
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 368
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 392
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 371
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    move v0, v8

    .line 372
    goto :goto_0

    .line 374
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v8

    .line 375
    goto :goto_0

    .line 377
    :pswitch_2
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c03e8

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v8

    .line 380
    goto :goto_0

    .line 382
    :pswitch_3
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c03e9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v8

    .line 385
    goto :goto_0

    .line 387
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 390
    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x7f1204dc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 315
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 399
    instance-of v0, p2, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    iget v10, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 401
    .local v10, "userId":I
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v9

    .line 402
    .local v9, "itemTitleId":I
    const/4 v8, 0x0

    .line 403
    .local v8, "intent":Landroid/content/Intent;
    sparse-switch v9, :sswitch_data_0

    .line 453
    :goto_1
    if-eqz v8, :cond_2

    .line 455
    if-ne v10, v11, :cond_1

    .line 456
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v12

    .line 465
    :goto_3
    return v0

    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "itemTitleId":I
    .end local v10    # "userId":I
    :cond_0
    move v10, v11

    .line 399
    goto :goto_0

    .line 405
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "itemTitleId":I
    .restart local v10    # "userId":I
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "classname"

    const-class v1, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "volumeUuid"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "volumeName"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0c0ac5

    const/4 v6, 0x0

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v8

    .line 414
    goto :goto_1

    .line 416
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "images_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 418
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 422
    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "videos_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 424
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 428
    :sswitch_3
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "audio_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 430
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 434
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    move v0, v12

    .line 436
    goto/16 :goto_3

    .line 440
    :sswitch_5
    invoke-static {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    move v0, v12

    .line 441
    goto/16 :goto_3

    .line 445
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v8

    .line 446
    goto/16 :goto_1

    .line 448
    :sswitch_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    move v0, v12

    .line 449
    goto/16 :goto_3

    .line 458
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 460
    :catch_0
    move-exception v7

    .line 461
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 465
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_3

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x7f0c03ef -> :sswitch_6
        0x7f0c040e -> :sswitch_0
        0x7f0c040f -> :sswitch_1
        0x7f0c0410 -> :sswitch_2
        0x7f0c0411 -> :sswitch_3
        0x7f0c0412 -> :sswitch_5
        0x7f0c0413 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 333
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 363
    :goto_0
    return-void

    .line 335
    :cond_0
    const v6, 0x7f1204dc

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 336
    .local v4, "rename":Landroid/view/MenuItem;
    const v6, 0x7f1204dd

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 337
    .local v2, "mount":Landroid/view/MenuItem;
    const v6, 0x7f1204de

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 338
    .local v5, "unmount":Landroid/view/MenuItem;
    const v6, 0x7f1204df

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 339
    .local v0, "format":Landroid/view/MenuItem;
    const v6, 0x7f1204e0

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 343
    .local v1, "migrate":Landroid/view/MenuItem;
    const-string v6, "private"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 345
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 346
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    :goto_1
    const v6, 0x7f0c03ea

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 360
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 349
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_3
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 350
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_4
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 351
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v6, v8

    .line 349
    goto :goto_3

    :cond_3
    move v6, v8

    .line 350
    goto :goto_4

    .restart local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_4
    move v7, v8

    .line 360
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 302
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->update()V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 472
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public update()V
    .locals 28

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v23

    if-nez v23, :cond_0

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->finish()V

    .line 233
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 176
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 178
    .local v13, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 183
    .local v5, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    .line 184
    .local v20, "userCount":I
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    const/4 v14, 0x1

    .line 185
    .local v14, "showHeaders":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v23

    if-eqz v23, :cond_3

    const/4 v15, 0x1

    .line 187
    .local v15, "showShared":Z
    :goto_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 188
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 190
    const/4 v4, 0x0

    .line 192
    .local v4, "addedUserCount":I
    const/16 v21, 0x0

    .local v21, "userIndex":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 193
    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 194
    .local v22, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 195
    if-eqz v14, :cond_4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    .line 197
    .local v7, "details":Landroid/preference/PreferenceGroup;
    :goto_4
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v7, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/preference/PreferenceGroup;ZI)V

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 192
    .end local v7    # "details":Landroid/preference/PreferenceGroup;
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 184
    .end local v4    # "addedUserCount":I
    .end local v14    # "showHeaders":Z
    .end local v15    # "showShared":Z
    .end local v21    # "userIndex":I
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 185
    .restart local v14    # "showHeaders":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .restart local v4    # "addedUserCount":I
    .restart local v15    # "showShared":Z
    .restart local v21    # "userIndex":I
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    move-object v7, v13

    .line 195
    goto :goto_4

    .line 203
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    sub-int v23, v20, v4

    if-lez v23, :cond_7

    .line 204
    const v23, 0x7f0c03f8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v9

    .line 206
    .local v9, "otherUsers":Landroid/preference/PreferenceGroup;
    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 207
    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 208
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 209
    const/16 v23, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 206
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 214
    .end local v9    # "otherUsers":Landroid/preference/PreferenceGroup;
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    const v23, 0x7f0c0412

    const/16 v24, 0x0

    const/16 v25, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 216
    if-eqz v15, :cond_8

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 220
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v8

    .line 221
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v16

    .line 222
    .local v16, "totalBytes":J
    invoke-virtual {v8}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v10

    .line 223
    .local v10, "freeBytes":J
    sub-long v18, v16, v10

    .line 225
    .local v18, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v12

    .line 226
    .local v12, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0c03fc

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v12, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    iget-object v0, v12, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0c03fd

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x64

    mul-long v24, v24, v18

    div-long v24, v24, v16

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->forceMeasure()V

    goto/16 :goto_0
.end method
