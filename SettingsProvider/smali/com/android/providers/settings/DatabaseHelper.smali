.class Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUserHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 98
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "global"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "android_metadata"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 124
    invoke-static {p2}, Lcom/android/providers/settings/DatabaseHelper;->dbNameForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x76

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 125
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 126
    iput p2, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    .line 127
    return-void
.end method

.method private createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 170
    const-string v0, "CREATE TABLE global (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string v0, "CREATE INDEX globalIndex1 ON global (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 161
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method static dbNameForUser(I)Ljava/lang/String;
    .locals 3
    .param p0, "userHandle"    # I

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string v1, "settings.db"

    .line 119
    :goto_0
    return-object v1

    .line 117
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "settings.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 2759
    const-string v0, "system"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 2764
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2765
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .end local p4    # "defaultValue":I
    :cond_0
    return p4
.end method

.method private getOldDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060010

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 2770
    const/4 v8, 0x0

    .line 2772
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2774
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2775
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2776
    .local v9, "val":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2779
    .end local p4    # "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2781
    .end local v9    # "val":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p4

    .restart local v9    # "val":Ljava/lang/String;
    .restart local p4    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p4, v9

    .line 2776
    goto :goto_0

    .line 2779
    .end local v9    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2166
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2168
    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2170
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f030000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 2171
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    const-string v22, "bookmarks"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2173
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 2177
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v7, :cond_2

    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2179
    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2183
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2184
    .local v12, "name":Ljava/lang/String;
    const-string v22, "bookmark"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2244
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 2188
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "type":I
    :cond_3
    const/16 v22, 0x0

    const-string v23, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2189
    .local v16, "pkg":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "class"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2190
    .local v5, "cls":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "shortcut"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2191
    .local v17, "shortcutStr":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "category"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2193
    .local v4, "category":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 2194
    .local v18, "shortcutValue":I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2195
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2239
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v20    # "type":I
    :catch_0
    move-exception v8

    .line 2240
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2201
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :cond_4
    if-eqz v16, :cond_5

    if-eqz v5, :cond_5

    .line 2202
    const/4 v10, 0x0

    .line 2203
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2205
    .local v6, "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 2218
    :goto_2
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2219
    .local v11, "intent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2221
    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2231
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .local v19, "title":Ljava/lang/String;
    :goto_3
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2232
    const-string v22, "intent"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    const-string v22, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2235
    const-string v22, "bookmarks"

    const-string v23, "shortcut = ?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2237
    const-string v22, "bookmarks"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2241
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_1
    move-exception v8

    .line 2242
    .local v8, "e":Ljava/io/IOException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2206
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "depth":I
    .restart local v10    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :catch_2
    move-exception v8

    .line 2207
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2209
    .local v14, "packages":[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2211
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 2212
    :catch_3
    move-exception v9

    .line 2213
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2222
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "packages":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 2223
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 2224
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v19, ""

    .restart local v19    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .line 2226
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/String;
    :cond_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": missing package/class or category attributes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2746
    return-void

    .line 2744
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v2, 0x1

    .line 2420
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f070000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2422
    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2424
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2427
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2429
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "base"    # I

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2756
    return-void
.end method

.method private loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2555
    const/4 v2, 0x0

    .line 2557
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v6, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2561
    const-string v6, "airplane_mode_on"

    const v7, 0x7f040001

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2564
    const-string v6, "theater_mode_on"

    const v7, 0x7f040002

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2567
    const-string v6, "airplane_mode_radios"

    const/high16 v7, 0x7f060000

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2570
    const-string v6, "airplane_mode_toggleable_radios"

    const v7, 0x7f060001

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2573
    const-string v6, "assisted_gps_enabled"

    const v7, 0x7f04000c

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2576
    const-string v6, "auto_time"

    const v7, 0x7f040003

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2579
    const-string v6, "auto_time_zone"

    const v7, 0x7f040004

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2582
    const-string v7, "stay_on_while_plugged_in"

    const-string v6, "1"

    const-string v8, "ro.kernel.qemu"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f040022

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    move v6, v4

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v7, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2587
    const-string v6, "wifi_sleep_policy"

    const v7, 0x7f050003

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2590
    const-string v6, "mode_ringer"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2594
    const-string v6, "package_verifier_enable"

    const v7, 0x7f04000b

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2597
    const-string v6, "wifi_on"

    const v7, 0x7f04000f

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2600
    const-string v6, "wifi_networks_available_notification_on"

    const v7, 0x7f040010

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2603
    const-string v6, "bluetooth_on"

    const v7, 0x7f040008

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2607
    const-string v6, "cdma_cell_broadcast_sms"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2611
    const-string v7, "data_roaming"

    const-string v6, "true"

    const-string v8, "ro.com.android.dataroaming"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v7, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2616
    const-string v6, "device_provisioned"

    const v7, 0x7f040018

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2619
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2621
    .local v0, "maxBytes":I
    if-lez v0, :cond_1

    .line 2622
    const-string v6, "download_manager_max_bytes_over_mobile"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2626
    :cond_1
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2628
    .local v1, "recommendedMaxBytes":I
    if-lez v1, :cond_2

    .line 2629
    const-string v6, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2634
    :cond_2
    const-string v6, "mobile_data"

    const-string v7, "true"

    const-string v8, "ro.com.android.mobiledata"

    const-string v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v6, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2639
    const-string v4, "netstats_enabled"

    const v5, 0x7f04000d

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2642
    const-string v4, "usb_mass_storage_enabled"

    const v5, 0x7f04000e

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2645
    const-string v4, "wifi_max_dhcp_retry_count"

    const v5, 0x7f05000d

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2648
    const-string v4, "wifi_display_on"

    const v5, 0x7f040009

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2651
    const-string v4, "lock_sound"

    const v5, 0x7f060009

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2653
    const-string v4, "unlock_sound"

    const v5, 0x7f06000a

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2655
    const-string v4, "trusted_sound"

    const v5, 0x7f06000b

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2657
    const-string v4, "power_sounds_enabled"

    const v5, 0x7f050004

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2659
    const-string v4, "low_battery_sound"

    const v5, 0x7f060004

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2661
    const-string v4, "dock_sounds_enabled"

    const v5, 0x7f050005

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2663
    const-string v4, "desk_dock_sound"

    const v5, 0x7f060005

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2665
    const-string v4, "desk_undock_sound"

    const v5, 0x7f060006

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2667
    const-string v4, "car_dock_sound"

    const v5, 0x7f060007

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2669
    const-string v4, "car_undock_sound"

    const v5, 0x7f060008

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2671
    const-string v4, "wireless_charging_started_sound"

    const v5, 0x7f06000c

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2674
    const-string v4, "dock_audio_media_enabled"

    const v5, 0x7f050007

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2677
    const-string v4, "set_install_location"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2678
    const-string v4, "default_install_location"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2682
    const-string v4, "emergency_tone"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2685
    const-string v4, "call_auto_retry"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2690
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 2691
    .local v3, "type":I
    const-string v4, "preferred_network_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2695
    const-string v4, "ro.telephony.default_cdma_sub"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2697
    const-string v4, "subscription_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2699
    const-string v4, "low_battery_sound_timeout"

    const v5, 0x7f05000e

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2702
    const-string v4, "wifi_scan_always_enabled"

    const v5, 0x7f05000f

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2705
    const-string v4, "heads_up_notifications_enabled"

    const v5, 0x7f050011

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2708
    const-string v4, "device_name"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2710
    const-string v4, "guest_user_enabled"

    const v5, 0x7f040026

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2717
    const-string v4, "volte_vt_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2729
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2731
    :cond_3
    return-void

    .end local v0    # "maxBytes":I
    .end local v1    # "recommendedMaxBytes":I
    .end local v3    # "type":I
    :cond_4
    move v6, v5

    .line 2582
    goto/16 :goto_0

    :cond_5
    move v6, v5

    .line 2611
    goto/16 :goto_1

    .restart local v0    # "maxBytes":I
    .restart local v1    # "recommendedMaxBytes":I
    :cond_6
    move v4, v5

    .line 2634
    goto/16 :goto_2

    .line 2729
    .end local v0    # "maxBytes":I
    .end local v1    # "recommendedMaxBytes":I
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    throw v4
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2751
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2547
    const-string v0, "backup_enabled"

    const v1, 0x7f040011

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2550
    const-string v0, "backup_transport"

    const v1, 0x7f060003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2552
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2432
    const/4 v0, 0x0

    .line 2434
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2437
    const-string v4, "location_providers_allowed"

    const v5, 0x7f060002

    invoke-direct {p0, v0, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2440
    const-string v4, "ro.com.android.wifi-watchlist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2441
    .local v1, "wifiWatchList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2442
    const-string v4, "wifi_watchdog_watch_list"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2450
    :cond_0
    const-string v4, "mock_location"

    const-string v5, "1"

    const-string v6, "ro.allow.mock.location"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2453
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2455
    const-string v2, "mount_play_not_snd"

    const v4, 0x7f040013

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2458
    const-string v2, "mount_ums_autostart"

    const v4, 0x7f040014

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2461
    const-string v2, "mount_ums_prompt"

    const v4, 0x7f040015

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2464
    const-string v2, "mount_ums_notify_enabled"

    const v4, 0x7f040016

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2467
    const-string v2, "accessibility_script_injection"

    const v4, 0x7f04001b

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2470
    const-string v2, "accessibility_web_content_key_bindings"

    const v4, 0x7f06000d

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2473
    const-string v2, "long_press_timeout"

    const v4, 0x7f05000b

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2476
    const-string v2, "touch_exploration_enabled"

    const v4, 0x7f04001d

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2479
    const-string v2, "speak_password"

    const v4, 0x7f04001c

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2482
    const-string v2, "accessibility_script_injection_url"

    const v4, 0x7f06000e

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2485
    const-string v2, "ro.lockscreen.disable.default"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2486
    const-string v2, "lockscreen.disabled"

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2492
    :goto_0
    const-string v2, "screensaver_enabled"

    const v3, 0x112006b

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2494
    const-string v2, "screensaver_activate_on_dock"

    const v3, 0x112006c

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2496
    const-string v2, "screensaver_activate_on_sleep"

    const v3, 0x112006d

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2498
    const-string v2, "screensaver_components"

    const v3, 0x1040040

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2500
    const-string v2, "screensaver_default_component"

    const v3, 0x1040040

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2503
    const-string v2, "accessibility_display_magnification_enabled"

    const v3, 0x7f04001e

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2506
    const-string v2, "accessibility_display_magnification_scale"

    const v3, 0x7f070002

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2509
    const-string v2, "accessibility_display_magnification_auto_update"

    const v3, 0x7f04001f

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2513
    const-string v2, "user_setup_complete"

    const v3, 0x7f040023

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2516
    const-string v2, "immersive_mode_confirmations"

    const v3, 0x7f06000f

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2519
    const-string v2, "install_non_market_apps"

    const v3, 0x7f04000a

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2522
    const-string v2, "wake_gesture_enabled"

    const v3, 0x7f040025

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2525
    const-string v2, "lock_screen_show_notifications"

    const v3, 0x7f050010

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2528
    const-string v2, "lock_screen_allow_private_notifications"

    const v3, 0x7f040024

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2531
    const-string v2, "sleep_timeout"

    const v3, 0x7f050001

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2542
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2544
    :cond_2
    return-void

    .line 2488
    :cond_3
    :try_start_1
    const-string v2, "lockscreen.disabled"

    const v3, 0x7f040017

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2542
    .end local v1    # "wifiWatchList":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v2
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 2734
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2735
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2736
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2737
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2346
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2347
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2349
    iget v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v0, :cond_0

    .line 2350
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2352
    :cond_0
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2741
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2355
    const/4 v0, 0x0

    .line 2357
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2360
    const-string v1, "dim_screen"

    const/high16 v2, 0x7f040000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2362
    const-string v1, "screen_off_timeout"

    const/high16 v2, 0x7f050000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2366
    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2369
    const-string v1, "hearing_aid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2372
    const-string v1, "tty_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2374
    const-string v1, "screen_brightness"

    const v2, 0x7f050002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2377
    const-string v1, "screen_brightness_mode"

    const v2, 0x7f040006

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2380
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2382
    const-string v1, "accelerometer_rotation"

    const v2, 0x7f040005

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2385
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2387
    const-string v1, "notification_light_pulse"

    const v2, 0x7f040012

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2390
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2392
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lmiui/provider/SettingProviderHelper;->loadDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V

    const-string v1, "pointer_speed"

    const v2, 0x7f05000c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2403
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2405
    :cond_0
    return-void

    .line 2403
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2408
    const-string v0, "dtmf_tone"

    const v1, 0x7f040020

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2410
    const-string v0, "sound_effects_enabled"

    const v1, 0x7f040021

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2412
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2415
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f050006

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2417
    return-void
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteOld"    # Z

    .prologue
    .line 2305
    if-eqz p2, :cond_0

    .line 2306
    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2309
    :cond_0
    const/4 v0, 0x0

    .line 2311
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2315
    const/4 v1, 0x0

    .line 2316
    .local v1, "vibrate":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2319
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    .line 2321
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2325
    :cond_1
    return-void

    .line 2323
    .end local v1    # "vibrate":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2331
    const-string v5, "vibrate_on"

    invoke-direct {p0, p1, v5, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 2333
    .local v1, "vibrateSetting":I
    and-int/lit8 v5, v1, 0x3

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 2335
    .local v2, "vibrateWhenRinging":Z
    :goto_0
    const/4 v0, 0x0

    .line 2337
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2339
    const-string v5, "vibrate_when_ringing"

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v5, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2343
    :cond_0
    return-void

    .end local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v2    # "vibrateWhenRinging":Z
    :cond_1
    move v2, v4

    .line 2333
    goto :goto_0

    .restart local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v2    # "vibrateWhenRinging":Z
    :cond_2
    move v3, v4

    .line 2339
    goto :goto_1

    .line 2341
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    throw v3
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2253
    const/4 v1, 0x0

    .line 2255
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2258
    const-string v2, "volume_music"

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2260
    const-string v2, "volume_ring"

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2262
    const-string v2, "volume_system"

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2264
    const-string v2, "volume_voice"

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2268
    const-string v2, "volume_alarm"

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2270
    const-string v2, "volume_notification"

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2274
    const-string v2, "volume_bluetooth_sco"

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2284
    const/16 v0, 0xa6

    .line 2288
    .local v0, "ringerModeAffectedStreams":I
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2290
    or-int/lit8 v0, v0, 0x8

    .line 2292
    :cond_0
    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2295
    const-string v2, "mute_streams_affected"

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2301
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2302
    return-void

    .line 2298
    .end local v0    # "ringerModeAffectedStreams":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "prefixesToMove"    # [Ljava/lang/String;

    .prologue
    .line 2027
    const/4 v3, 0x0

    .line 2028
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 2030
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2032
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2035
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2038
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 2039
    .local v5, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2040
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2041
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2043
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v1, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2044
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2045
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2038
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2047
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2050
    if-eqz v3, :cond_1

    .line 2051
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2053
    :cond_1
    if-eqz v1, :cond_2

    .line 2054
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2057
    :cond_2
    return-void

    .line 2049
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2050
    if-eqz v3, :cond_3

    .line 2051
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2053
    :cond_3
    if-eqz v1, :cond_4

    .line 2054
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "settingsToMove"    # [Ljava/lang/String;
    .param p5, "doIgnore"    # Z

    .prologue
    .line 1991
    const/4 v3, 0x0

    .line 1992
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 1994
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1996
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_0

    const-string v6, " OR IGNORE "

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2000
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2002
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 2003
    .local v5, "setting":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2004
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2006
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2007
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2002
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1996
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "setting":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 2009
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2012
    if-eqz v3, :cond_2

    .line 2013
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2015
    :cond_2
    if-eqz v1, :cond_3

    .line 2016
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2019
    :cond_3
    return-void

    .line 2011
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2012
    if-eqz v3, :cond_4

    .line 2013
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2015
    :cond_4
    if-eqz v1, :cond_5

    .line 2016
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v6
.end method

.method private setToStringArray(Ljava/util/Set;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1983
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1984
    .local v0, "array":[Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2147
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2149
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 2152
    .local v0, "value":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2158
    return-void

    .line 2149
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2156
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2060
    const-string v1, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v3, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2062
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2063
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2064
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2065
    .local v10, "lockPattern":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2069
    .local v11, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 2071
    .local v9, "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v11, v9, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    .end local v9    # "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2077
    const-string v0, "system"

    const-string v1, "name=\'lock_pattern\'"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2081
    .end local v10    # "lockPattern":Ljava/lang/String;
    :goto_1
    return-void

    .line 2079
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2072
    .restart local v10    # "lockPattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2085
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v0, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2089
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2090
    .local v9, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2091
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2093
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 2097
    const-string v0, "screen_off_timeout"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2100
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2105
    :cond_0
    :goto_0
    return-void

    .line 2100
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 2103
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 2108
    const-string v2, "vibrate_on"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 2110
    .local v1, "vibrateSetting":I
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    .line 2111
    const/4 v2, 0x2

    invoke-static {v3, v3, v2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2115
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2118
    const/4 v0, 0x0

    .line 2120
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2122
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2124
    if-eqz v0, :cond_1

    .line 2125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2127
    :cond_1
    return-void

    .line 2124
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 2125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public backupDatabase()V
    .locals 5

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->close()V

    .line 148
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 149
    .local v1, "databaseFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 154
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public dropDatabase()V
    .locals 5

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->close()V

    .line 135
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-journal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 141
    .local v1, "databaseJournalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 144
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 180
    const-string v1, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v1, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 190
    iget v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v1, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    :cond_0
    const-string v1, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    const-string v1, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    const-string v1, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    const-string v1, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "onlyCore":Z
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 221
    :goto_0
    if-nez v0, :cond_1

    .line 222
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 226
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 230
    return-void

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 49
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 234
    const-string v5, "SettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrading settings database from version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move/from16 v46, p2

    .line 246
    .local v46, "upgradeVersion":I
    const/16 v5, 0x14

    move/from16 v0, v46

    if-ne v0, v5, :cond_0

    .line 253
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 255
    const/16 v46, 0x15

    .line 258
    :cond_0
    const/16 v5, 0x16

    move/from16 v0, v46

    if-ge v0, v5, :cond_1

    .line 259
    const/16 v46, 0x16

    .line 261
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 264
    :cond_1
    const/16 v5, 0x17

    move/from16 v0, v46

    if-ge v0, v5, :cond_2

    .line 265
    const-string v5, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const/16 v46, 0x17

    .line 269
    :cond_2
    const/16 v5, 0x17

    move/from16 v0, v46

    if-ne v0, v5, :cond_3

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 272
    :try_start_0
    const-string v5, "ALTER TABLE favorites ADD spanX INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    const-string v5, "ALTER TABLE favorites ADD spanY INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    const-string v5, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    const-string v5, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    const-string v5, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 285
    const/16 v46, 0x18

    .line 288
    :cond_3
    const/16 v5, 0x18

    move/from16 v0, v46

    if-ne v0, v5, :cond_4

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 293
    :try_start_1
    const-string v5, "DELETE FROM system WHERE name=\'network_preference\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    const-string v5, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 300
    const/16 v46, 0x19

    .line 303
    :cond_4
    const/16 v5, 0x19

    move/from16 v0, v46

    if-ne v0, v5, :cond_5

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 306
    :try_start_2
    const-string v5, "ALTER TABLE favorites ADD uri TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    const-string v5, "ALTER TABLE favorites ADD displayMode INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 312
    const/16 v46, 0x1a

    .line 315
    :cond_5
    const/16 v5, 0x1a

    move/from16 v0, v46

    if-ne v0, v5, :cond_6

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 319
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 324
    const/16 v46, 0x1b

    .line 327
    :cond_6
    const/16 v5, 0x1b

    move/from16 v0, v46

    if-ne v0, v5, :cond_7

    .line 328
    const/16 v5, 0x1f

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adb_enabled"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "android_id"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "bluetooth_on"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "data_roaming"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "device_provisioned"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "http_proxy"

    aput-object v6, v9, v5

    const/4 v5, 0x6

    const-string v6, "install_non_market_apps"

    aput-object v6, v9, v5

    const/4 v5, 0x7

    const-string v6, "location_providers_allowed"

    aput-object v6, v9, v5

    const/16 v5, 0x8

    const-string v6, "logging_id"

    aput-object v6, v9, v5

    const/16 v5, 0x9

    const-string v6, "network_preference"

    aput-object v6, v9, v5

    const/16 v5, 0xa

    const-string v6, "parental_control_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0xb

    const-string v6, "parental_control_last_update"

    aput-object v6, v9, v5

    const/16 v5, 0xc

    const-string v6, "parental_control_redirect_url"

    aput-object v6, v9, v5

    const/16 v5, 0xd

    const-string v6, "settings_classname"

    aput-object v6, v9, v5

    const/16 v5, 0xe

    const-string v6, "usb_mass_storage_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0xf

    const-string v6, "use_google_mail"

    aput-object v6, v9, v5

    const/16 v5, 0x10

    const-string v6, "wifi_networks_available_notification_on"

    aput-object v6, v9, v5

    const/16 v5, 0x11

    const-string v6, "wifi_networks_available_repeat_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x12

    const-string v6, "wifi_num_open_networks_kept"

    aput-object v6, v9, v5

    const/16 v5, 0x13

    const-string v6, "wifi_on"

    aput-object v6, v9, v5

    const/16 v5, 0x14

    const-string v6, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v6, v9, v5

    const/16 v5, 0x15

    const-string v6, "wifi_watchdog_ap_count"

    aput-object v6, v9, v5

    const/16 v5, 0x16

    const-string v6, "wifi_watchdog_background_check_delay_ms"

    aput-object v6, v9, v5

    const/16 v5, 0x17

    const-string v6, "wifi_watchdog_background_check_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0x18

    const-string v6, "wifi_watchdog_background_check_timeout_ms"

    aput-object v6, v9, v5

    const/16 v5, 0x19

    const-string v6, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v6, v9, v5

    const/16 v5, 0x1a

    const-string v6, "wifi_watchdog_max_ap_checks"

    aput-object v6, v9, v5

    const/16 v5, 0x1b

    const-string v6, "wifi_watchdog_on"

    aput-object v6, v9, v5

    const/16 v5, 0x1c

    const-string v6, "wifi_watchdog_ping_count"

    aput-object v6, v9, v5

    const/16 v5, 0x1d

    const-string v6, "wifi_watchdog_ping_delay_ms"

    aput-object v6, v9, v5

    const/16 v5, 0x1e

    const-string v6, "wifi_watchdog_ping_timeout_ms"

    aput-object v6, v9, v5

    .line 361
    .local v9, "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "secure"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 362
    const/16 v46, 0x1c

    .line 365
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_7
    const/16 v5, 0x1c

    move/from16 v0, v46

    if-eq v0, v5, :cond_8

    const/16 v5, 0x1d

    move/from16 v0, v46

    if-ne v0, v5, :cond_9

    .line 372
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 374
    :try_start_4
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    const/16 v38, 0x26

    .line 379
    .local v38, "newValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 387
    const/16 v46, 0x1e

    .line 390
    .end local v38    # "newValue":I
    :cond_9
    const/16 v5, 0x1e

    move/from16 v0, v46

    if-ne v0, v5, :cond_a

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 398
    :try_start_5
    const-string v5, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const-string v5, "UPDATE bookmarks SET title = \'\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 404
    const/16 v46, 0x1f

    .line 407
    :cond_a
    const/16 v5, 0x1f

    move/from16 v0, v46

    if-ne v0, v5, :cond_c

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 413
    const/16 v42, 0x0

    .line 415
    .local v42, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v5, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    const-string v5, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 425
    if-eqz v42, :cond_b

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 427
    :cond_b
    const/16 v46, 0x20

    .line 430
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v5, 0x20

    move/from16 v0, v46

    if-ne v0, v5, :cond_e

    .line 433
    const-string v5, "ro.com.android.wifi-watchlist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 434
    .local v48, "wifiWatchList":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 437
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 445
    :cond_d
    const/16 v46, 0x21

    .line 448
    .end local v48    # "wifiWatchList":Ljava/lang/String;
    :cond_e
    const/16 v5, 0x21

    move/from16 v0, v46

    if-ne v0, v5, :cond_f

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 452
    :try_start_8
    const-string v5, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 457
    const/16 v46, 0x22

    .line 460
    :cond_f
    const/16 v5, 0x22

    move/from16 v0, v46

    if-ne v0, v5, :cond_11

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 462
    const/16 v42, 0x0

    .line 464
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 470
    if-eqz v42, :cond_10

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 472
    :cond_10
    const/16 v46, 0x23

    .line 478
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v5, 0x23

    move/from16 v0, v46

    if-ne v0, v5, :cond_12

    .line 479
    const/16 v46, 0x24

    .line 482
    :cond_12
    const/16 v5, 0x24

    move/from16 v0, v46

    if-ne v0, v5, :cond_13

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 487
    :try_start_a
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 489
    const/16 v38, 0xa6

    .line 493
    .restart local v38    # "newValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 500
    const/16 v46, 0x25

    .line 503
    .end local v38    # "newValue":I
    :cond_13
    const/16 v5, 0x25

    move/from16 v0, v46

    if-ne v0, v5, :cond_15

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 505
    const/16 v42, 0x0

    .line 507
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 509
    const-string v5, "airplane_mode_toggleable_radios"

    const v6, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 514
    if-eqz v42, :cond_14

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 516
    :cond_14
    const/16 v46, 0x26

    .line 519
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v5, 0x26

    move/from16 v0, v46

    if-ne v0, v5, :cond_16

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 522
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f04000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_a3

    const-string v47, "1"

    .line 524
    .local v47, "value":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 531
    const/16 v46, 0x27

    .line 534
    .end local v47    # "value":Ljava/lang/String;
    :cond_16
    const/16 v5, 0x27

    move/from16 v0, v46

    if-ne v0, v5, :cond_17

    .line 535
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 536
    const/16 v46, 0x28

    .line 539
    :cond_17
    const/16 v5, 0x28

    move/from16 v0, v46

    if-ne v0, v5, :cond_19

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 544
    const/16 v42, 0x0

    .line 546
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_d
    const-string v5, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 548
    const-string v5, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 556
    if-eqz v42, :cond_18

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 558
    :cond_18
    const/16 v46, 0x29

    .line 561
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v5, 0x29

    move/from16 v0, v46

    if-ne v0, v5, :cond_1b

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 566
    const/16 v42, 0x0

    .line 568
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v5, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 572
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 576
    if-eqz v42, :cond_1a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 578
    :cond_1a
    const/16 v46, 0x2a

    .line 581
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v5, 0x2a

    move/from16 v0, v46

    if-ne v0, v5, :cond_1d

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 586
    const/16 v42, 0x0

    .line 588
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 590
    const-string v5, "notification_light_pulse"

    const v6, 0x7f040012

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 595
    if-eqz v42, :cond_1c

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 597
    :cond_1c
    const/16 v46, 0x2b

    .line 600
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1d
    const/16 v5, 0x2b

    move/from16 v0, v46

    if-ne v0, v5, :cond_1f

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 605
    const/16 v42, 0x0

    .line 607
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 609
    const-string v5, "volume_bluetooth_sco"

    const/4 v6, 0x6

    invoke-static {v6}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 614
    if-eqz v42, :cond_1e

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 616
    :cond_1e
    const/16 v46, 0x2c

    .line 619
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1f
    const/16 v5, 0x2c

    move/from16 v0, v46

    if-ne v0, v5, :cond_20

    .line 623
    const-string v5, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    const-string v5, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    const/16 v46, 0x2d

    .line 628
    :cond_20
    const/16 v5, 0x2d

    move/from16 v0, v46

    if-ne v0, v5, :cond_21

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 634
    :try_start_11
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 636
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 638
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 640
    const-string v5, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 646
    const/16 v46, 0x2e

    .line 649
    :cond_21
    const/16 v5, 0x2e

    move/from16 v0, v46

    if-ne v0, v5, :cond_22

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 656
    :try_start_12
    const-string v5, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 661
    const/16 v46, 0x2f

    .line 665
    :cond_22
    const/16 v5, 0x2f

    move/from16 v0, v46

    if-ne v0, v5, :cond_23

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 672
    :try_start_13
    const-string v5, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 677
    const/16 v46, 0x30

    .line 680
    :cond_23
    const/16 v5, 0x30

    move/from16 v0, v46

    if-ne v0, v5, :cond_24

    .line 685
    const/16 v46, 0x31

    .line 688
    :cond_24
    const/16 v5, 0x31

    move/from16 v0, v46

    if-ne v0, v5, :cond_26

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 693
    const/16 v42, 0x0

    .line 695
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_14
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 697
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 701
    if-eqz v42, :cond_25

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 704
    :cond_25
    const/16 v46, 0x32

    .line 707
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_26
    const/16 v5, 0x32

    move/from16 v0, v46

    if-ne v0, v5, :cond_27

    .line 711
    const/16 v46, 0x33

    .line 714
    :cond_27
    const/16 v5, 0x33

    move/from16 v0, v46

    if-ne v0, v5, :cond_28

    .line 716
    const/16 v5, 0x9

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "lock_pattern_autolock"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "lock_pattern_visible_pattern"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "lock_pattern_tactile_feedback_enabled"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "lockscreen.password_type"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "lockscreen.lockoutattemptdeadline"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "lockscreen.patterneverchosen"

    aput-object v6, v9, v5

    const/4 v5, 0x6

    const-string v6, "lock_pattern_autolock"

    aput-object v6, v9, v5

    const/4 v5, 0x7

    const-string v6, "lockscreen.lockedoutpermanently"

    aput-object v6, v9, v5

    const/16 v5, 0x8

    const-string v6, "lockscreen.password_salt"

    aput-object v6, v9, v5

    .line 727
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "secure"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 728
    const/16 v46, 0x34

    .line 731
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_28
    const/16 v5, 0x34

    move/from16 v0, v46

    if-ne v0, v5, :cond_2a

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 734
    const/16 v42, 0x0

    .line 736
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 738
    const-string v5, "vibrate_in_silent"

    const v6, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 742
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 743
    if-eqz v42, :cond_29

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 746
    :cond_29
    const/16 v46, 0x35

    .line 749
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2a
    const/16 v5, 0x35

    move/from16 v0, v46

    if-ne v0, v5, :cond_2b

    .line 753
    const/16 v46, 0x36

    .line 756
    :cond_2b
    const/16 v5, 0x36

    move/from16 v0, v46

    if-ne v0, v5, :cond_2c

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 762
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 765
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 768
    const/16 v46, 0x37

    .line 771
    :cond_2c
    const/16 v5, 0x37

    move/from16 v0, v46

    if-ne v0, v5, :cond_2e

    .line 773
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "set_install_location"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "default_install_location"

    aput-object v6, v9, v5

    .line 777
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "secure"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 779
    const/16 v42, 0x0

    .line 781
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_17
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 783
    const-string v5, "set_install_location"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    const-string v5, "default_install_location"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 789
    if-eqz v42, :cond_2d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 791
    :cond_2d
    const/16 v46, 0x38

    .line 794
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2e
    const/16 v5, 0x38

    move/from16 v0, v46

    if-ne v0, v5, :cond_30

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 799
    const/16 v42, 0x0

    .line 801
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v5, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 803
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 805
    const-string v5, "airplane_mode_toggleable_radios"

    const v6, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 810
    if-eqz v42, :cond_2f

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 812
    :cond_2f
    const/16 v46, 0x39

    .line 817
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_30
    const/16 v5, 0x39

    move/from16 v0, v46

    if-ne v0, v5, :cond_32

    .line 823
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 824
    const/16 v42, 0x0

    .line 826
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 828
    const-string v5, "accessibility_script_injection"

    const v6, 0x7f04001b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 830
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 831
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 833
    const-string v5, "accessibility_web_content_key_bindings"

    const v6, 0x7f06000d

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 838
    if-eqz v42, :cond_31

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 840
    :cond_31
    const/16 v46, 0x3a

    .line 843
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_32
    const/16 v5, 0x3a

    move/from16 v0, v46

    if-ne v0, v5, :cond_34

    .line 845
    const-string v5, "auto_time"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v33

    .line 846
    .local v33, "autoTimeValue":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 847
    const/16 v42, 0x0

    .line 849
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 850
    const-string v5, "auto_time_zone"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 854
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 855
    if-eqz v42, :cond_33

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 857
    :cond_33
    const/16 v46, 0x3b

    .line 860
    .end local v33    # "autoTimeValue":I
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_34
    const/16 v5, 0x3b

    move/from16 v0, v46

    if-ne v0, v5, :cond_36

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 863
    const/16 v42, 0x0

    .line 865
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1b
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 867
    const-string v5, "user_rotation"

    const v6, 0x7f050008

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 872
    if-eqz v42, :cond_35

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 874
    :cond_35
    const/16 v46, 0x3c

    .line 877
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_36
    const/16 v5, 0x3c

    move/from16 v0, v46

    if-ne v0, v5, :cond_37

    .line 881
    const/16 v46, 0x3d

    .line 884
    :cond_37
    const/16 v5, 0x3d

    move/from16 v0, v46

    if-ne v0, v5, :cond_38

    .line 888
    const/16 v46, 0x3e

    .line 892
    :cond_38
    const/16 v5, 0x3e

    move/from16 v0, v46

    if-ne v0, v5, :cond_39

    .line 896
    const/16 v46, 0x3f

    .line 899
    :cond_39
    const/16 v5, 0x3f

    move/from16 v0, v46

    if-ne v0, v5, :cond_3a

    .line 902
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 904
    :try_start_1c
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 906
    const/16 v38, 0xae

    .line 911
    .restart local v38    # "newValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 916
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 918
    const/16 v46, 0x40

    .line 921
    .end local v38    # "newValue":I
    :cond_3a
    const/16 v5, 0x40

    move/from16 v0, v46

    if-ne v0, v5, :cond_3c

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 924
    const/16 v42, 0x0

    .line 926
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1d
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 928
    const-string v5, "long_press_timeout"

    const v6, 0x7f05000b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 930
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 931
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 933
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 934
    if-eqz v42, :cond_3b

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 936
    :cond_3b
    const/16 v46, 0x41

    .line 941
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3c
    const/16 v5, 0x41

    move/from16 v0, v46

    if-ne v0, v5, :cond_3e

    .line 945
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 946
    const/16 v42, 0x0

    .line 948
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1e
    const-string v5, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 950
    const-string v5, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 952
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 955
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 957
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 958
    if-eqz v42, :cond_3d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 960
    :cond_3d
    const/16 v46, 0x42

    .line 963
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3e
    const/16 v5, 0x42

    move/from16 v0, v46

    if-ne v0, v5, :cond_40

    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 968
    const/16 v41, 0xa6

    .line 972
    .local v41, "ringerModeAffectedStreams":I
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 974
    or-int/lit8 v41, v41, 0x8

    .line 976
    :cond_3f
    const-string v5, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 983
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 985
    const/16 v46, 0x43

    .line 988
    .end local v41    # "ringerModeAffectedStreams":I
    :cond_40
    const/16 v5, 0x43

    move/from16 v0, v46

    if-ne v0, v5, :cond_42

    .line 990
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 991
    const/16 v42, 0x0

    .line 993
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_20
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 995
    const-string v5, "touch_exploration_enabled"

    const v6, 0x7f04001d

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 997
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 998
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 1000
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1001
    if-eqz v42, :cond_41

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1003
    :cond_41
    const/16 v46, 0x44

    .line 1006
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_42
    const/16 v5, 0x44

    move/from16 v0, v46

    if-ne v0, v5, :cond_43

    .line 1008
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1010
    :try_start_21
    const-string v5, "DELETE FROM system WHERE name=\'notifications_use_ring_volume\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 1014
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1016
    const/16 v46, 0x45

    .line 1019
    :cond_43
    const/16 v5, 0x45

    move/from16 v0, v46

    if-ne v0, v5, :cond_44

    .line 1021
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f060000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1023
    .local v32, "airplaneRadios":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 1025
    .local v43, "toggleableRadios":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1027
    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE system SET value=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "WHERE name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "airplane_mode_radios"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1029
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE system SET value=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "WHERE name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "airplane_mode_toggleable_radios"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1035
    const/16 v46, 0x46

    .line 1038
    .end local v32    # "airplaneRadios":Ljava/lang/String;
    .end local v43    # "toggleableRadios":Ljava/lang/String;
    :cond_44
    const/16 v5, 0x46

    move/from16 v0, v46

    if-ne v0, v5, :cond_45

    .line 1040
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1041
    const/16 v46, 0x47

    .line 1044
    :cond_45
    const/16 v5, 0x47

    move/from16 v0, v46

    if-ne v0, v5, :cond_47

    .line 1046
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1047
    const/16 v42, 0x0

    .line 1049
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_23
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1051
    const-string v5, "speak_password"

    const v6, 0x7f04001c

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 1055
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1056
    if-eqz v42, :cond_46

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1058
    :cond_46
    const/16 v46, 0x48

    .line 1061
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_47
    const/16 v5, 0x48

    move/from16 v0, v46

    if-ne v0, v5, :cond_49

    .line 1063
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1064
    const/16 v42, 0x0

    .line 1066
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_24
    const-string v5, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1068
    const-string v5, "vibrate_in_silent"

    const v6, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1070
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1073
    if-eqz v42, :cond_48

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1075
    :cond_48
    const/16 v46, 0x49

    .line 1078
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_49
    const/16 v5, 0x49

    move/from16 v0, v46

    if-ne v0, v5, :cond_4a

    .line 1079
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1080
    const/16 v46, 0x4a

    .line 1083
    :cond_4a
    const/16 v5, 0x4a

    move/from16 v0, v46

    if-ne v0, v5, :cond_4c

    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1086
    const/16 v42, 0x0

    .line 1088
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_25
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1089
    const-string v5, "accessibility_script_injection_url"

    const v6, 0x7f06000e

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1091
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1094
    if-eqz v42, :cond_4b

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1096
    :cond_4b
    const/16 v46, 0x4b

    .line 1098
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_4c
    const/16 v5, 0x4b

    move/from16 v0, v46

    if-ne v0, v5, :cond_51

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1100
    const/16 v42, 0x0

    .line 1101
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/16 v34, 0x0

    .line 1103
    .local v34, "c":Landroid/database/Cursor;
    :try_start_26
    const-string v11, "secure"

    const/4 v5, 0x2

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v12, v5

    const/4 v5, 0x1

    const-string v6, "value"

    aput-object v6, v12, v5

    const-string v13, "name=\'lockscreen.disabled\'"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 1107
    if-eqz v34, :cond_4d

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4e

    .line 1108
    :cond_4d
    const-string v5, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1110
    const-string v5, "lockscreen.disabled"

    const v6, 0x7f040017

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1113
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1116
    if-eqz v34, :cond_4f

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 1117
    :cond_4f
    if-eqz v42, :cond_50

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1119
    :cond_50
    const/16 v46, 0x4c

    .line 1124
    .end local v34    # "c":Landroid/database/Cursor;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_51
    const/16 v5, 0x4c

    move/from16 v0, v46

    if-ne v0, v5, :cond_52

    .line 1126
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1128
    :try_start_27
    const-string v5, "DELETE FROM system WHERE name=\'vibrate_in_silent\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 1132
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1135
    const/16 v46, 0x4d

    .line 1138
    :cond_52
    const/16 v5, 0x4d

    move/from16 v0, v46

    if-ne v0, v5, :cond_53

    .line 1140
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1142
    const/16 v46, 0x4e

    .line 1145
    :cond_53
    const/16 v5, 0x4e

    move/from16 v0, v46

    if-ne v0, v5, :cond_55

    .line 1147
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1148
    const/16 v42, 0x0

    .line 1150
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_28
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1152
    const-string v5, "accessibility_script_injection_url"

    const v6, 0x7f06000e

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1154
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 1156
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1157
    if-eqz v42, :cond_54

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1159
    :cond_54
    const/16 v46, 0x4f

    .line 1162
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_55
    const/16 v5, 0x4f

    move/from16 v0, v46

    if-ne v0, v5, :cond_57

    .line 1179
    const-string v5, "secure"

    const-string v6, "accessibility_enabled"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b8

    const/16 v31, 0x1

    .line 1181
    .local v31, "accessibilityEnabled":Z
    :goto_1
    const-string v5, "secure"

    const-string v6, "touch_exploration_enabled"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b9

    const/16 v44, 0x1

    .line 1183
    .local v44, "touchExplorationEnabled":Z
    :goto_2
    if-eqz v31, :cond_56

    if-eqz v44, :cond_56

    .line 1184
    const-string v5, "secure"

    const-string v6, "enabled_accessibility_services"

    const-string v7, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1186
    .local v37, "enabledServices":Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "touch_exploration_granted_accessibility_services"

    const-string v7, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1188
    .local v45, "touchExplorationGrantedServices":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 1190
    const/16 v42, 0x0

    .line 1192
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_29
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1193
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1195
    const-string v5, "touch_exploration_granted_accessibility_services"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v5, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1198
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    .line 1200
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1201
    if-eqz v42, :cond_56

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1205
    .end local v37    # "enabledServices":Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v45    # "touchExplorationGrantedServices":Ljava/lang/String;
    :cond_56
    const/16 v46, 0x50

    .line 1210
    .end local v31    # "accessibilityEnabled":Z
    .end local v44    # "touchExplorationEnabled":Z
    :cond_57
    const/16 v5, 0x50

    move/from16 v0, v46

    if-ne v0, v5, :cond_59

    .line 1212
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1213
    const/16 v42, 0x0

    .line 1215
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2a
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1217
    const-string v5, "screensaver_enabled"

    const v6, 0x112006b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1219
    const-string v5, "screensaver_activate_on_dock"

    const v6, 0x112006c

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1221
    const-string v5, "screensaver_activate_on_sleep"

    const v6, 0x112006d

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1223
    const-string v5, "screensaver_components"

    const v6, 0x1040040

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1225
    const-string v5, "screensaver_default_component"

    const v6, 0x1040040

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1228
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    .line 1230
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1231
    if-eqz v42, :cond_58

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1233
    :cond_58
    const/16 v46, 0x51

    .line 1236
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_59
    const/16 v5, 0x51

    move/from16 v0, v46

    if-ne v0, v5, :cond_5b

    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1239
    const/16 v42, 0x0

    .line 1241
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2b
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1243
    const-string v5, "package_verifier_enable"

    const v6, 0x7f04000b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1245
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    .line 1247
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1248
    if-eqz v42, :cond_5a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1250
    :cond_5a
    const/16 v46, 0x52

    .line 1253
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5b
    const/16 v5, 0x52

    move/from16 v0, v46

    if-ne v0, v5, :cond_5d

    .line 1255
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_5c

    .line 1257
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1258
    const/16 v42, 0x0

    .line 1262
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1263
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1265
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1266
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1268
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1270
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2c

    .line 1272
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1273
    if-eqz v42, :cond_5c

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1276
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5c
    const/16 v46, 0x53

    .line 1279
    :cond_5d
    const/16 v5, 0x53

    move/from16 v0, v46

    if-ne v0, v5, :cond_5f

    .line 1283
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1284
    const/16 v42, 0x0

    .line 1286
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2d
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1287
    const-string v5, "accessibility_display_magnification_enabled"

    const v6, 0x7f04001e

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1290
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1291
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1292
    const-string v5, "accessibility_display_magnification_scale"

    const v6, 0x7f070002

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1294
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1295
    const-string v5, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1296
    const-string v5, "accessibility_display_magnification_auto_update"

    const v6, 0x7f04001f

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1300
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2d

    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1303
    if-eqz v42, :cond_5e

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1305
    :cond_5e
    const/16 v46, 0x54

    .line 1308
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5f
    const/16 v5, 0x54

    move/from16 v0, v46

    if-ne v0, v5, :cond_61

    .line 1309
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_60

    .line 1310
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1311
    const/16 v42, 0x0

    .line 1315
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x6

    :try_start_2e
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adb_enabled"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "bluetooth_on"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "data_roaming"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "device_provisioned"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "install_non_market_apps"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "usb_mass_storage_enabled"

    aput-object v6, v9, v5

    .line 1323
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1324
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2e

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1327
    if-eqz v42, :cond_60

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1330
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_60
    const/16 v46, 0x55

    .line 1333
    :cond_61
    const/16 v5, 0x55

    move/from16 v0, v46

    if-ne v0, v5, :cond_63

    .line 1334
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_62

    .line 1335
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1339
    const/4 v5, 0x1

    :try_start_2f
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "stay_on_while_plugged_in"

    aput-object v6, v9, v5

    .line 1340
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1342
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2f

    .line 1344
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1347
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_62
    const/16 v46, 0x56

    .line 1350
    :cond_63
    const/16 v5, 0x56

    move/from16 v0, v46

    if-ne v0, v5, :cond_65

    .line 1351
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_64

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1354
    const/4 v5, 0x3

    :try_start_30
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "package_verifier_enable"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "verifier_timeout"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "verifier_default_response"

    aput-object v6, v9, v5

    .line 1359
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1361
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_30

    .line 1363
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1366
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_64
    const/16 v46, 0x57

    .line 1369
    :cond_65
    const/16 v5, 0x57

    move/from16 v0, v46

    if-ne v0, v5, :cond_67

    .line 1370
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_66

    .line 1371
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1373
    const/4 v5, 0x3

    :try_start_31
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data_stall_alarm_non_aggressive_delay_in_ms"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "data_stall_alarm_aggressive_delay_in_ms"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "gprs_register_check_period_ms"

    aput-object v6, v9, v5

    .line 1378
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1380
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_31

    .line 1382
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1385
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_66
    const/16 v46, 0x58

    .line 1388
    :cond_67
    const/16 v5, 0x58

    move/from16 v0, v46

    if-ne v0, v5, :cond_69

    .line 1389
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_68

    .line 1390
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1392
    const/16 v5, 0x1f

    :try_start_32
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "battery_discharge_duration_threshold"

    aput-object v6, v9, v5

    const/4 v5, 0x1

    const-string v6, "battery_discharge_threshold"

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const-string v6, "send_action_app_error"

    aput-object v6, v9, v5

    const/4 v5, 0x3

    const-string v6, "dropbox_age_seconds"

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "dropbox_max_files"

    aput-object v6, v9, v5

    const/4 v5, 0x5

    const-string v6, "dropbox_quota_kb"

    aput-object v6, v9, v5

    const/4 v5, 0x6

    const-string v6, "dropbox_quota_percent"

    aput-object v6, v9, v5

    const/4 v5, 0x7

    const-string v6, "dropbox_reserve_percent"

    aput-object v6, v9, v5

    const/16 v5, 0x8

    const-string v6, "dropbox:"

    aput-object v6, v9, v5

    const/16 v5, 0x9

    const-string v6, "logcat_for_"

    aput-object v6, v9, v5

    const/16 v5, 0xa

    const-string v6, "sys_free_storage_log_interval"

    aput-object v6, v9, v5

    const/16 v5, 0xb

    const-string v6, "disk_free_change_reporting_threshold"

    aput-object v6, v9, v5

    const/16 v5, 0xc

    const-string v6, "sys_storage_threshold_percentage"

    aput-object v6, v9, v5

    const/16 v5, 0xd

    const-string v6, "sys_storage_threshold_max_bytes"

    aput-object v6, v9, v5

    const/16 v5, 0xe

    const-string v6, "sys_storage_full_threshold_bytes"

    aput-object v6, v9, v5

    const/16 v5, 0xf

    const-string v6, "sync_max_retry_delay_in_seconds"

    aput-object v6, v9, v5

    const/16 v5, 0x10

    const-string v6, "connectivity_change_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x11

    const-string v6, "captive_portal_detection_enabled"

    aput-object v6, v9, v5

    const/16 v5, 0x12

    const-string v6, "captive_portal_server"

    aput-object v6, v9, v5

    const/16 v5, 0x13

    const-string v6, "nsd_on"

    aput-object v6, v9, v5

    const/16 v5, 0x14

    const-string v6, "set_install_location"

    aput-object v6, v9, v5

    const/16 v5, 0x15

    const-string v6, "default_install_location"

    aput-object v6, v9, v5

    const/16 v5, 0x16

    const-string v6, "inet_condition_debounce_up_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x17

    const-string v6, "inet_condition_debounce_down_delay"

    aput-object v6, v9, v5

    const/16 v5, 0x18

    const-string v6, "read_external_storage_enforced_default"

    aput-object v6, v9, v5

    const/16 v5, 0x19

    const-string v6, "http_proxy"

    aput-object v6, v9, v5

    const/16 v5, 0x1a

    const-string v6, "global_http_proxy_host"

    aput-object v6, v9, v5

    const/16 v5, 0x1b

    const-string v6, "global_http_proxy_port"

    aput-object v6, v9, v5

    const/16 v5, 0x1c

    const-string v6, "global_http_proxy_exclusion_list"

    aput-object v6, v9, v5

    const/16 v5, 0x1d

    const-string v6, "set_global_http_proxy"

    aput-object v6, v9, v5

    const/16 v5, 0x1e

    const-string v6, "default_dns_server"

    aput-object v6, v9, v5

    .line 1425
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_32

    .line 1428
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1431
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_68
    const/16 v46, 0x59

    .line 1434
    :cond_69
    const/16 v5, 0x59

    move/from16 v0, v46

    if-ne v0, v5, :cond_6b

    .line 1435
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_6a

    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1438
    const/4 v5, 0x3

    :try_start_33
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/4 v5, 0x0

    const-string v6, "bluetooth_headset_priority_"

    aput-object v6, v40, v5

    const/4 v5, 0x1

    const-string v6, "bluetooth_a2dp_sink_priority_"

    aput-object v6, v40, v5

    const/4 v5, 0x2

    const-string v6, "bluetooth_input_device_priority_"

    aput-object v6, v40, v5

    .line 1444
    .local v40, "prefixesToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/providers/settings/DatabaseHelper;->movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_33

    .line 1448
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1451
    .end local v40    # "prefixesToMove":[Ljava/lang/String;
    :cond_6a
    const/16 v46, 0x5a

    .line 1454
    :cond_6b
    const/16 v5, 0x5a

    move/from16 v0, v46

    if-ne v0, v5, :cond_6d

    .line 1455
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_6c

    .line 1456
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1458
    const/16 v5, 0xb

    :try_start_34
    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "window_animation_scale"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "transition_animation_scale"

    aput-object v6, v14, v5

    const/4 v5, 0x2

    const-string v6, "animator_duration_scale"

    aput-object v6, v14, v5

    const/4 v5, 0x3

    const-string v6, "fancy_ime_animations"

    aput-object v6, v14, v5

    const/4 v5, 0x4

    const-string v6, "compatibility_mode"

    aput-object v6, v14, v5

    const/4 v5, 0x5

    const-string v6, "emergency_tone"

    aput-object v6, v14, v5

    const/4 v5, 0x6

    const-string v6, "call_auto_retry"

    aput-object v6, v14, v5

    const/4 v5, 0x7

    const-string v6, "debug_app"

    aput-object v6, v14, v5

    const/16 v5, 0x8

    const-string v6, "wait_for_debugger"

    aput-object v6, v14, v5

    const/16 v5, 0x9

    const-string v6, "show_processes"

    aput-object v6, v14, v5

    const/16 v5, 0xa

    const-string v6, "always_finish_activities"

    aput-object v6, v14, v5

    .line 1471
    .local v14, "systemToGlobal":[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v6, "preferred_network_mode"

    aput-object v6, v19, v5

    const/4 v5, 0x1

    const-string v6, "subscription_mode"

    aput-object v6, v19, v5

    .line 1476
    .local v19, "secureToGlobal":[Ljava/lang/String;
    const-string v12, "system"

    const-string v13, "global"

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1477
    const-string v17, "secure"

    const-string v18, "global"

    const/16 v20, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v20}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1479
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_34

    .line 1481
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1484
    .end local v14    # "systemToGlobal":[Ljava/lang/String;
    .end local v19    # "secureToGlobal":[Ljava/lang/String;
    :cond_6c
    const/16 v46, 0x5b

    .line 1487
    :cond_6d
    const/16 v5, 0x5b

    move/from16 v0, v46

    if-ne v0, v5, :cond_6f

    .line 1488
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_6e

    .line 1489
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1492
    const/4 v5, 0x1

    :try_start_35
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mode_ringer"

    aput-object v6, v9, v5

    .line 1493
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1495
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_35

    .line 1497
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1500
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_6e
    const/16 v46, 0x5c

    .line 1503
    :cond_6f
    const/16 v5, 0x5c

    move/from16 v0, v46

    if-ne v0, v5, :cond_71

    .line 1504
    const/16 v42, 0x0

    .line 1506
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_36
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1508
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_c0

    .line 1512
    const-string v5, "global"

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 1514
    .local v36, "deviceProvisioned":I
    const-string v5, "user_setup_complete"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_36

    .line 1522
    .end local v36    # "deviceProvisioned":I
    :goto_3
    if-eqz v42, :cond_70

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1524
    :cond_70
    const/16 v46, 0x5d

    .line 1527
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_71
    const/16 v5, 0x5d

    move/from16 v0, v46

    if-ne v0, v5, :cond_73

    .line 1529
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_72

    .line 1530
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1533
    :try_start_37
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1535
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "system"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1536
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v9

    .line 1538
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1540
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_37

    .line 1542
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1545
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_72
    const/16 v46, 0x5e

    .line 1548
    :cond_73
    const/16 v5, 0x5e

    move/from16 v0, v46

    if-ne v0, v5, :cond_75

    .line 1550
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_74

    .line 1551
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1552
    const/16 v42, 0x0

    .line 1554
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_38
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1556
    const-string v5, "wireless_charging_started_sound"

    const v6, 0x7f06000c

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1558
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_38

    .line 1560
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1561
    if-eqz v42, :cond_74

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1564
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_74
    const/16 v46, 0x5f

    .line 1567
    :cond_75
    const/16 v5, 0x5f

    move/from16 v0, v46

    if-ne v0, v5, :cond_77

    .line 1568
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_76

    .line 1569
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1571
    const/4 v5, 0x1

    :try_start_39
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bugreport_in_power_menu"

    aput-object v6, v9, v5

    .line 1572
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    const-string v7, "secure"

    const-string v8, "global"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1573
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_39

    .line 1575
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1578
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :cond_76
    const/16 v46, 0x60

    .line 1581
    :cond_77
    const/16 v5, 0x60

    move/from16 v0, v46

    if-ne v0, v5, :cond_78

    .line 1583
    const/16 v46, 0x61

    .line 1586
    :cond_78
    const/16 v5, 0x61

    move/from16 v0, v46

    if-ne v0, v5, :cond_7a

    .line 1587
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_79

    .line 1588
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1589
    const/16 v42, 0x0

    .line 1591
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3a
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1593
    const-string v5, "low_battery_sound_timeout"

    const v6, 0x7f05000e

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1595
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3a

    .line 1597
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1598
    if-eqz v42, :cond_79

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1601
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_79
    const/16 v46, 0x62

    .line 1604
    :cond_7a
    const/16 v5, 0x62

    move/from16 v0, v46

    if-ne v0, v5, :cond_7b

    .line 1606
    const/16 v46, 0x63

    .line 1609
    :cond_7b
    const/16 v5, 0x63

    move/from16 v0, v46

    if-ne v0, v5, :cond_7c

    .line 1611
    const/16 v46, 0x64

    .line 1614
    :cond_7c
    const/16 v5, 0x64

    move/from16 v0, v46

    if-ne v0, v5, :cond_7e

    .line 1616
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_7d

    .line 1617
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1618
    const/16 v42, 0x0

    .line 1620
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3b
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1622
    const-string v5, "heads_up_notifications_enabled"

    const v6, 0x7f050011

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1624
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3b

    .line 1626
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1627
    if-eqz v42, :cond_7d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1630
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7d
    const/16 v46, 0x65

    .line 1633
    :cond_7e
    const/16 v5, 0x65

    move/from16 v0, v46

    if-ne v0, v5, :cond_80

    .line 1634
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_7f

    .line 1635
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1636
    const/16 v42, 0x0

    .line 1638
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3c
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1640
    const-string v5, "device_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1641
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3c

    .line 1643
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1644
    if-eqz v42, :cond_7f

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1647
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7f
    const/16 v46, 0x66

    .line 1650
    :cond_80
    const/16 v5, 0x66

    move/from16 v0, v46

    if-ne v0, v5, :cond_82

    .line 1651
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1652
    const/16 v42, 0x0

    .line 1656
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_c6

    .line 1659
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    const-string v6, "install_non_market_apps"

    aput-object v6, v24, v5

    .line 1662
    .local v24, "globalToSecure":[Ljava/lang/String;
    const-string v22, "global"

    const-string v23, "secure"

    const/16 v25, 0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    invoke-direct/range {v20 .. v25}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1671
    .end local v24    # "globalToSecure":[Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3d

    .line 1673
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1674
    if-eqz v42, :cond_81

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1676
    :cond_81
    const/16 v46, 0x67

    .line 1679
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_82
    const/16 v5, 0x67

    move/from16 v0, v46

    if-ne v0, v5, :cond_84

    .line 1680
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1681
    const/16 v42, 0x0

    .line 1683
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3e
    const-string v5, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1685
    const-string v5, "wake_gesture_enabled"

    const v6, 0x7f040025

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1687
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3e

    .line 1689
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1690
    if-eqz v42, :cond_83

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1692
    :cond_83
    const/16 v46, 0x68

    .line 1695
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_84
    const/16 v5, 0x69

    move/from16 v0, v46

    if-ge v0, v5, :cond_86

    .line 1696
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_85

    .line 1697
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1698
    const/16 v42, 0x0

    .line 1700
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3f
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1702
    const-string v5, "guest_user_enabled"

    const v6, 0x7f040026

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1704
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3f

    .line 1706
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1707
    if-eqz v42, :cond_85

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1710
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_85
    const/16 v46, 0x69

    .line 1713
    :cond_86
    const/16 v5, 0x6a

    move/from16 v0, v46

    if-ge v0, v5, :cond_89

    .line 1715
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1716
    const/16 v42, 0x0

    .line 1718
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_40
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1720
    const-string v5, "lock_screen_show_notifications"

    const v6, 0x7f050010

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1722
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_87

    .line 1723
    const-string v5, "global"

    const-string v6, "lock_screen_show_notifications"

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v39

    .line 1725
    .local v39, "oldShow":I
    if-ltz v39, :cond_87

    .line 1727
    const-string v5, "lock_screen_show_notifications"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1728
    const-string v5, "DELETE FROM global WHERE name=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v35

    .line 1730
    .local v35, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x1

    const-string v6, "lock_screen_show_notifications"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1731
    invoke-virtual/range {v35 .. v35}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1734
    .end local v35    # "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v39    # "oldShow":I
    :cond_87
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_40

    .line 1736
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1737
    if-eqz v42, :cond_88

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1739
    :cond_88
    const/16 v46, 0x6a

    .line 1742
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_89
    const/16 v5, 0x6b

    move/from16 v0, v46

    if-ge v0, v5, :cond_8b

    .line 1744
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_8a

    .line 1745
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1746
    const/16 v42, 0x0

    .line 1748
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_41
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1750
    const-string v5, "trusted_sound"

    const v6, 0x7f06000b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1752
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_41

    .line 1754
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1755
    if-eqz v42, :cond_8a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1758
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8a
    const/16 v46, 0x6b

    .line 1761
    :cond_8b
    const/16 v5, 0x6c

    move/from16 v0, v46

    if-ge v0, v5, :cond_8d

    .line 1765
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1766
    const/16 v42, 0x0

    .line 1768
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_42
    const-string v5, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1770
    const-string v5, "screen_brightness_mode"

    const v6, 0x7f040006

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1772
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_42

    .line 1774
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1775
    if-eqz v42, :cond_8c

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1777
    :cond_8c
    const/16 v46, 0x6c

    .line 1780
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8d
    const/16 v5, 0x6d

    move/from16 v0, v46

    if-ge v0, v5, :cond_8f

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1782
    const/16 v42, 0x0

    .line 1784
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_43
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1786
    const-string v5, "lock_screen_allow_private_notifications"

    const v6, 0x7f040024

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1788
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_43

    .line 1790
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1791
    if-eqz v42, :cond_8e

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1793
    :cond_8e
    const/16 v46, 0x6d

    .line 1796
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8f
    const/16 v5, 0x6e

    move/from16 v0, v46

    if-ge v0, v5, :cond_91

    .line 1800
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1801
    const/16 v42, 0x0

    .line 1803
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_44
    const-string v5, "UPDATE system SET value = ? WHERE name = ? AND value = ?;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1805
    const/4 v5, 0x1

    const-string v6, "SIP_ADDRESS_ONLY"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1806
    const/4 v5, 0x2

    const-string v6, "sip_call_options"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1807
    const/4 v5, 0x3

    const-string v6, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1808
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1809
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_44

    .line 1811
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1812
    if-eqz v42, :cond_90

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1814
    :cond_90
    const/16 v46, 0x6e

    .line 1817
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_91
    const/16 v5, 0x6f

    move/from16 v0, v46

    if-ge v0, v5, :cond_93

    .line 1819
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_92

    .line 1820
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1821
    const/16 v42, 0x0

    .line 1823
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_45
    const-string v5, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1825
    const-string v5, "mode_ringer"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1826
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_45

    .line 1828
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1829
    if-eqz v42, :cond_92

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1832
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_92
    const/16 v46, 0x6f

    .line 1835
    :cond_93
    const/16 v5, 0x70

    move/from16 v0, v46

    if-ge v0, v5, :cond_95

    .line 1836
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_94

    .line 1840
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1841
    const/16 v42, 0x0

    .line 1843
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_46
    const-string v5, "UPDATE global SET value = ?  WHERE name = ? AND value = ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1845
    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1846
    const/4 v5, 0x2

    const-string v6, "device_name"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1847
    const/4 v5, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getOldDefaultDeviceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1848
    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1849
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_46

    .line 1851
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1852
    if-eqz v42, :cond_94

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1855
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_94
    const/16 v46, 0x70

    .line 1858
    :cond_95
    const/16 v5, 0x71

    move/from16 v0, v46

    if-ge v0, v5, :cond_97

    .line 1859
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1860
    const/16 v42, 0x0

    .line 1862
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_47
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1864
    const-string v5, "sleep_timeout"

    const v6, 0x7f050001

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1866
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_47

    .line 1868
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1869
    if-eqz v42, :cond_96

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1871
    :cond_96
    const/16 v46, 0x71

    .line 1876
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_97
    const/16 v5, 0x73

    move/from16 v0, v46

    if-ge v0, v5, :cond_99

    .line 1877
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_98

    .line 1878
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1879
    const/16 v42, 0x0

    .line 1881
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_48
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1883
    const-string v5, "theater_mode_on"

    const v6, 0x7f040002

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1885
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_48

    .line 1887
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1888
    if-eqz v42, :cond_98

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1891
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_98
    const/16 v46, 0x73

    .line 1894
    :cond_99
    const/16 v5, 0x74

    move/from16 v0, v46

    if-ge v0, v5, :cond_9b

    .line 1895
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v5, :cond_9a

    .line 1896
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1897
    const/16 v42, 0x0

    .line 1899
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_49
    const-string v5, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1905
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_49

    .line 1907
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1908
    if-eqz v42, :cond_9a

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1911
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9a
    const/16 v46, 0x74

    .line 1914
    :cond_9b
    const/16 v5, 0x75

    move/from16 v0, v46

    if-ge v0, v5, :cond_9c

    .line 1915
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1917
    const/4 v5, 0x1

    :try_start_4a
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v5, 0x0

    const-string v6, "lock_to_app_exit_locked"

    aput-object v6, v29, v5

    .line 1920
    .local v29, "systemToSecure":[Ljava/lang/String;
    const-string v27, "system"

    const-string v28, "secure"

    const/16 v30, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    invoke-direct/range {v25 .. v30}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1921
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_4a

    .line 1923
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1925
    const/16 v46, 0x75

    .line 1928
    .end local v29    # "systemToSecure":[Ljava/lang/String;
    :cond_9c
    const/16 v5, 0x76

    move/from16 v0, v46

    if-ge v0, v5, :cond_9e

    .line 1931
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1932
    const/16 v42, 0x0

    .line 1934
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4b
    const-string v5, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1936
    const-string v5, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1937
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_4b

    .line 1939
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1940
    if-eqz v42, :cond_9d

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1942
    :cond_9d
    const/16 v46, 0x76

    .line 1953
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9e
    move/from16 v0, v46

    move/from16 v1, p3

    if-eq v0, v1, :cond_9f

    .line 1954
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v46

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 1956
    :cond_9f
    return-void

    .line 283
    :catchall_0
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 298
    :catchall_1
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 310
    :catchall_2
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 322
    :catchall_3
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 384
    :catchall_4
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 402
    :catchall_5
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 424
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 425
    if-eqz v42, :cond_a0

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a0
    throw v5

    .line 442
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v48    # "wifiWatchList":Ljava/lang/String;
    :catchall_7
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 455
    .end local v48    # "wifiWatchList":Ljava/lang/String;
    :catchall_8
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 469
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 470
    if-eqz v42, :cond_a1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a1
    throw v5

    .line 498
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 513
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 514
    if-eqz v42, :cond_a2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a2
    throw v5

    .line 522
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_a3
    :try_start_4c
    const-string v47, "0"
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_c

    goto/16 :goto_0

    .line 528
    :catchall_c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 555
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 556
    if-eqz v42, :cond_a4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a4
    throw v5

    .line 575
    :catchall_e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 576
    if-eqz v42, :cond_a5

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a5
    throw v5

    .line 594
    :catchall_f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 595
    if-eqz v42, :cond_a6

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a6
    throw v5

    .line 613
    :catchall_10
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 614
    if-eqz v42, :cond_a7

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a7
    throw v5

    .line 644
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_11
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 659
    :catchall_12
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 675
    :catchall_13
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 700
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_14
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 701
    if-eqz v42, :cond_a8

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a8
    throw v5

    .line 742
    :catchall_15
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 743
    if-eqz v42, :cond_a9

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a9
    throw v5

    .line 765
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_16
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 788
    .restart local v9    # "settingsToMove":[Ljava/lang/String;
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 789
    if-eqz v42, :cond_aa

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_aa
    throw v5

    .line 809
    .end local v9    # "settingsToMove":[Ljava/lang/String;
    :catchall_18
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 810
    if-eqz v42, :cond_ab

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ab
    throw v5

    .line 837
    :catchall_19
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 838
    if-eqz v42, :cond_ac

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ac
    throw v5

    .line 854
    .restart local v33    # "autoTimeValue":I
    :catchall_1a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 855
    if-eqz v42, :cond_ad

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ad
    throw v5

    .line 871
    .end local v33    # "autoTimeValue":I
    :catchall_1b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 872
    if-eqz v42, :cond_ae

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ae
    throw v5

    .line 916
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 933
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 934
    if-eqz v42, :cond_af

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_af
    throw v5

    .line 957
    :catchall_1e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 958
    if-eqz v42, :cond_b0

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b0
    throw v5

    .line 983
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v41    # "ringerModeAffectedStreams":I
    :catchall_1f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1000
    .end local v41    # "ringerModeAffectedStreams":I
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_20
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1001
    if-eqz v42, :cond_b1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b1
    throw v5

    .line 1014
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_21
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1033
    .restart local v32    # "airplaneRadios":Ljava/lang/String;
    .restart local v43    # "toggleableRadios":Ljava/lang/String;
    :catchall_22
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1055
    .end local v32    # "airplaneRadios":Ljava/lang/String;
    .end local v43    # "toggleableRadios":Ljava/lang/String;
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_23
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1056
    if-eqz v42, :cond_b2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b2
    throw v5

    .line 1072
    :catchall_24
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1073
    if-eqz v42, :cond_b3

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b3
    throw v5

    .line 1093
    :catchall_25
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1094
    if-eqz v42, :cond_b4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b4
    throw v5

    .line 1115
    .restart local v34    # "c":Landroid/database/Cursor;
    :catchall_26
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1116
    if-eqz v34, :cond_b5

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 1117
    :cond_b5
    if-eqz v42, :cond_b6

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b6
    throw v5

    .line 1132
    .end local v34    # "c":Landroid/database/Cursor;
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_27
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1156
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_28
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1157
    if-eqz v42, :cond_b7

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b7
    throw v5

    .line 1179
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b8
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 1181
    .restart local v31    # "accessibilityEnabled":Z
    :cond_b9
    const/16 v44, 0x0

    goto/16 :goto_2

    .line 1200
    .restart local v37    # "enabledServices":Ljava/lang/String;
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v44    # "touchExplorationEnabled":Z
    .restart local v45    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_29
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1201
    if-eqz v42, :cond_ba

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ba
    throw v5

    .line 1230
    .end local v31    # "accessibilityEnabled":Z
    .end local v37    # "enabledServices":Ljava/lang/String;
    .end local v44    # "touchExplorationEnabled":Z
    .end local v45    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_2a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1231
    if-eqz v42, :cond_bb

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bb
    throw v5

    .line 1247
    :catchall_2b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1248
    if-eqz v42, :cond_bc

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bc
    throw v5

    .line 1272
    :catchall_2c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1273
    if-eqz v42, :cond_bd

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bd
    throw v5

    .line 1302
    :catchall_2d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1303
    if-eqz v42, :cond_be

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_be
    throw v5

    .line 1326
    :catchall_2e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1327
    if-eqz v42, :cond_bf

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bf
    throw v5

    .line 1344
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1363
    :catchall_30
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1382
    :catchall_31
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1428
    :catchall_32
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1448
    :catchall_33
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1481
    :catchall_34
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1497
    :catchall_35
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1518
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c0
    :try_start_4d
    const-string v5, "user_setup_complete"

    const v6, 0x7f040023

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_36

    goto/16 :goto_3

    .line 1522
    :catchall_36
    move-exception v5

    if-eqz v42, :cond_c1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c1
    throw v5

    .line 1542
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_37
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1560
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_38
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1561
    if-eqz v42, :cond_c2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c2
    throw v5

    .line 1575
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_39
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1597
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_3a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1598
    if-eqz v42, :cond_c3

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c3
    throw v5

    .line 1626
    :catchall_3b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1627
    if-eqz v42, :cond_c4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c4
    throw v5

    .line 1643
    :catchall_3c
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1644
    if-eqz v42, :cond_c5

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c5
    throw v5

    .line 1666
    :cond_c6
    :try_start_4e
    const-string v5, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v42

    .line 1668
    const-string v5, "install_non_market_apps"

    const v6, 0x7f04000a

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_3d

    goto/16 :goto_4

    .line 1673
    :catchall_3d
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1674
    if-eqz v42, :cond_c7

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c7
    throw v5

    .line 1689
    :catchall_3e
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1690
    if-eqz v42, :cond_c8

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c8
    throw v5

    .line 1706
    :catchall_3f
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1707
    if-eqz v42, :cond_c9

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c9
    throw v5

    .line 1736
    :catchall_40
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1737
    if-eqz v42, :cond_ca

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ca
    throw v5

    .line 1754
    :catchall_41
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1755
    if-eqz v42, :cond_cb

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cb
    throw v5

    .line 1774
    :catchall_42
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1775
    if-eqz v42, :cond_cc

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cc
    throw v5

    .line 1790
    :catchall_43
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1791
    if-eqz v42, :cond_cd

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cd
    throw v5

    .line 1811
    :catchall_44
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1812
    if-eqz v42, :cond_ce

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ce
    throw v5

    .line 1828
    :catchall_45
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1829
    if-eqz v42, :cond_cf

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cf
    throw v5

    .line 1851
    :catchall_46
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1852
    if-eqz v42, :cond_d0

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d0
    throw v5

    .line 1868
    :catchall_47
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1869
    if-eqz v42, :cond_d1

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d1
    throw v5

    .line 1887
    :catchall_48
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1888
    if-eqz v42, :cond_d2

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d2
    throw v5

    .line 1907
    :catchall_49
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1908
    if-eqz v42, :cond_d3

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d3
    throw v5

    .line 1923
    .end local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4a
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1939
    .restart local v42    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4b
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1940
    if-eqz v42, :cond_d4

    invoke-virtual/range {v42 .. v42}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d4
    throw v5
.end method

.method public recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "upgradeVersion"    # I
    .param p4, "currentVersion"    # I

    .prologue
    .line 1960
    const-string v1, "DROP TABLE IF EXISTS global"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1961
    const-string v1, "DROP TABLE IF EXISTS globalIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1962
    const-string v1, "DROP TABLE IF EXISTS system"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1963
    const-string v1, "DROP INDEX IF EXISTS systemIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1964
    const-string v1, "DROP TABLE IF EXISTS secure"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1965
    const-string v1, "DROP INDEX IF EXISTS secureIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1966
    const-string v1, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1967
    const-string v1, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1968
    const-string v1, "DROP TABLE IF EXISTS bluetooth_devices"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1969
    const-string v1, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1970
    const-string v1, "DROP INDEX IF EXISTS bookmarksIndex1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1971
    const-string v1, "DROP INDEX IF EXISTS bookmarksIndex2"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1972
    const-string v1, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1978
    .local v0, "wipeReason":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1980
    return-void
.end method
