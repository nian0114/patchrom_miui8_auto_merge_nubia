.class Lcom/android/providers/settings/SettingsBackupAgent$Network;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Network"
.end annotation


# instance fields
.field certUsed:Z

.field hasWepKey:Z

.field key_mgmt:Ljava/lang/String;

.field final rawLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->hasWepKey:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    return-void
.end method

.method public static readFromStream(Ljava/io/BufferedReader;)Lcom/android/providers/settings/SettingsBackupAgent$Network;
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedReader;

    .prologue
    .line 165
    new-instance v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    invoke-direct {v2}, Lcom/android/providers/settings/SettingsBackupAgent$Network;-><init>()V

    .line 168
    .local v2, "n":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "n":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_0
    :goto_1
    return-object v2

    .line 173
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "n":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rememberLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x3d

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 221
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 223
    const/4 v3, 0x0

    .line 266
    :goto_0
    return-object v3

    .line 226
    :cond_0
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "bareSsid":Ljava/lang/String;
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 229
    .local v6, "types":Ljava/util/BitSet;
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 231
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->set(I)V

    .line 232
    invoke-virtual {v6, v10}, Ljava/util/BitSet;->set(I)V

    .line 257
    :cond_1
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "bareKeyMgmt":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "typeStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_1

    .line 241
    aget-object v4, v5, v2

    .line 242
    .local v4, "ktype":Ljava/lang/String;
    const-string v7, "WPA-PSK"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 243
    const-string v7, "SettingsBackupAgent"

    const-string v8, "  + setting WPA_PSK bit"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->set(I)V

    .line 240
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    :cond_4
    const-string v7, "WPA-EAP"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 246
    const-string v7, "SettingsBackupAgent"

    const-string v8, "  + setting WPA_EAP bit"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v6, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 248
    :cond_5
    const-string v7, "IEEE8021X"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    const-string v7, "SettingsBackupAgent"

    const-string v8, "  + setting IEEE8021X bit"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v6, v11}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 259
    .end local v0    # "bareKeyMgmt":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "ktype":Ljava/lang/String;
    .end local v5    # "typeStrings":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v6, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 260
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 261
    .end local v3    # "key":Ljava/lang/String;
    :cond_8
    iget-boolean v7, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->hasWepKey:Z

    if-eqz v7, :cond_9

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-WEP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 264
    .end local v3    # "key":Ljava/lang/String;
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "key":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 272
    if-ne p1, p0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v3

    .line 273
    :cond_1
    instance-of v5, p1, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 276
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .local v2, "other":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 277
    .end local v2    # "other":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v3, v4

    .line 278
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 285
    const/16 v0, 0x11

    .line 286
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 287
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 288
    return v0
.end method

.method rememberLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v0, "ssid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_2
    const-string v0, "key_mgmt="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_3
    const-string v0, "client_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    .line 194
    :cond_4
    const-string v0, "ca_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    .line 196
    :cond_5
    const-string v0, "ca_path="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    .line 198
    :cond_6
    const-string v0, "wep_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->hasWepKey:Z

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 4
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v2, "\nnetwork={\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, "line":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 209
    return-void
.end method
