.class public Lcom/android/settings_ex/deviceinfo/Memory;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$6;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/Memory$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Memory;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 92
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$1;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 322
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$2;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 531
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->getUpdatedVolume(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/Memory;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 2
    .param p1, "category"    # Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getFirstCategoryLayout(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setLayoutResource(I)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    invoke-virtual {p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 157
    return-void
.end method

.method private doUnmount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0dc9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 408
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 409
    .local v0, "mountService":Landroid/os/storage/IMountService;
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 410
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v2, 0x7f0c03e2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 411
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v2, 0x7f0c03e3

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    new-instance v1, Lcom/android/settings_ex/deviceinfo/Memory$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory$4;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/deviceinfo/Memory$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 434
    return-void

    .line 405
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c03e1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 270
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 271
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 272
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 277
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 274
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getUpdatedVolume(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 7
    .param p1, "oldVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 207
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 208
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v3

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 209
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v4

    .line 208
    .restart local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 442
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 443
    .local v0, "mountService":Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 444
    .local v1, "stUsers":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 459
    :cond_0
    return v3
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 162
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 163
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 480
    .local v0, "mountService":Landroid/os/storage/IMountService;
    new-instance v1, Lcom/android/settings_ex/deviceinfo/Memory$5;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory$5;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/deviceinfo/Memory$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    return-void
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 504
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 506
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private removeAllCategory()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 147
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->removeDialog(I)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialog(I)V

    .line 439
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 465
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    .line 476
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private updateCategroty()V
    .locals 11

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 105
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 106
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 107
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/deviceinfo/Memory;->addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 108
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 109
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v7, v0, v2

    .line 110
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "volume:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 115
    const-string v8, "MemorySettings"

    const-string v9, "!volume.isEmulated():true"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v8, "persist.sys.isUICCEnabled"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 121
    .local v6, "uiccStatus":Z
    const-string v8, "persist.sys.isUsbOtgEnabled"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 124
    .local v3, "isOtgSupported":Z
    invoke-static {v7, v1}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "uicc1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 126
    :cond_1
    const-string v8, "MemorySettings"

    const-string v9, "Hardware has UICC disabled, Hiding UICC UI"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v3    # "isOtgSupported":Z
    .end local v6    # "uiccStatus":Z
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .restart local v3    # "isOtgSupported":Z
    .restart local v6    # "uiccStatus":Z
    :cond_3
    invoke-static {v7, v1}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v3, :cond_4

    .line 131
    const-string v8, "MemorySettings"

    const-string v9, "Hardware has USB OTG not supported, Hiding OTG UI"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    :cond_4
    invoke-static {v1, v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/deviceinfo/Memory;->addCategory(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    goto :goto_1

    .line 140
    .end local v3    # "isOtgSupported":Z
    .end local v6    # "uiccStatus":Z
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 650
    sget v0, Lcom/android/settings_ex/deviceinfo/Memory;->MEMORY:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 99
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 101
    return-void
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v6, 0x7f0c054c

    const/4 v3, 0x0

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    return-object v3

    .line 350
    :pswitch_0
    const v2, 0x7f0c03dd

    .line 351
    .local v2, "titleResId":I
    const v1, 0x7f0c03de

    .line 354
    .local v1, "messageResId":I
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    const v2, 0x7f0c0dc7

    .line 356
    const v1, 0x7f0c0dc8

    .line 363
    :cond_0
    :goto_1
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/deviceinfo/Memory$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/deviceinfo/Memory$3;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v4, v6, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0137

    invoke-virtual {v4, v5, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    const v2, 0x7f0c0d9b

    .line 360
    const v1, 0x7f0c0d9d

    goto :goto_1

    .line 380
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :pswitch_1
    const v0, 0x7f0c03e0

    .line 383
    .local v0, "errMessageResId":I
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    const v0, 0x7f0c0da3

    .line 390
    :cond_2
    :goto_2
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c03df

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 386
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    const v0, 0x7f0c0db4

    goto :goto_2

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 244
    const v0, 0x7f140008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 245
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 229
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 233
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-result-object v2

    .line 235
    .local v2, "measure":Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    iget-object v3, v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 239
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2    # "measure":Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    :cond_2
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 240
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x7f1204db
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 223
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 225
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 283
    const-string v7, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 285
    invoke-static {p0}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 319
    :cond_0
    :goto_0
    return v6

    .line 289
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 290
    .local v1, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 291
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 293
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 295
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 304
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 305
    sput-object p2, Lcom/android/settings_ex/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 306
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 307
    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 308
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 311
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->unmount()V

    goto :goto_0

    .line 313
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->mount()V

    goto :goto_0

    .line 319
    .end local v1    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 249
    const v3, 0x7f1204db

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 250
    .local v1, "usb":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 252
    .local v0, "um":Landroid/os/UserManager;
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 254
    .local v2, "usbItemVisible":Z
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    return-void

    .line 252
    .end local v2    # "usbItemVisible":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->removeAllCategory()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->updateCategroty()V

    .line 171
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 177
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 179
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method
