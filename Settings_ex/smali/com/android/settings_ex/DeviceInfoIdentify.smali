.class Lcom/android/settings_ex/DeviceInfoIdentify;
.super Ljava/lang/Object;
.source "DeviceInfoIdentify.java"


# static fields
.field private static mRamInfo:Ljava/lang/String;

.field private static mRomInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/android/settings_ex/DeviceInfoIdentify;->mRamInfo:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/android/settings_ex/DeviceInfoIdentify;->mRomInfo:Ljava/lang/String;

    return-void
.end method

.method public static getDeviceVersion(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 69
    :try_start_0
    const-string v5, "/sys/ztemt_hw_version/config"

    invoke-static {v5}, Lcom/android/settings_ex/DeviceInfoIdentify;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "config":Ljava/lang/String;
    const-string v5, "HC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    const/4 v4, 0x1

    .line 121
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-static {p0}, Lcom/android/settings_ex/DeviceInfoIdentify;->getRamInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "ramInfo":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/DeviceInfoIdentify;->getRomInfo()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "romInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 97
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "NX531J"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const-string v5, "4.0G"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "64.0G"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    const/4 v4, 0x2

    goto :goto_0

    .line 105
    :cond_2
    const-string v5, "6.0G"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "64.0G"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    const/4 v4, 0x3

    goto :goto_0

    .line 111
    :cond_3
    const-string v5, "6.0G"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "128.0G"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    const/4 v4, 0x4

    goto :goto_0
.end method

.method private static getPhoneStorageDirectory()Ljava/io/File;
    .locals 7

    .prologue
    .line 319
    const/4 v3, 0x0

    .line 321
    .local v3, "result":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 323
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 347
    :goto_0
    return-object v4

    .line 329
    :cond_0
    :try_start_0
    const-string v4, "android.os.Environment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSecondaryStorageDirectory"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 333
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 335
    const/4 v5, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/File;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    move-object v4, v3

    .line 347
    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getPhoneStorageState()Ljava/lang/String;
    .locals 7

    .prologue
    .line 279
    const/4 v3, 0x0

    .line 281
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 283
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 309
    :goto_0
    return-object v4

    .line 289
    :cond_0
    :try_start_0
    const-string v4, "android.os.Environment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSecondaryStorageState"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 293
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 295
    const/4 v5, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v4, v3

    .line 309
    goto :goto_0

    .line 299
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    const-string v4, "unmounted"

    goto :goto_0
.end method

.method private static getRamInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    sget-object v10, Lcom/android/settings_ex/DeviceInfoIdentify;->mRamInfo:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 165
    sget-object v10, Lcom/android/settings_ex/DeviceInfoIdentify;->mRamInfo:Ljava/lang/String;

    .line 223
    :goto_0
    return-object v10

    .line 177
    :cond_0
    :try_start_0
    const-string v10, "com.android.internal.util.MemInfoReader"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 179
    .local v6, "readerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 181
    .local v4, "objectMemInfoReader":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 183
    const-string v11, "readMemInfo"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 185
    .local v3, "methodReadMemInfo":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    .line 187
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v11, "getTotalSize"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 191
    .local v2, "methodGetTotalSize":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 193
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "size":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 201
    .local v5, "ramTotal":I
    int-to-long v10, v5

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    mul-long v8, v10, v12

    .line 203
    .local v8, "totalSize":J
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 205
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {p0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings_ex/DeviceInfoIdentify;->mRamInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v2    # "methodGetTotalSize":Ljava/lang/reflect/Method;
    .end local v3    # "methodReadMemInfo":Ljava/lang/reflect/Method;
    .end local v5    # "ramTotal":I
    .end local v7    # "size":Ljava/lang/String;
    .end local v8    # "totalSize":J
    :cond_1
    sget-object v10, Lcom/android/settings_ex/DeviceInfoIdentify;->mRamInfo:Ljava/lang/String;

    goto :goto_0

    .line 215
    .end local v4    # "objectMemInfoReader":Ljava/lang/Object;
    .end local v6    # "readerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    const-string v10, "unmounted"

    goto :goto_0
.end method

.method private static getRomInfo()Ljava/lang/String;
    .locals 16

    .prologue
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 233
    sget-object v8, Lcom/android/settings_ex/DeviceInfoIdentify;->mRomInfo:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 235
    sget-object v8, Lcom/android/settings_ex/DeviceInfoIdentify;->mRomInfo:Ljava/lang/String;

    .line 269
    .local v0, "blockCount":J
    .local v2, "blockSize":J
    .local v5, "sf":Landroid/os/StatFs;
    .local v6, "total":D
    :goto_0
    return-object v8

    .line 239
    .end local v0    # "blockCount":J
    .end local v2    # "blockSize":J
    .end local v5    # "sf":Landroid/os/StatFs;
    .end local v6    # "total":D
    :cond_0
    const-string v8, "mounted"

    invoke-static {}, Lcom/android/settings_ex/DeviceInfoIdentify;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 241
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Lcom/android/settings_ex/DeviceInfoIdentify;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v5    # "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 245
    .restart local v2    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v0, v8

    .line 247
    .restart local v0    # "blockCount":J
    mul-long v8, v0, v2

    long-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double v6, v8, v10

    .line 251
    .restart local v6    # "total":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_1

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    mul-double v10, v6, v14

    double-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 257
    :cond_1
    const/4 v4, 0x0

    .line 259
    .local v4, "n":I
    :goto_1
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_3

    add-int/lit8 v8, v4, 0x1

    int-to-double v8, v8

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v8, v6, v8

    if-gez v8, :cond_2

    int-to-double v8, v4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v8, v6, v8

    if-gez v8, :cond_3

    .line 261
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 265
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v4, 0x1

    int-to-double v10, v9

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".0 GB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings_ex/DeviceInfoIdentify;->mRomInfo:Ljava/lang/String;

    .line 269
    :cond_4
    sget-object v8, Lcom/android/settings_ex/DeviceInfoIdentify;->mRomInfo:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 147
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method
