.class public Lcom/android/settings_exlib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_exlib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRssi:I

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;


# direct methods
.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "isEphemeral"    # Z
    .param p4, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 792
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v8, :cond_1

    if-nez p1, :cond_1

    .line 793
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 795
    sget v8, Lcom/android/settings_exlib/R$string;->connected_via_passpoint:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "format":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p4, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 829
    .end local v2    # "format":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 797
    :cond_0
    if-eqz p3, :cond_1

    .line 799
    sget v8, Lcom/android/settings_exlib/R$string;->connected_via_wfa:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 804
    :cond_1
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 806
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v8, :cond_2

    .line 807
    const-string v8, "wifi"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v7

    .line 812
    .local v7, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v7}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 816
    .local v6, "nw":Landroid/net/Network;
    :goto_1
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 817
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_2

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 818
    sget v8, Lcom/android/settings_exlib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 813
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v6    # "nw":Landroid/net/Network;
    :catch_0
    move-exception v1

    .line 814
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6    # "nw":Landroid/net/Network;
    goto :goto_1

    .line 822
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v6    # "nw":Landroid/net/Network;
    .end local v7    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-nez p1, :cond_4

    sget v8, Lcom/android/settings_exlib/R$array;->wifi_status:I

    :goto_2
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "formats":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    .line 826
    .local v4, "index":I
    array-length v8, v3

    if-ge v4, v8, :cond_3

    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 827
    :cond_3
    const-string v8, ""

    goto :goto_0

    .line 822
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "index":I
    :cond_4
    sget v8, Lcom/android/settings_exlib/R$array;->wifi_status_with_ssid:I

    goto :goto_2

    .line 829
    .restart local v3    # "formats":[Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_5
    aget-object v8, v3, v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "security"    # I
    .param p1, "pskType"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 898
    if-ne p0, v0, :cond_0

    .line 899
    const-string v0, "WEP"

    .line 912
    :goto_0
    return-object v0

    .line 900
    :cond_0
    if-ne p0, v1, :cond_4

    .line 901
    if-ne p1, v0, :cond_1

    .line 902
    const-string v0, "WPA"

    goto :goto_0

    .line 903
    :cond_1
    if-ne p1, v1, :cond_2

    .line 904
    const-string v0, "WPA2"

    goto :goto_0

    .line 905
    :cond_2
    if-ne p1, v2, :cond_3

    .line 906
    const-string v0, "WPA_WPA2"

    goto :goto_0

    .line 908
    :cond_3
    const-string v0, "PSK"

    goto :goto_0

    .line 909
    :cond_4
    if-ne p0, v2, :cond_5

    .line 910
    const-string v0, "EAP"

    goto :goto_0

    .line 912
    :cond_5
    const-string v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_exlib/wifi/AccessPoint;)I
    .locals 4
    .param p1, "other"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    const/4 v1, 0x1

    const v3, 0x7fffffff

    const/4 v0, -0x1

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 186
    :cond_2
    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-eq v2, v3, :cond_0

    .line 187
    :cond_3
    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 190
    :cond_4
    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-eq v2, v0, :cond_5

    iget v2, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-eq v2, v0, :cond_0

    .line 192
    :cond_5
    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-ne v2, v0, :cond_6

    iget v2, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-eq v2, v0, :cond_6

    move v0, v1

    .line 193
    goto :goto_0

    .line 196
    :cond_6
    iget v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 197
    .local v0, "difference":I
    if-nez v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->compareTo(Lcom/android/settings_exlib/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 206
    instance-of v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 207
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/settings_exlib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->compareTo(Lcom/android/settings_exlib/wifi/AccessPoint;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 268
    const/4 v0, -0x1

    .line 270
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 214
    :cond_0
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 215
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 216
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 217
    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 2

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEphemeral()Z
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 666
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connectable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_3
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    invoke-static {v2, v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
