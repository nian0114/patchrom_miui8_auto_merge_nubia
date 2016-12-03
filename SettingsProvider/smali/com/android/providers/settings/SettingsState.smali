.class final Lcom/android/providers/settings/SettingsState;
.super Ljava/lang/Object;
.source "SettingsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsState$Setting;,
        Lcom/android/providers/settings/SettingsState$MyHandler;
    }
.end annotation


# instance fields
.field private mDirty:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field public final mKey:I

.field private mLastNotWrittenMutationTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMaxBytesPerAppPackage:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextId:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPackageToMemoryUsage:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/settings/SettingsState$Setting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatePersistFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mWriteScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/File;II)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "key"    # I
    .param p4, "maxBytesPerAppPackage"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/providers/settings/SettingsState$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsState$MyHandler;-><init>(Lcom/android/providers/settings/SettingsState;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    .line 133
    iput-object p1, p0, Lcom/android/providers/settings/SettingsState;->mLock:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lcom/android/providers/settings/SettingsState;->mStatePersistFile:Ljava/io/File;

    .line 135
    iput p3, p0, Lcom/android/providers/settings/SettingsState;->mKey:I

    .line 136
    const/16 v0, 0x4e20

    if-ne p4, v0, :cond_0

    .line 137
    iput p4, p0, Lcom/android/providers/settings/SettingsState;->mMaxBytesPerAppPackage:I

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsState;->mPackageToMemoryUsage:Landroid/util/ArrayMap;

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->readStateSyncLocked()V

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    return-void

    .line 140
    :cond_0
    iput p4, p0, Lcom/android/providers/settings/SettingsState;->mMaxBytesPerAppPackage:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsState;->mPackageToMemoryUsage:Landroid/util/ArrayMap;

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$200(Lcom/android/providers/settings/SettingsState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsState;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->doWriteState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/settings/SettingsState;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsState;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/providers/settings/SettingsState;->mNextId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/providers/settings/SettingsState;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsState;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/android/providers/settings/SettingsState;->mNextId:J

    return-wide p1
.end method

.method static synthetic access$308(Lcom/android/providers/settings/SettingsState;)J
    .locals 4
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsState;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/providers/settings/SettingsState;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/providers/settings/SettingsState;->mNextId:J

    return-wide v0
.end method

.method private static base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->fromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-static {p0}, Lcom/android/providers/settings/SettingsState;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doWriteState()V
    .locals 14

    .prologue
    .line 353
    new-instance v6, Landroid/util/AtomicFile;

    iget-object v0, p0, Lcom/android/providers/settings/SettingsState;->mStatePersistFile:Ljava/io/File;

    invoke-direct {v6, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 358
    .local v6, "destination":Landroid/util/AtomicFile;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iget v13, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    .line 360
    .local v13, "version":I
    new-instance v11, Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-direct {v11, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 361
    .local v11, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/providers/settings/SettingsState$Setting;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsState;->mDirty:Z

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsState;->mWriteScheduled:Z

    .line 363
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    const/4 v8, 0x0

    .line 367
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 369
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 370
    .local v1, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 371
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 372
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 373
    const/4 v0, 0x0

    const-string v2, "settings"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    const/4 v0, 0x0

    const-string v2, "version"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 377
    .local v10, "settingCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 378
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/settings/SettingsState$Setting;

    .line 380
    .local v9, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    iget v0, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/providers/settings/SettingsState;->writeSingleSetting(ILorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "i":I
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    .end local v10    # "settingCount":I
    .end local v11    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/providers/settings/SettingsState$Setting;>;"
    .end local v13    # "version":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 388
    .restart local v1    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "i":I
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "settingCount":I
    .restart local v11    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/providers/settings/SettingsState$Setting;>;"
    .restart local v13    # "version":I
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    const-string v2, "settings"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 390
    invoke-virtual {v6, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    .end local v1    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "i":I
    .end local v10    # "settingCount":I
    :goto_1
    return-void

    .line 397
    :catch_0
    move-exception v12

    .line 398
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v0, "SettingsState"

    const-string v2, "Failed to write settings, restoring backup"

    invoke-static {v0, v2, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    invoke-virtual {v6, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 404
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static fromBytes([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 649
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p0

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 651
    .local v3, "sb":Ljava/lang/StringBuffer;
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .line 653
    .local v2, "last":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 654
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v0, v4

    .line 655
    .local v0, "ch":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 653
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 657
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getValueAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x0

    .line 444
    iget v4, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    const/16 v5, 0x79

    if-lt v4, v5, :cond_2

    .line 445
    const-string v4, "value"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 461
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 449
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string v4, "valueBase64"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "base64":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 451
    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 454
    goto :goto_0

    .line 457
    .end local v0    # "base64":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, "value"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "stored":Ljava/lang/String;
    const-string v4, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 459
    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 461
    goto :goto_0
.end method

.method private hasSettingLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBinary(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 611
    if-nez p0, :cond_0

    .line 612
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 615
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 616
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 617
    .local v1, "c":C
    const/16 v5, 0x20

    if-lt v1, v5, :cond_1

    const v5, 0xd7ff

    if-le v1, v5, :cond_2

    :cond_1
    const v5, 0xe000

    if-lt v1, v5, :cond_3

    const v5, 0xfffd

    if-gt v1, v5, :cond_3

    :cond_2
    move v0, v3

    .line 618
    .local v0, "allowedInXml":Z
    :goto_1
    if-nez v0, :cond_4

    .line 622
    .end local v0    # "allowedInXml":Z
    .end local v1    # "c":C
    :goto_2
    return v3

    .restart local v1    # "c":C
    :cond_3
    move v0, v4

    .line 617
    goto :goto_1

    .line 615
    .restart local v0    # "allowedInXml":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "allowedInXml":Z
    .end local v1    # "c":C
    :cond_5
    move v3, v4

    .line 622
    goto :goto_2
.end method

.method private parseSettingsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 510
    const-string v0, "version"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    .line 512
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 515
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_2

    if-ne v8, v11, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 516
    :cond_1
    if-eq v8, v11, :cond_0

    const/4 v0, 0x4

    if-eq v8, v0, :cond_0

    .line 520
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 521
    .local v7, "tagName":Ljava/lang/String;
    const-string v0, "setting"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "id"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, "id":Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsState;->getValueAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "value":Ljava/lang/String;
    const-string v0, "package"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/providers/settings/SettingsState$Setting;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsState$Setting;-><init>(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 533
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 492
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 495
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 496
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 500
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsState;->parseSettingsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 505
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readStateSyncLocked()V
    .locals 7

    .prologue
    .line 468
    iget-object v4, p0, Lcom/android/providers/settings/SettingsState;->mStatePersistFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 488
    :goto_0
    return-void

    .line 472
    :cond_0
    :try_start_0
    new-instance v4, Landroid/util/AtomicFile;

    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mStatePersistFile:Ljava/io/File;

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 478
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 479
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 473
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 474
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v4, "SettingsState"

    const-string v5, "No settings state"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing settings file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/settings/SettingsState;->mStatePersistFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 482
    :catch_2
    move-exception v4

    move-object v0, v4

    goto :goto_1
.end method

.method private scheduleWriteIfNeededLocked()V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsState;->mDirty:Z

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsState;->mDirty:Z

    .line 315
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->writeStateAsyncLocked()V

    .line 317
    :cond_0
    return-void
.end method

.method static setValueAttribute(ILorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .param p0, "version"    # I
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 425
    const/16 v0, 0x79

    if-lt p0, v0, :cond_2

    .line 426
    if-nez p2, :cond_0

    .line 441
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-static {p2}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    const-string v0, "valueBase64"

    invoke-static {p2}, Lcom/android/providers/settings/SettingsState;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 431
    :cond_1
    const-string v0, "value"

    invoke-interface {p1, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 435
    :cond_2
    if-nez p2, :cond_3

    .line 436
    const-string v0, "value"

    const-string v1, "null"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 438
    :cond_3
    const-string v0, "value"

    invoke-interface {p1, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static toBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [B

    .line 639
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 640
    .local v3, "resultIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 641
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 642
    .local v0, "ch":C
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 643
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    int-to-byte v5, v0

    aput-byte v5, v2, v4

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v0    # "ch":C
    :cond_0
    return-object v2
.end method

.method private updateMemoryUsagePerPackageLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 277
    iget v6, p0, Lcom/android/providers/settings/SettingsState;->mMaxBytesPerAppPackage:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v6, "android"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 285
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 286
    .local v4, "oldValueSize":I
    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 287
    .local v3, "newValueSize":I
    :goto_2
    sub-int v1, v3, v4

    .line 289
    .local v1, "deltaSize":I
    iget-object v6, p0, Lcom/android/providers/settings/SettingsState;->mPackageToMemoryUsage:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 290
    .local v0, "currentSize":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    .end local v1    # "deltaSize":I
    :cond_2
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 293
    .local v2, "newSize":I
    iget v5, p0, Lcom/android/providers/settings/SettingsState;->mMaxBytesPerAppPackage:I

    if-le v2, v5, :cond_5

    .line 294
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "You are adding too many system settings. You should stop using system settings for app specific data package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "currentSize":Ljava/lang/Integer;
    .end local v2    # "newSize":I
    .end local v3    # "newValueSize":I
    .end local v4    # "oldValueSize":I
    :cond_3
    move v4, v5

    .line 285
    goto :goto_1

    .restart local v4    # "oldValueSize":I
    :cond_4
    move v3, v5

    .line 286
    goto :goto_2

    .line 304
    .restart local v0    # "currentSize":Ljava/lang/Integer;
    .restart local v2    # "newSize":I
    .restart local v3    # "newValueSize":I
    :cond_5
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mPackageToMemoryUsage:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static writeSingleSetting(ILorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "version"    # I
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 410
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    invoke-static {p5}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    const-string v0, "setting"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    const-string v0, "id"

    invoke-interface {p1, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    const-string v0, "name"

    invoke-interface {p1, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    invoke-static {p0, p1, p4}, Lcom/android/providers/settings/SettingsState;->setValueAttribute(ILorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 419
    const-string v0, "package"

    invoke-interface {p1, v1, v0, p5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const-string v0, "setting"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private writeStateAsyncLocked()V
    .locals 14

    .prologue
    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 322
    .local v0, "currentTimeMillis":J
    iget-boolean v5, p0, Lcom/android/providers/settings/SettingsState;->mWriteScheduled:Z

    if-eqz v5, :cond_1

    .line 323
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget-wide v10, p0, Lcom/android/providers/settings/SettingsState;->mLastNotWrittenMutationTimeMillis:J

    sub-long v6, v0, v10

    .line 328
    .local v6, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v10, 0x7d0

    cmp-long v5, v6, v10

    if-ltz v5, :cond_0

    .line 329
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 346
    .end local v6    # "timeSinceLastNotWrittenMutationMillis":J
    :goto_0
    return-void

    .line 334
    .restart local v6    # "timeSinceLastNotWrittenMutationMillis":J
    :cond_0
    iget-wide v10, p0, Lcom/android/providers/settings/SettingsState;->mLastNotWrittenMutationTimeMillis:J

    const-wide/16 v12, 0x7d0

    add-long/2addr v10, v12

    sub-long/2addr v10, v0

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 336
    .local v2, "maxDelayMillis":J
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 338
    .local v8, "writeDelayMillis":J
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 339
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 341
    .end local v2    # "maxDelayMillis":J
    .end local v4    # "message":Landroid/os/Message;
    .end local v6    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v8    # "writeDelayMillis":J
    :cond_1
    iput-wide v0, p0, Lcom/android/providers/settings/SettingsState;->mLastNotWrittenMutationTimeMillis:J

    .line 342
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 343
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v5, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/settings/SettingsState;->mWriteScheduled:Z

    goto :goto_0
.end method


# virtual methods
.method public deleteSettingLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsState;->hasSettingLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 258
    :goto_0
    return v1

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsState$Setting;

    .line 254
    .local v0, "oldState":Lcom/android/providers/settings/SettingsState$Setting;
    # getter for: Lcom/android/providers/settings/SettingsState$Setting;->packageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsState$Setting;->access$000(Lcom/android/providers/settings/SettingsState$Setting;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/providers/settings/SettingsState$Setting;->value:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsState$Setting;->access$100(Lcom/android/providers/settings/SettingsState$Setting;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/SettingsState;->updateMemoryUsagePerPackageLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->scheduleWriteIfNeededLocked()V

    .line 258
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public destroyLocked(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    .line 263
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsState;->mDirty:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsState$Setting;

    goto :goto_0
.end method

.method public getSettingNamesLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 191
    .local v3, "settingsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getVersionLocked()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    return v0
.end method

.method public insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v3

    .line 221
    :cond_1
    iget-object v4, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsState$Setting;

    .line 222
    .local v0, "oldState":Lcom/android/providers/settings/SettingsState$Setting;
    if-eqz v0, :cond_2

    # getter for: Lcom/android/providers/settings/SettingsState$Setting;->value:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsState$Setting;->access$100(Lcom/android/providers/settings/SettingsState$Setting;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "oldValue":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {v0, p2, p3}, Lcom/android/providers/settings/SettingsState$Setting;->update(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    :goto_2
    invoke-direct {p0, p3, v1, p2}, Lcom/android/providers/settings/SettingsState;->updateMemoryUsagePerPackageLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->scheduleWriteIfNeededLocked()V

    .line 237
    const/4 v3, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "oldValue":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 229
    .restart local v1    # "oldValue":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/android/providers/settings/SettingsState$Setting;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsState$Setting;-><init>(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v2, "state":Lcom/android/providers/settings/SettingsState$Setting;
    iget-object v3, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public onPackageRemovedLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 167
    .local v2, "removedSomething":Z
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 168
    .local v4, "settingCount":I
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 169
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "name":Ljava/lang/String;
    sget-object v5, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/SettingsState$Setting;

    .line 176
    .local v3, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    # getter for: Lcom/android/providers/settings/SettingsState$Setting;->packageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/settings/SettingsState$Setting;->access$000(Lcom/android/providers/settings/SettingsState$Setting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    iget-object v5, p0, Lcom/android/providers/settings/SettingsState;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 178
    const/4 v2, 0x1

    goto :goto_1

    .line 182
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_2
    if-eqz v2, :cond_3

    .line 183
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->scheduleWriteIfNeededLocked()V

    .line 185
    :cond_3
    return-void
.end method

.method public persistSyncLocked()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->doWriteState()V

    .line 244
    return-void
.end method

.method public setVersionLocked(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 155
    iget v0, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    if-ne p1, v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iput p1, p0, Lcom/android/providers/settings/SettingsState;->mVersion:I

    .line 160
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsState;->scheduleWriteIfNeededLocked()V

    goto :goto_0
.end method

.method public updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsState;->hasSettingLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
