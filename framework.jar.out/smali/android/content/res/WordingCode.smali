.class public Landroid/content/res/WordingCode;
.super Ljava/lang/Object;
.source "WordingCode.java"


# static fields
.field private static final COLUME_ID:Ljava/lang/String; = "_id"

.field private static final COLUME_NEW_VALUE:Ljava/lang/String; = "new_value"

.field private static final COLUME_OLD_VALUE:Ljava/lang/String; = "old_value"

.field private static final COLUME_PACKAGENAME:Ljava/lang/String; = "packagename"

.field private static final DB_FNAME:Ljava/lang/String; = "/sdcard/log/wording.db"

.field private static final LOG_BASE:Z = true

.field private static final LOG_FLOW:Z = false

.field private static final LOG_INFO:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WordingCode"

.field private static final TABLE_NAME:Ljava/lang/String; = "StringTb"


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field private mResources:Landroid/content/res/Resources;

.field private m_bDBFileExist:Z

.field private m_bEnableStringToolConvert:Z

.field private m_bGettingStringDB:Z

.field private m_bNeedCheckDBFileExist:Z

.field private m_dbStringModifyInfo:Landroid/database/sqlite/SQLiteDatabase;

.field private m_isEnable:Z


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Landroid/content/res/WordingCode;->m_bEnableStringToolConvert:Z

    iput-boolean v3, p0, Landroid/content/res/WordingCode;->m_bNeedCheckDBFileExist:Z

    iput-boolean v3, p0, Landroid/content/res/WordingCode;->m_bDBFileExist:Z

    iput-boolean v2, p0, Landroid/content/res/WordingCode;->m_bGettingStringDB:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/WordingCode;->m_dbStringModifyInfo:Landroid/database/sqlite/SQLiteDatabase;

    iput-boolean v2, p0, Landroid/content/res/WordingCode;->m_isEnable:Z

    iput-object p1, p0, Landroid/content/res/WordingCode;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Landroid/content/res/WordingCode;->mAssets:Landroid/content/res/AssetManager;

    const-string v1, "persist.sys.wording.tool.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rst":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroid/content/res/WordingCode;->m_isEnable:Z

    :cond_0
    const-string v1, "WordingCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_isEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/content/res/WordingCode;->m_isEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getTextFromExternal_byID(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/content/res/WordingCode;->m_bEnableStringToolConvert:Z

    if-nez v1, :cond_1

    move-object v10, v0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const/4 v10, 0x0

    .local v10, "strNewValue":Ljava/lang/String;
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_2

    move-object v10, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/content/res/WordingCode;->openDatabase()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v10, v0

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_id=? and packagename=?"

    .local v3, "Selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/content/res/WordingCode;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/content/res/WordingCode;->m_dbStringModifyInfo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "StringTb"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "new_value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v3    # "Selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static instance(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/WordingCode;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    new-instance v0, Landroid/content/res/WordingCode;

    invoke-direct {v0, p0, p1}, Landroid/content/res/WordingCode;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public static isDeBug()Z
    .locals 3

    .prologue
    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rst":Ljava/lang/String;
    const-string v1, "WordingCode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private openDatabase()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/content/res/WordingCode;->m_bDBFileExist:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Landroid/content/res/WordingCode;->m_bGettingStringDB:Z

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Landroid/content/res/WordingCode;->m_dbStringModifyInfo:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_4

    iput-boolean v2, p0, Landroid/content/res/WordingCode;->m_bGettingStringDB:Z

    :try_start_0
    iget-boolean v4, p0, Landroid/content/res/WordingCode;->m_bNeedCheckDBFileExist:Z

    if-ne v4, v2, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/content/res/WordingCode;->m_bNeedCheckDBFileExist:Z

    new-instance v0, Ljava/io/File;

    const-string v4, "/sdcard/log/wording.db"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Landroid/content/res/WordingCode;->m_bDBFileExist:Z

    .end local v0    # "dbFile":Ljava/io/File;
    :cond_2
    iget-boolean v4, p0, Landroid/content/res/WordingCode;->m_bDBFileExist:Z

    if-eqz v4, :cond_3

    const-string v4, "/sdcard/log/wording.db"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Landroid/content/res/WordingCode;->m_dbStringModifyInfo:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-boolean v3, p0, Landroid/content/res/WordingCode;->m_bGettingStringDB:Z

    :cond_4
    :goto_1
    iget-object v4, p0, Landroid/content/res/WordingCode;->m_dbStringModifyInfo:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_5

    :goto_2
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v3, p0, Landroid/content/res/WordingCode;->m_bGettingStringDB:Z

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Landroid/content/res/WordingCode;->m_bGettingStringDB:Z

    throw v2

    :cond_5
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public final getPooledStringForCookie(III)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "block"    # I
    .param p2, "id"    # I
    .param p3, "resourceId"    # I

    .prologue
    invoke-direct {p0, p3}, Landroid/content/res/WordingCode;->getTextFromExternal_byID(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "strModified":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "strModified":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "strModified":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/content/res/WordingCode;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "value":Ljava/lang/CharSequence;
    move-object v0, v1

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/WordingCode;->getTextFromExternal_byID(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "strModified":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "strModified":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "strModified":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/content/res/WordingCode;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/res/WordingCode;->m_isEnable:Z

    return v0
.end method
