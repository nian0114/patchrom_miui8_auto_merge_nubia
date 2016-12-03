.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;,
        Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;,
        Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;,
        Lcom/android/providers/settings/SettingsBackupAgent$Network;
    }
.end annotation


# static fields
.field private static final EMPTY_DATA:[B

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final STATE_SIZES:[I

.field private static mWifiConfigFile:Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

.field private mWfm:Landroid/net/wifi/WifiManager;

.field mWifiDisable:Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;

.field mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    .line 117
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void

    .line 102
    :array_0
    .array-data 4
        0x0
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 152
    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiDisable:Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;

    .line 153
    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .line 444
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/SettingsBackupAgent;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    return-void
.end method

.method private copyWifiSupplicantTemplate(Ljava/io/BufferedWriter;)V
    .locals 6
    .param p1, "bw"    # Ljava/io/BufferedWriter;

    .prologue
    .line 1132
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1133
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v4, 0x400

    new-array v3, v4, [C

    .line 1135
    .local v3, "temp":[C
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, "size":I
    if-lez v2, :cond_0

    .line 1136
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1139
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "size":I
    .end local v3    # "temp":[C
    :catch_0
    move-exception v1

    .line 1140
    .local v1, "ioe":Ljava/io/IOException;
    const-string v4, "SettingsBackupAgent"

    const-string v5, "Couldn\'t copy wpa_supplicant file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 1138
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "size":I
    .restart local v3    # "temp":[C
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private enableWifi(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1175
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    .line 1177
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 1178
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1179
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1184
    .end local v0    # "state":I
    :goto_0
    return v0

    .line 1182
    :cond_1
    const-string v1, "SettingsBackupAgent"

    const-string v2, "Failed to fetch WifiManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .locals 21
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "settings"    # [Ljava/lang/String;

    .prologue
    .line 942
    move-object/from16 v0, p2

    array-length v13, v0

    .line 943
    .local v13, "settingsCount":I
    mul-int/lit8 v19, v13, 0x2

    move/from16 v0, v19

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    .line 944
    .local v18, "values":[[B
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-nez v19, :cond_1

    .line 945
    const-string v19, "SettingsBackupAgent"

    const-string v20, "Couldn\'t read from the cursor"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 1004
    :cond_0
    return-object v12

    .line 950
    :cond_1
    const/4 v14, 0x0

    .line 951
    .local v14, "totalSize":I
    const/4 v2, 0x0

    .line 952
    .local v2, "backedUpSettingIndex":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 953
    .local v3, "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v13, :cond_5

    .line 954
    aget-object v7, p2, v6

    .line 955
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 957
    .local v15, "value":Ljava/lang/String;
    const-string v19, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 958
    .local v10, "nameColumnIndex":I
    const-string v19, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 961
    .local v17, "valueColumnIndex":I
    if-nez v15, :cond_2

    .line 962
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_2

    .line 963
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 964
    .local v4, "cursorKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 965
    .local v5, "cursorValue":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 966
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 967
    move-object v15, v5

    .line 975
    .end local v4    # "cursorKey":Ljava/lang/String;
    .end local v5    # "cursorValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v15}, Lcom/android/providers/settings/SettingsHelper;->onBackupValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 977
    if-nez v15, :cond_4

    .line 953
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 970
    .restart local v4    # "cursorKey":Ljava/lang/String;
    .restart local v5    # "cursorValue":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 981
    .end local v4    # "cursorKey":Ljava/lang/String;
    .end local v5    # "cursorValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 982
    .local v8, "keyBytes":[B
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x4

    add-int v14, v14, v19

    .line 983
    mul-int/lit8 v19, v2, 0x2

    aput-object v8, v18, v19

    .line 985
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 986
    .local v16, "valueBytes":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x4

    add-int v14, v14, v19

    .line 987
    mul-int/lit8 v19, v2, 0x2

    add-int/lit8 v19, v19, 0x1

    aput-object v16, v18, v19

    .line 989
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 997
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keyBytes":[B
    .end local v10    # "nameColumnIndex":I
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "valueBytes":[B
    .end local v17    # "valueColumnIndex":I
    :cond_5
    new-array v12, v14, [B

    .line 998
    .local v12, "result":[B
    const/4 v11, 0x0

    .line 999
    .local v11, "pos":I
    mul-int/lit8 v9, v2, 0x2

    .line 1000
    .local v9, "keyValuePairCount":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_0

    .line 1001
    aget-object v19, v18, v6

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v11, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v11

    .line 1002
    aget-object v19, v18, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v11, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v11

    .line 1000
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private getFileData(Ljava/lang/String;)[B
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1008
    const/4 v3, 0x0

    .line 1010
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 1017
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 1018
    .local v6, "offset":I
    const/4 v5, 0x0

    .line 1020
    .local v5, "numRead":I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 1021
    add-int/2addr v6, v5

    goto :goto_0

    .line 1025
    :cond_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 1026
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1034
    .end local v0    # "bytes":[B
    if-eqz v4, :cond_1

    .line 1036
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    .line 1038
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "numRead":I
    .end local v6    # "offset":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v0

    .line 1034
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "offset":I
    :cond_3
    if-eqz v4, :cond_4

    .line 1036
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    move-object v3, v4

    .line 1038
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 1030
    .end local v0    # "bytes":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "numRead":I
    .end local v6    # "offset":I
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1034
    if-eqz v3, :cond_2

    .line 1036
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1037
    :catch_1
    move-exception v7

    goto :goto_2

    .line 1034
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 1036
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1038
    :cond_5
    :goto_6
    throw v7

    .line 1037
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "offset":I
    :catch_2
    move-exception v7

    goto :goto_1

    .restart local v0    # "bytes":[B
    :catch_3
    move-exception v7

    goto :goto_3

    .end local v0    # "bytes":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "numRead":I
    .end local v6    # "offset":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 1034
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 1030
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getGlobalSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 781
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 783
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getLockSettings()[B
    .locals 6

    .prologue
    .line 791
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 792
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v4

    .line 793
    .local v4, "ownerInfoEnabled":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "ownerInfo":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 796
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 798
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    const-string v5, "owner_info_enabled"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 799
    if-eqz v4, :cond_1

    const-string v5, "1"

    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 800
    if-eqz v3, :cond_0

    .line 801
    const-string v5, "owner_info"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 802
    if-eqz v3, :cond_2

    .end local v3    # "ownerInfo":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 805
    :cond_0
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 799
    .restart local v3    # "ownerInfo":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "0"

    goto :goto_0

    .line 802
    :cond_2
    const-string v3, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 807
    .end local v3    # "ownerInfo":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private getSecureSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 771
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSystemSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 761
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 763
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getWifiSupplicant(Ljava/lang/String;)[B
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1059
    const/4 v1, 0x0

    .line 1061
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1063
    sget-object v9, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v4    # "file":Ljava/io/File;
    :goto_0
    return-object v9

    .line 1066
    .restart local v4    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 1067
    .local v8, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1069
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v5, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;

    invoke-direct {v5, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    .line 1070
    .local v5, "fromFile":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v5, v2, v3}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;Ljava/util/List;)V

    .line 1074
    iget-object v9, v5, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mKnownNetworks:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1075
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1076
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1077
    .local v7, "out":Ljava/io/OutputStreamWriter;
    invoke-virtual {v5, v7}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->write(Ljava/io/Writer;)V

    .line 1078
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1079
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 1087
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1081
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    sget-object v9, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1087
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1083
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fromFile":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    .end local v8    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v6

    .line 1084
    .local v6, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v9, "SettingsBackupAgent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t backup "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    sget-object v9, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1087
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fromFile":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    .restart local v8    # "wifi":Landroid/net/wifi/WifiManager;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1083
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private readInt([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 1165
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 1170
    .local v0, "result":I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    const/4 v4, 0x7

    new-array v2, v4, [J

    .line 709
    .local v2, "stateChecksums":[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 713
    .local v0, "dataInput":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 714
    .local v3, "stateVersion":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    aget v4, v4, v3

    if-ge v1, v4, :cond_0

    .line 715
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    .end local v1    # "i":I
    .end local v3    # "stateVersion":I
    :catch_0
    move-exception v4

    .line 721
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 722
    return-object v2
.end method

.method private restoreFileData(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "size"    # I

    .prologue
    .line 1046
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1049
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1050
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1051
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v1

    .line 1053
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "SettingsBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreLockSettings(Landroid/app/backup/BackupDataInput;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;

    .prologue
    .line 923
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v1, v2, [B

    .line 925
    .local v1, "settings":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreLockSettings([BI)V

    .line 931
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Couldn\'t read entity data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreLockSettings([BI)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "nBytes"    # I

    .prologue
    const/4 v6, 0x0

    .line 895
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 897
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, v6, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 898
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 902
    .local v1, "in":Ljava/io/DataInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 903
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 907
    .local v4, "value":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 909
    :pswitch_0
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    goto :goto_0

    .line 918
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 920
    :goto_2
    return-void

    .line 907
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :sswitch_0
    const-string v7, "owner_info_enabled"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string v7, "owner_info"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .line 913
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    goto :goto_0

    .line 917
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 907
    :sswitch_data_0
    .sparse-switch
        0x1f88babc -> :sswitch_0
        0x2132e2ba -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p3, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v1, v2, [B

    .line 816
    .local v1, "settings":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    array-length v2, v1

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 822
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Couldn\'t read entity data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V
    .locals 19
    .param p1, "settings"    # [B
    .param p2, "bytes"    # I
    .param p3, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p4, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 833
    sget-object v16, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 843
    .local v16, "whitelist":[Ljava/lang/String;
    :goto_0
    const/4 v14, 0x0

    .line 844
    .local v14, "pos":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 845
    .local v9, "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v5, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 846
    .local v5, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 847
    .local v2, "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 849
    .local v4, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, v16

    array-length v15, v0

    .line 850
    .local v15, "whiteListSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v15, :cond_9

    .line 851
    aget-object v7, v16, v12

    .line 852
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 855
    .local v8, "value":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 856
    :goto_2
    move/from16 v0, p2

    if-ge v14, v0, :cond_0

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v13

    .line 858
    .local v13, "length":I
    add-int/lit8 v14, v14, 0x4

    .line 859
    if-lez v13, :cond_4

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14, v13}, Ljava/lang/String;-><init>([BII)V

    .line 860
    .local v10, "dataKey":Ljava/lang/String;
    :goto_3
    add-int/2addr v14, v13

    .line 861
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v13

    .line 862
    add-int/lit8 v14, v14, 0x4

    .line 863
    if-lez v13, :cond_5

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v14, v13}, Ljava/lang/String;-><init>([BII)V

    .line 864
    .local v11, "dataValue":Ljava/lang/String;
    :goto_4
    add-int/2addr v14, v13

    .line 865
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 866
    move-object v8, v11

    .line 873
    .end local v10    # "dataKey":Ljava/lang/String;
    .end local v11    # "dataValue":Ljava/lang/String;
    .end local v13    # "length":I
    :cond_0
    if-nez v8, :cond_7

    .line 850
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 834
    .end local v2    # "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v14    # "pos":I
    .end local v15    # "whiteListSize":I
    .end local v16    # "whitelist":[Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 835
    sget-object v16, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .restart local v16    # "whitelist":[Ljava/lang/String;
    goto :goto_0

    .line 836
    .end local v16    # "whitelist":[Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 837
    sget-object v16, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .restart local v16    # "whitelist":[Ljava/lang/String;
    goto :goto_0

    .line 839
    .end local v16    # "whitelist":[Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown URI: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 859
    .restart local v2    # "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "contentValues":Landroid/content/ContentValues;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    .restart local v9    # "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "i":I
    .restart local v13    # "length":I
    .restart local v14    # "pos":I
    .restart local v15    # "whiteListSize":I
    .restart local v16    # "whitelist":[Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 863
    .restart local v10    # "dataKey":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 869
    .restart local v11    # "dataValue":Ljava/lang/String;
    :cond_6
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 877
    .end local v10    # "dataKey":Ljava/lang/String;
    .end local v11    # "dataValue":Ljava/lang/String;
    .end local v13    # "length":I
    :cond_7
    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v6, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .local v6, "destination":Landroid/net/Uri;
    :goto_6
    move-object/from16 v3, p0

    .line 880
    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v6    # "destination":Landroid/net/Uri;
    :cond_8
    move-object/from16 v6, p3

    .line 877
    goto :goto_6

    .line 886
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;[BI)V
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "size"    # I

    .prologue
    .line 1093
    :try_start_0
    new-instance v6, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;

    invoke-direct {v6, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    .line 1095
    .local v6, "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v5, "supplicantFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1098
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1099
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;Ljava/util/List;)V

    .line 1100
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1102
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1106
    .end local v2    # "in":Ljava/io/BufferedReader;
    :cond_0
    if-lez p3, :cond_2

    .line 1107
    new-array v4, p3, [C

    .line 1108
    .local v4, "restoredAsBytes":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    aget-byte v7, p2, v1

    int-to-char v7, v7

    aput-char v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/CharArrayReader;

    invoke-direct {v7, v4}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1110
    .restart local v2    # "in":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;Ljava/util/List;)V

    .line 1119
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "restoredAsBytes":[C
    :cond_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1120
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyWifiSupplicantTemplate(Ljava/io/BufferedWriter;)V

    .line 1123
    invoke-virtual {v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->write(Ljava/io/Writer;)V

    .line 1124
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "supplicantFile":Ljava/io/File;
    .end local v6    # "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    :goto_1
    return-void

    .line 1125
    :catch_0
    move-exception v3

    .line 1126
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t restore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # [B

    .prologue
    .line 1160
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1161
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 5
    .param p1, "oldChecksum"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "output"    # Landroid/app/backup/BackupDataOutput;

    .prologue
    .line 739
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 740
    .local v0, "checkSummer":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 741
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 742
    .local v2, "newChecksum":J
    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 754
    .end local p1    # "oldChecksum":J
    :goto_0
    return-wide p1

    .line 749
    .restart local p1    # "oldChecksum":J
    :cond_0
    :try_start_0
    array-length v1, p4

    invoke-virtual {p5, p3, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 750
    array-length v1, p4

    invoke-virtual {p5, p4, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v2

    .line 754
    goto :goto_0

    .line 751
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # I

    .prologue
    .line 1152
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1153
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1154
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1155
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1156
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "checksums"    # [J
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 730
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 731
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 732
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 735
    return-void
.end method


# virtual methods
.method initWifiRestoreIfNecessary()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .line 511
    new-instance v0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiDisable:Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;

    .line 513
    :cond_0
    return-void
.end method

.method networkInWhitelist(Lcom/android/providers/settings/SettingsBackupAgent$Network;Ljava/util/List;)Z
    .locals 5
    .param p1, "net"    # Lcom/android/providers/settings/SettingsBackupAgent$Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/settings/SettingsBackupAgent$Network;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v4, 0x1

    .line 293
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "netConfigKey":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 295
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 296
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 300
    :goto_1
    return v3

    .line 295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 45
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 383
    .local v7, "systemSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v13

    .line 384
    .local v13, "secureSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v19

    .line 385
    .local v19, "globalSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getLockSettings()[B

    move-result-object v43

    .line 386
    .local v43, "lockSettingsData":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v25

    .line 387
    .local v25, "locale":[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v31

    .line 388
    .local v31, "wifiSupplicantData":[B
    sget-object v3, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v37

    .line 390
    .local v37, "wifiConfigData":[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v2

    .line 392
    .local v2, "stateChecksums":[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v9

    .line 394
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v10, v2, v4

    const-string v12, "secure"

    move-object/from16 v9, p0

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 396
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v16, v2, v4

    const-string v18, "global"

    move-object/from16 v15, p0

    move-object/from16 v20, p2

    invoke-direct/range {v15 .. v20}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 398
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v22, v2, v4

    const-string v24, "locale"

    move-object/from16 v21, p0

    move-object/from16 v26, p2

    invoke-direct/range {v21 .. v26}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 400
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v28, v2, v4

    const-string v30, "\uffedWIFI"

    move-object/from16 v27, p0

    move-object/from16 v32, p2

    invoke-direct/range {v27 .. v32}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 403
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v34, v2, v4

    const-string v36, "\uffedCONFIG_WIFI"

    move-object/from16 v33, p0

    move-object/from16 v38, p2

    invoke-direct/range {v33 .. v38}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 406
    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-wide v40, v2, v4

    const-string v42, "lock_settings"

    move-object/from16 v39, p0

    move-object/from16 v44, p2

    invoke-direct/range {v39 .. v44}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 411
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 371
    new-instance v1, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 372
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 374
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 375
    .local v0, "mWfm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfigFile()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    .line 376
    :cond_0
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 13
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v9

    .line 567
    .local v9, "systemSettingsData":[B
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v7

    .line 568
    .local v7, "secureSettingsData":[B
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v2

    .line 569
    .local v2, "globalSettingsData":[B
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getLockSettings()[B

    move-result-object v4

    .line 570
    .local v4, "lockSettingsData":[B
    iget-object v12, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v12}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v3

    .line 571
    .local v3, "locale":[B
    const-string v12, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v12}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v11

    .line 572
    .local v11, "wifiSupplicantData":[B
    sget-object v12, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v10

    .line 576
    .local v10, "wifiConfigData":[B
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "root":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const-string v12, "flattened-data"

    invoke-direct {v8, v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .local v8, "stage":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 580
    .local v1, "filestream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 581
    .local v0, "bufstream":Ljava/io/BufferedOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 584
    .local v5, "out":Ljava/io/DataOutputStream;
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 587
    array-length v12, v9

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 588
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 590
    array-length v12, v7

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 591
    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 593
    array-length v12, v2

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 594
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 596
    array-length v12, v3

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 597
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 599
    array-length v12, v11

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 600
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 602
    array-length v12, v10

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 603
    invoke-virtual {v5, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 605
    array-length v12, v4

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 606
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 608
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 611
    invoke-virtual {p0, v8, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 615
    return-void

    .line 613
    .end local v0    # "bufstream":Ljava/io/BufferedOutputStream;
    .end local v1    # "filestream":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v12

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    throw v12
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 520
    .local v2, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 521
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 523
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 524
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 526
    .local v3, "size":I
    const-string v6, "system"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 527
    sget-object v6, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    .line 528
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    goto :goto_0

    .line 529
    :cond_0
    const-string v6, "secure"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 530
    sget-object v6, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    .line 531
    :cond_1
    const-string v6, "global"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 532
    sget-object v6, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    .line 533
    :cond_2
    const-string v6, "\uffedWIFI"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    .line 535
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v6, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiSupplicant(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 536
    :cond_3
    const-string v6, "locale"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 537
    new-array v1, v3, [B

    .line 538
    .local v1, "localeData":[B
    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 539
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v6, v1, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    goto :goto_0

    .line 540
    .end local v1    # "localeData":[B
    :cond_4
    const-string v6, "\uffedCONFIG_WIFI"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 541
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    .line 542
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v6, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiConfigFile(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 543
    :cond_5
    const-string v6, "lock_settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 544
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreLockSettings(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 546
    :cond_6
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto/16 :goto_0

    .line 555
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_7
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-eqz v6, :cond_8

    .line 556
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_bounce_delay_override_ms"

    const-wide/32 v8, 0xea60

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 560
    .local v4, "wifiBounceDelayMillis":J
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiDisable:Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    .end local v4    # "wifiBounceDelayMillis":J
    :cond_8
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "relpath"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 626
    .local v2, "instream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 628
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 630
    .local v6, "version":I
    const/4 v7, 0x3

    if-gt v6, v7, :cond_a

    .line 632
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 633
    .local v3, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 634
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 637
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 639
    .local v4, "nBytes":I
    new-array v0, v4, [B

    .line 640
    .local v0, "buffer":[B
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 641
    sget-object v7, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 644
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 646
    array-length v7, v0

    if-le v4, v7, :cond_0

    new-array v0, v4, [B

    .line 647
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 648
    sget-object v7, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 651
    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 652
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 654
    array-length v7, v0

    if-le v4, v7, :cond_1

    new-array v0, v4, [B

    .line 655
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 656
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 657
    sget-object v7, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 661
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 663
    array-length v7, v0

    if-le v4, v7, :cond_3

    new-array v0, v4, [B

    .line 664
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 665
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v7, v0, v4}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    .line 668
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 670
    array-length v7, v0

    if-le v4, v7, :cond_4

    new-array v0, v4, [B

    .line 671
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 672
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v5

    .line 673
    .local v5, "retainedWifiState":I
    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v7, v0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    .line 674
    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v8, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/16 v10, 0x3f2

    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 679
    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_9

    :cond_5
    const/4 v7, 0x1

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    .line 683
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 685
    array-length v7, v0

    if-le v4, v7, :cond_6

    new-array v0, v4, [B

    .line 686
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 687
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v7, v0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    .line 689
    const/4 v7, 0x3

    if-lt v6, v7, :cond_8

    .line 690
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 692
    array-length v7, v0

    if-le v4, v7, :cond_7

    new-array v0, v4, [B

    .line 693
    :cond_7
    if-lez v4, :cond_8

    .line 694
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 695
    invoke-direct {p0, v0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreLockSettings([BI)V

    .line 704
    :cond_8
    return-void

    .line 679
    :cond_9
    const/4 v7, 0x0

    goto :goto_0

    .line 701
    .end local v0    # "buffer":[B
    .end local v3    # "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "nBytes":I
    .end local v5    # "retainedWifiState":I
    :cond_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 702
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid file schema"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
