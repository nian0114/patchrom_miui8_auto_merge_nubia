.class public Lcom/android/settings_ex/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$1;,
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;
    }
.end annotation


# static fields
.field static final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sHandler:Landroid/os/Handler;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;

.field public final sipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public static clearUidCache()V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 113
    return-void
.end method

.method public static startRequestQueue()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 87
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 92
    :cond_0
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 93
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    .line 94
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    .line 95
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 97
    :cond_1
    monitor-exit v1

    .line 99
    :cond_2
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopRequestQueue()V
    .locals 2

    .prologue
    .line 102
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 108
    :cond_0
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public loadNameAndIcon()V
    .locals 25

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 248
    .local v16, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v17

    .line 249
    .local v17, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v13, v0, [Ljava/lang/String;

    .line 252
    .local v13, "packageLabels":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 256
    .local v9, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 257
    .local v19, "userId":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_5

    .line 259
    :try_start_0
    aget-object v21, v13, v7

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-interface {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 261
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_3

    .line 262
    const-string v21, "PowerUsageSummary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Retrieving null app info for package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v13, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 266
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 267
    .local v10, "label":Ljava/lang/CharSequence;
    if-eqz v10, :cond_4

    .line 268
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v7

    .line 270
    :cond_4
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 272
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "label":Ljava/lang/CharSequence;
    :cond_5
    array-length v0, v13

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 282
    const/16 v21, 0x0

    aget-object v21, v13, v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 313
    .end local v7    # "i":I
    .end local v9    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v13    # "packageLabels":[Ljava/lang/String;
    .end local v19    # "userId":I
    :cond_6
    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 314
    .local v18, "uidString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    .line 315
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 318
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_8

    .line 319
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 322
    :cond_8
    new-instance v20, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 323
    .local v20, "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 326
    sget-object v21, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v21, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v21, :cond_0

    .line 328
    sget-object v21, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    sget-object v22, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 275
    .end local v18    # "uidString":Ljava/lang/String;
    .end local v20    # "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    .restart local v7    # "i":I
    .restart local v9    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v13    # "packageLabels":[Ljava/lang/String;
    .restart local v19    # "userId":I
    :catch_0
    move-exception v6

    .line 276
    .local v6, "e":Landroid/os/RemoteException;
    const-string v21, "PowerUsageSummary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while retrieving app info for package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v13, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 285
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v11, :cond_6

    aget-object v15, v5, v8

    .line 287
    .local v15, "pkgName":Ljava/lang/String;
    const/16 v21, 0x0

    :try_start_1
    move/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v9, v15, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 288
    .local v14, "pi":Landroid/content/pm/PackageInfo;
    if-nez v14, :cond_b

    .line 289
    const-string v21, "PowerUsageSummary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Retrieving null package info for package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v14    # "pi":Landroid/content/pm/PackageInfo;
    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 293
    .restart local v14    # "pi":Landroid/content/pm/PackageInfo;
    :cond_b
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 294
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v21, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 296
    .local v12, "nm":Ljava/lang/CharSequence;
    if-eqz v12, :cond_a

    .line 297
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 298
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 299
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 300
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 305
    .end local v12    # "nm":Ljava/lang/CharSequence;
    .end local v14    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v6

    .line 306
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string v21, "PowerUsageSummary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while retrieving package info for package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
