.class Lcom/android/server/wifi/ScanDetailCache;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScanDetailCache"


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mPasspointMatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/ScanDetailCache;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method private sort()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Lcom/android/server/wifi/ScanDetailCache$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/ScanDetailCache$2;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    :cond_0
    return-object v0
.end method


# virtual methods
.method get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v0

    .line 53
    .local v0, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    goto :goto_0
.end method

.method getFirst()Lcom/android/server/wifi/ScanDetail;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    return-object v0
.end method

.method public getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 1
    .param p1, "age"    # J

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(JI)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility(JI)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 3
    .param p1, "age"    # J
    .param p3, "configBand"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "ScanDetailCache"

    const-string v1, "getVisibility isPasspoint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/ScanDetailCache;->getVisibilityByPasspointMatch(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/ScanDetailCache;->getVisibilityByRssi(JI)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisibilityByPasspointMatch(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 15
    .param p1, "age"    # J

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 240
    .local v2, "now_ms":J
    const/4 v5, 0x0

    .local v5, "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    const/4 v6, 0x0

    .line 242
    .local v6, "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    iget-object v10, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    .line 243
    .local v4, "pmi":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    move-result-object v8

    .line 244
    .local v8, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v8, :cond_0

    .line 245
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 246
    .local v7, "result":Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_0

    .line 248
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 251
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v10, v2, v10

    cmp-long v10, v10, p1

    if-gtz v10, :cond_0

    .line 253
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 254
    if-eqz v6, :cond_1

    invoke-virtual {v6, v4}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    move-result v10

    if-gez v10, :cond_0

    .line 255
    :cond_1
    move-object v6, v4

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 258
    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    move-result v10

    if-gez v10, :cond_0

    .line 259
    :cond_3
    move-object v5, v4

    goto :goto_0

    .line 264
    .end local v4    # "pmi":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    .end local v8    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_4
    new-instance v9, Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>()V

    .line 265
    .local v9, "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    const-string v1, "Visiblity by passpoint match returned "

    .line 266
    .local v1, "logMsg":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 267
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 268
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 269
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 270
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    .line 271
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "5 GHz BSSID of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    if-eqz v5, :cond_6

    .line 274
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 275
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 276
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 277
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    .line 278
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "2.4 GHz BSSID of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    const-string v10, "ScanDetailCache"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v9
.end method

