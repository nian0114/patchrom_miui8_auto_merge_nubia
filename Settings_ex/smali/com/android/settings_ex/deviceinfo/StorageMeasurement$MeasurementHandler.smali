.class Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 315
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 297
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 316
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 317
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 6
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 378
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v2

    .line 383
    .local v2, "stats":[J
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    # setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 384
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    # setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v2    # "stats":[J
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    .line 390
    return-void

    .line 378
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 385
    .restart local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "StorageMeasurement"

    const-string v4, "Problem in container service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 28
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v12, v5

    .line 394
    .local v12, "context":Landroid/content/Context;
    :goto_0
    if-nez v12, :cond_2

    .line 460
    :cond_0
    :goto_1
    return-void

    .line 393
    .end local v12    # "context":Landroid/content/Context;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 397
    .restart local v12    # "context":Landroid/content/Context;
    :cond_2
    new-instance v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 398
    .local v6, "details":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 400
    .local v8, "finished":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 403
    const-string v5, "user"

    invoke-virtual {v12, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 405
    .local v24, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 407
    .local v25, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 408
    .local v7, "currentUser":I
    new-instance v13, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v13, v7}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 412
    .local v13, "currentEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/16 v16, 0x1

    .line 414
    .local v16, "measureMedia":Z
    :goto_2
    if-eqz v16, :cond_6

    .line 415
    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 416
    .local v19, "type":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 417
    .local v17, "path":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v20

    .line 418
    .local v20, "size":J
    iget-object v5, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 412
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "measureMedia":Z
    .end local v17    # "path":Ljava/io/File;
    .end local v19    # "type":Ljava/lang/String;
    .end local v20    # "size":J
    :cond_5
    const/16 v16, 0x0

    goto :goto_2

    .line 423
    .restart local v16    # "measureMedia":Z
    :cond_6
    if-eqz v16, :cond_7

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v13}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 426
    .restart local v17    # "path":Ljava/io/File;
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v5, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 431
    .end local v17    # "path":Ljava/io/File;
    :cond_7
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 432
    .local v22, "user":Landroid/content/pm/UserInfo;
    new-instance v23, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v22

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 433
    .local v23, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v20

    .line 434
    .restart local v20    # "size":J
    iget-object v5, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-wide/from16 v1, v20

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v5, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    .line 424
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "size":J
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .end local v23    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v17

    goto :goto_4

    .line 438
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 439
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 440
    :cond_a
    const/16 v5, 0x2200

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 446
    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 447
    .local v9, "count":I
    new-instance v4, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 449
    .local v4, "observer":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 451
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v22

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v26

    move/from16 v0, v26

    if-ne v5, v0, :cond_b

    .line 452
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 453
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 458
    .end local v4    # "observer":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v9    # "count":I
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 321
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 323
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 329
    .local v0, "context":Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 333
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 334
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 335
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 336
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 338
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 339
    .local v2, "service":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 346
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 347
    .local v1, "imcs":Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 348
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 352
    .end local v1    # "imcs":Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 353
    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 354
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 355
    .restart local v0    # "context":Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 356
    monitor-exit v4

    goto :goto_0

    .line 362
    .end local v0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 359
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 360
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 362
    .end local v0    # "context":Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 367
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 371
    :pswitch_4
    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
