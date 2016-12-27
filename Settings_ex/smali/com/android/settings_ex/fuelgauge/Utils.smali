.class public Lcom/android/settings_ex/fuelgauge/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastActiveProfile(ZLandroid/content/Context;)V
    .locals 3
    .param p0, "isActive"    # Z
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ztemt.Profile.ACTION_PROFILE_POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "ztemt.Profile.EXTRA_PROFILE_POWERSAVING_STATE"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "inclSeconds"    # Z

    .prologue
    const v5, 0x15180

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 47
    .local v4, "seconds":I
    if-nez p3, :cond_0

    .line 49
    add-int/lit8 v4, v4, 0x1e

    .line 52
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 53
    .local v2, "minutes":I
    if-le v4, v5, :cond_1

    .line 54
    div-int v0, v4, v5

    .line 55
    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 57
    :cond_1
    const/16 v5, 0xe10

    if-le v4, v5, :cond_2

    .line 58
    div-int/lit16 v1, v4, 0xe10

    .line 59
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 61
    :cond_2
    const/16 v5, 0x3c

    if-le v4, v5, :cond_3

    .line 62
    div-int/lit8 v2, v4, 0x3c

    .line 63
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 65
    :cond_3
    if-eqz p3, :cond_7

    .line 66
    if-lez v0, :cond_4

    .line 67
    const v5, 0x7f0c0625

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 69
    :cond_4
    if-lez v1, :cond_5

    .line 70
    const v5, 0x7f0c0626

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_5
    if-lez v2, :cond_6

    .line 73
    const v5, 0x7f0c0627

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :cond_6
    const v5, 0x7f0c0628

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_7
    if-lez v0, :cond_8

    .line 79
    const v5, 0x7f0c0629

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_8
    if-lez v1, :cond_9

    .line 82
    const v5, 0x7f0c062a

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 85
    :cond_9
    const v5, 0x7f0c062b

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static isProfileServiceWork(Landroid/content/Context;)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 113
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 114
    .local v1, "mAm":Landroid/app/ActivityManager;
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_1

    :cond_0
    move v4, v6

    .line 125
    :goto_0
    return v4

    .line 118
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 119
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "mName":Ljava/lang/String;
    const-class v4, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 121
    goto :goto_0

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "mName":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 125
    goto :goto_0
.end method

.method public static startProfileService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "powersavingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    return-void
.end method