.method public getVisibilityByRssi(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 1
    .param p1, "age"    # J

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/ScanDetailCache;->getVisibilityByRssi(JI)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public getVisibilityByRssi(JI)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 17
    .param p1, "age"    # J
    .param p3, "configBand"    # I

    .prologue
    .line 153
    new-instance v11, Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>()V

    .line 155
    .local v11, "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 156
    .local v6, "now_ms":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 157
    .local v4, "now_elapsed_ms":J
    const/4 v3, 0x0

    .line 158
    .local v3, "isNetworkFound":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "profileConfigKey":Ljava/lang/String;
    const-string v12, "ScanDetailCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVisibilityByRssi configBand "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " age "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/ScanDetail;

    .line 161
    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v9

    .line 162
    .local v9, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 163
    const-string v12, "ScanDetailCache"

    const-string v13, "getVisibilityByRssi getSeen ==0"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    const-string v12, "ScanDetailCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVisibilityByRssi result "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 168
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_2

    .line 169
    const-string v12, "ScanDetailCache"

    const-string v13, "getVisibilityByRssi is5 but 24only"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_2
    iget v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 185
    :cond_3
    :goto_1
    iget-wide v12, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_7

    .line 186
    sget-boolean v12, Lcom/android/server/wifi/ScanDetailCache;->DBG:Z

    if-eqz v12, :cond_4

    .line 187
    const-string v12, "getVisibilityByRssi"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " considering "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " elapsed="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " timestamp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " age = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    iget-wide v12, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    sub-long v12, v4, v12

    cmp-long v12, v12, p1

    if-lez v12, :cond_8

    .line 192
    const-string v12, "ScanDetailCache"

    const-string v13, "(now_elapsed_ms - (result.timestamp/1000)) > age"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_5
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 176
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_6

    .line 177
    const-string v12, "ScanDetailCache"

    const-string v13, "getVisibilityByRssi is25 but 5only"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :cond_6
    iget v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    goto/16 :goto_1

    .line 196
    :cond_7
    iget-wide v12, v9, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v12, v6, v12

    cmp-long v12, v12, p1

    if-lez v12, :cond_8

    .line 197
    const-string v12, "ScanDetailCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(now_ms:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - result.seen:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v9, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") > age"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    :cond_8
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 202
    invoke-static {v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 203
    const/4 v3, 0x1

    .line 207
    :goto_2
    iget v12, v9, Landroid/net/wifi/ScanResult;->level:I

    iget v13, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    if-le v12, v13, :cond_0

    .line 208
    iget v12, v9, Landroid/net/wifi/ScanResult;->level:I

    iput v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 209
    iget-wide v12, v9, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 210
    iget-object v12, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    goto/16 :goto_0

    .line 205
    :cond_9
    const-string v12, "ScanDetailCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "5g profileConfigKey "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " WifiConfiguration "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    :cond_a
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 213
    invoke-static {v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 214
    const/4 v3, 0x1

    .line 218
    :goto_3
    iget v12, v9, Landroid/net/wifi/ScanResult;->level:I

    iget v13, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v12, v13, :cond_0

    .line 219
    iget v12, v9, Landroid/net/wifi/ScanResult;->level:I

    iput v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 220
    iget-wide v12, v9, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 221
    iget-object v12, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v12, v11, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :cond_b
    const-string v12, "ScanDetailCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "2.4g profileConfigKey "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " WifiConfiguration "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 230
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_c
    if-eqz v3, :cond_d

    .line 233
    .end local v11    # "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    :goto_4
    return-object v11

    .restart local v11    # "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    :cond_d
    const/4 v11, 0x0

    goto :goto_4
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keySet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method put(Lcom/android/server/wifi/ScanDetail;)V
    .locals 1
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 39
    return-void
.end method

.method put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "match"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .param p3, "homeSp"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;-><init>(Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    .prologue
    .line 303
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v19, "sbuf":Ljava/lang/StringBuilder;
    const-string v21, "Scan Cache:  "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;

    move-result-object v13

    .line 307
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 308
    .local v16, "now_ms":J
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_6

    .line 309
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wifi/ScanDetail;

    .line 310
    .local v20, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v18

    .line 311
    .local v18, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v22

    sub-long v14, v16, v22

    .line 312
    .local v14, "milli":J
    const-wide/16 v10, 0x0

    .line 313
    .local v10, "ageSec":J
    const-wide/16 v8, 0x0

    .line 314
    .local v8, "ageMin":J
    const-wide/16 v4, 0x0

    .line 315
    .local v4, "ageHour":J
    const-wide/16 v6, 0x0

    .line 316
    .local v6, "ageMilli":J
    const-wide/16 v2, 0x0

    .line 317
    .local v2, "ageDay":J
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v22

    cmp-long v21, v16, v22

    if-lez v21, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_0

    .line 318
    const-wide/16 v22, 0x3e8

    rem-long v6, v14, v22

    .line 319
    const-wide/16 v22, 0x3e8

    div-long v22, v14, v22

    const-wide/16 v24, 0x3c

    rem-long v10, v22, v24

    .line 320
    const-wide/32 v22, 0xea60

    div-long v22, v14, v22

    const-wide/16 v24, 0x3c

    rem-long v8, v22, v24

    .line 321
    const-wide/32 v22, 0x36ee80

    div-long v22, v14, v22

    const-wide/16 v24, 0x18

    rem-long v4, v22, v24

    .line 322
    const-wide/32 v22, 0x5265c00

    div-long v2, v14, v22

    .line 324
    :cond_0
    const-string v21, "{"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v21, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%3d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v21, v0

    if-lez v21, :cond_1

    .line 327
    const-string v21, ",st="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    :cond_1
    const-wide/16 v22, 0x0

    cmp-long v21, v10, v22

    if-gtz v21, :cond_2

    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_3

    .line 330
    :cond_2
    const-string v21, ",%4d.%02d.%02d.%02d.%03dms"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_3
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v21, v0

    if-lez v21, :cond_4

    .line 334
    const-string v21, ",ipfail="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    :cond_4
    const-string v21, "} "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 339
    .end local v2    # "ageDay":J
    .end local v4    # "ageHour":J
    .end local v6    # "ageMilli":J
    .end local v8    # "ageMin":J
    .end local v10    # "ageSec":J
    .end local v14    # "milli":J
    .end local v18    # "result":Landroid/net/wifi/ScanResult;
    .end local v20    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_5
    const/16 v21, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21
.end method

.method public trim(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 86
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 87
    .local v0, "currentSize":I
    if-gt v0, p1, :cond_1

    .line 113
    :cond_0
    return-void

    .line 90
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    new-instance v4, Lcom/android/server/wifi/ScanDetailCache$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/ScanDetailCache$1;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sub-int v4, v0, p1

    if-ge v1, v4, :cond_0

    .line 109
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 110
    .local v3, "result":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
