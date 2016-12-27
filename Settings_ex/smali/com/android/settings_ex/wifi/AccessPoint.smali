.class public Lcom/android/settings_ex/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field public foundInScanResult:Z

.field private mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mInAnimRes:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOutAnimRes:I

.field private mRssi:I

.field private mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field private mTag:Ljava/lang/Object;

.field public networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;

.field private wapiPskType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 138
    iput v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    .line 142
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 151
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->foundInScanResult:Z

    .line 994
    new-instance v0, Lnubia/net/wifi/WifiRssiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnubia/net/wifi/WifiRssiInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    .line 186
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 187
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->initWithScanResult(Landroid/net/wifi/ScanResult;)V

    .line 188
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 138
    iput v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    .line 142
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 151
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->foundInScanResult:Z

    .line 994
    new-instance v0, Lnubia/net/wifi/WifiRssiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnubia/net/wifi/WifiRssiInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    .line 191
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v3, Landroid/util/LruCache;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/util/LruCache;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 136
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 138
    iput v6, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    .line 142
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 143
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 151
    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/AccessPoint;->foundInScanResult:Z

    .line 994
    new-instance v3, Lnubia/net/wifi/WifiRssiInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lnubia/net/wifi/WifiRssiInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 155
    const-string v3, "key_config"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 156
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 159
    :cond_0
    const-string v3, "key_ssid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    const-string v3, "key_ssid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 162
    :cond_1
    const-string v3, "key_security"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    const-string v3, "key_security"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 165
    :cond_2
    const-string v3, "key_psktype"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    const-string v3, "key_psktype"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    .line 168
    :cond_3
    const-string v3, "key_wifiinfo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 169
    const-string v3, "key_networkinfo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    const-string v3, "key_networkinfo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 172
    :cond_4
    const-string v3, "key_scanresultcache"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    const-string v3, "key_scanresultcache"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 175
    .local v2, "scanResultArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->evictAll()V

    .line 176
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 177
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v2    # "scanResultArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getRssi()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSeen()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 183
    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 908
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 909
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 910
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 911
    const/4 v2, 0x3

    .line 918
    :goto_0
    return v2

    .line 912
    :cond_0
    if-eqz v1, :cond_1

    .line 913
    const/4 v2, 0x2

    goto :goto_0

    .line 914
    :cond_1
    if-eqz v0, :cond_2

    .line 915
    const/4 v2, 0x1

    goto :goto_0

    .line 917
    :cond_2
    const-string v2, "AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 923
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x1

    .line 937
    :goto_0
    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    const/4 v0, 0x2

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    const/4 v0, 0x3

    goto :goto_0

    .line 931
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 932
    const/4 v0, 0x4

    goto :goto_0

    .line 933
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 934
    const/4 v0, 0x5

    goto :goto_0

    .line 937
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 941
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 944
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 946
    goto :goto_0

    .line 949
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 950
    goto :goto_0

    .line 952
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 953
    const/4 v0, 0x5

    goto :goto_0

    .line 956
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z

    .prologue
    const/4 v0, 0x0

    .line 895
    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z
    .param p3, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "isEphemeral"    # Z
    .param p4, "passpointProvider"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 851
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v7, :cond_1

    if-nez p1, :cond_1

    .line 852
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 854
    const v7, 0x7f0c001c

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, "format":Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/Object;

    aput-object p4, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 891
    .end local v2    # "format":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 856
    :cond_0
    if-eqz p3, :cond_1

    .line 858
    const v7, 0x7f0c001b

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 863
    :cond_1
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 865
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v7, :cond_2

    .line 866
    const-string v7, "wifi"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v6

    .line 871
    .local v6, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v6}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 875
    .local v5, "nw":Landroid/net/Network;
    :goto_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 884
    .end local v5    # "nw":Landroid/net/Network;
    .end local v6    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-nez p1, :cond_4

    const/high16 v7, 0x7f0a0000

    :goto_2
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 886
    .local v3, "formats":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    .line 888
    .local v4, "index":I
    array-length v7, v3

    if-ge v4, v7, :cond_3

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 889
    :cond_3
    const-string v7, ""

    goto :goto_0

    .line 872
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "index":I
    .restart local v6    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .restart local v5    # "nw":Landroid/net/Network;
    goto :goto_1

    .line 884
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "nw":Landroid/net/Network;
    .end local v6    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_4
    const v7, 0x7f0a0001

    goto :goto_2

    .line 891
    .restart local v3    # "formats":[Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_5
    aget-object v7, v3, v4

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 24

    .prologue
    .line 534
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 536
    .local v15, "scans24GHz":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 537
    .local v16, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 539
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 541
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 543
    if-eqz v2, :cond_0

    .line 544
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_0
    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_1
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 556
    .local v14, "rssi5":I
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 557
    .local v13, "rssi24":I
    const/4 v10, 0x0

    .line 558
    .local v10, "num5":I
    const/4 v7, 0x0

    .line 559
    .local v7, "num24":I
    const/4 v11, 0x0

    .line 560
    .local v11, "numBlackListed":I
    const/4 v5, 0x0

    .line 561
    .local v5, "n24":I
    const/4 v6, 0x0

    .line 562
    .local v6, "n5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    .line 564
    .local v4, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 565
    .local v12, "result":Landroid/net/wifi/ScanResult;
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_2

    .line 568
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 570
    :cond_3
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 574
    add-int/lit8 v10, v10, 0x1

    .line 583
    :cond_4
    :goto_1
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    const-wide/16 v20, 0x4e20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_2

    .line 585
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    .line 587
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v14, :cond_5

    .line 588
    iget v14, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 590
    :cond_5
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 591
    if-nez v16, :cond_6

    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .restart local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    :cond_6
    const-string v18, " \n{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    if-eqz v2, :cond_7

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_7
    const-string v18, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    const-string v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 597
    const-string v18, ",st="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    :cond_8
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 600
    const-string v18, ",ipf="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    :cond_9
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 575
    :cond_a
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 579
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 605
    :cond_b
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 607
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_c

    .line 608
    iget v13, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 610
    :cond_c
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 611
    if-nez v15, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .restart local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    :cond_d
    const-string v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    if-eqz v2, :cond_e

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_e
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 617
    const-string v18, ",st="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    :cond_f
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 620
    const-string v18, ",ipf="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    :cond_10
    const-string v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 627
    .end local v12    # "result":Landroid/net/wifi/ScanResult;
    :cond_11
    const-string v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    if-lez v7, :cond_12

    .line 629
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v5, v0, :cond_15

    .line 631
    if-eqz v15, :cond_12

    .line 632
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_12
    :goto_2
    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    if-lez v10, :cond_13

    .line 643
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v6, v0, :cond_16

    .line 645
    if-eqz v16, :cond_13

    .line 646
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_13
    :goto_3
    if-lez v11, :cond_14

    .line 656
    const-string v18, "!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    :cond_14
    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 635
    :cond_15
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    if-eqz v15, :cond_12

    .line 637
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 649
    :cond_16
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    if-eqz v16, :cond_13

    .line 651
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private initWithScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 757
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 758
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 759
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 760
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    .line 761
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 762
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Lnubia/net/wifi/WifiRssiInfo;->setNewRssi(I)V

    .line 763
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Lnubia/net/wifi/WifiRssiInfo;->updateLastSignalRssi(I)V

    .line 764
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, v1}, Lnubia/net/wifi/WifiRssiInfo;->updateNewFreq(I)V

    .line 765
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 766
    return-void
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 693
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    if-eqz p1, :cond_0

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 978
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    const-string p0, ""

    .line 986
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 981
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 982
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 984
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

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

    .line 960
    if-ne p0, v0, :cond_0

    .line 961
    const-string v0, "WEP"

    .line 974
    :goto_0
    return-object v0

    .line 962
    :cond_0
    if-ne p0, v1, :cond_4

    .line 963
    if-ne p1, v0, :cond_1

    .line 964
    const-string v0, "WPA"

    goto :goto_0

    .line 965
    :cond_1
    if-ne p1, v1, :cond_2

    .line 966
    const-string v0, "WPA2"

    goto :goto_0

    .line 967
    :cond_2
    if-ne p1, v2, :cond_3

    .line 968
    const-string v0, "WPA_WPA2"

    goto :goto_0

    .line 970
    :cond_3
    const-string v0, "PSK"

    goto :goto_0

    .line 971
    :cond_4
    if-ne p0, v2, :cond_5

    .line 972
    const-string v0, "EAP"

    goto :goto_0

    .line 974
    :cond_5
    const-string v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 294
    return-void
.end method

.method public compareTo(Lcom/android/settings_ex/wifi/AccessPoint;)I
    .locals 6
    .param p1, "other"    # Lcom/android/settings_ex/wifi/AccessPoint;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, -0x1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 217
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_sort_way"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 220
    .local v2, "value":I
    if-nez v2, :cond_3

    .line 221
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    .line 222
    .local v1, "ssid_diff":I
    if-nez v1, :cond_0

    .line 226
    iget v3, p1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    goto :goto_0

    .line 229
    .end local v1    # "ssid_diff":I
    :cond_3
    iget v3, p1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 230
    .local v0, "difference":I
    if-eqz v0, :cond_4

    move v1, v0

    .line 231
    goto :goto_0

    .line 234
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->compareTo(Lcom/android/settings_ex/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 240
    instance-of v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 241
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->compareTo(Lcom/android/settings_ex/wifi/AccessPoint;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 717
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 722
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 302
    const/4 v0, -0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lnubia/net/wifi/WifiRssiUtils;->calculateSignalLevel(Lnubia/net/wifi/WifiRssiInfo;I)I

    move-result v0

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getRssi()I
    .locals 4

    .prologue
    .line 309
    const/high16 v2, -0x80000000

    .line 310
    .local v2, "rssi":I
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 311
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v2, :cond_0

    .line 312
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 316
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return v2
.end method

.method public getSavedNetworkSummary()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 406
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_1

    .line 407
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 408
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "systemName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 410
    .local v4, "userId":I
    const/4 v0, 0x0

    .line 411
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 412
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 420
    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v7, 0x7f0c001e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v7, 0x7f0c001f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 424
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v6, 0x7f0c001a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "systemName":Ljava/lang/String;
    .end local v4    # "userId":I
    :goto_1
    return-object v5

    .line 415
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "systemName":Ljava/lang/String;
    .restart local v4    # "userId":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 416
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 427
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "systemName":Ljava/lang/String;
    .end local v4    # "userId":I
    :cond_1
    const-string v5, ""

    goto :goto_1

    .line 417
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "systemName":Ljava/lang/String;
    .restart local v4    # "userId":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "concise"    # Z

    .prologue
    const v3, 0x7f0c000f

    const v2, 0x7f0c0006

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 340
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    :goto_0
    return-object v1

    .line 341
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 344
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 378
    if-eqz p1, :cond_a

    const-string v1, ""

    goto :goto_0

    .line 346
    :pswitch_0
    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 349
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    packed-switch v1, :pswitch_data_1

    .line 361
    if-eqz p1, :cond_6

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 351
    :pswitch_2
    if-eqz p1, :cond_3

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 354
    :pswitch_3
    if-eqz p1, :cond_4

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 357
    :pswitch_4
    if-eqz p1, :cond_5

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 361
    :cond_6
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 365
    :pswitch_5
    if-eqz p1, :cond_7

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 369
    :pswitch_6
    if-eqz p1, :cond_8

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 373
    :pswitch_7
    if-eqz p1, :cond_9

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 378
    :cond_a
    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSeen()J
    .locals 6

    .prologue
    .line 320
    const-wide/16 v2, 0x0

    .line 321
    .local v2, "seen":J
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 322
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 323
    iget-wide v2, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    goto :goto_0

    .line 327
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-wide v2
.end method

.method public getSettingsSummary()Ljava/lang/String;
    .locals 18

    .prologue
    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v5, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_0
    :goto_0
    sget v14, Lcom/android/settings_ex/wifi/WifiTracker;->sVerboseLogging:I

    if-lez v14, :cond_8

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v14, :cond_1

    .line 491
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " f="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v14, :cond_4

    .line 495
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 498
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v2, v14, v16

    .line 499
    .local v2, "diff":J
    const-wide/16 v14, 0x3c

    rem-long v12, v2, v14

    .line 500
    .local v12, "sec":J
    const-wide/16 v14, 0x3c

    div-long v14, v2, v14

    const-wide/16 v16, 0x3c

    rem-long v8, v14, v16

    .line 501
    .local v8, "min":J
    const-wide/16 v14, 0x3c

    div-long v14, v8, v14

    const-wide/16 v16, 0x3c

    rem-long v6, v14, v16

    .line 502
    .local v6, "hour":J
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "h "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "m "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v2    # "diff":J
    .end local v6    # "hour":J
    .end local v8    # "min":J
    .end local v10    # "now":J
    .end local v12    # "sec":J
    :cond_3
    const-string v14, ")"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-lez v14, :cond_5

    .line 510
    const-string v14, " ipf="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    if-lez v14, :cond_6

    .line 513
    const-string v14, " cf="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    if-lez v14, :cond_7

    .line 516
    const-string v14, " authf="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v14, :cond_8

    .line 519
    const-string v14, " noInt="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 442
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    const/4 v14, 0x0

    goto :goto_1

    .line 446
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c001d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "format":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 449
    .end local v4    # "format":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0019

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 451
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v14, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_13

    .line 455
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_12

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0015

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 459
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_11

    .line 460
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0017

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 462
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0016

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 465
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_0

    .line 475
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0014

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 467
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0017

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 471
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0015

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 479
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_14

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0018

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 482
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0013

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 387
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 388
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 390
    return-object v0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 248
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 249
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 250
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 251
    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

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
    .line 674
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

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
    .line 678
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

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

.method public isPasspoint()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 701
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 727
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 732
    :goto_0
    new-instance v5, Lnubia/net/wifi/WifiRssiInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lnubia/net/wifi/WifiRssiInfo;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    .line 733
    const v5, 0x7fffffff

    iput v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 735
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 736
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 743
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 744
    .local v0, "cl":Ljava/lang/Class;
    const-string v5, "wapiPskType"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 745
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/wifi/WifiConfiguration;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 746
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 747
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wapiPskType:I

    .line 748
    const-string v5, "AccessPoint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadConfig()wapiPskType  WAPI PSK key type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wapiPskType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "o":Ljava/lang/Object;
    :goto_1
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 753
    const-string v5, "AccessPoint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadConfig() ssid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",security="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mRssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 730
    :cond_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_2
    iput-object v5, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 749
    :catch_0
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "AccessPoint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadConfig exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "key_ssid"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    const-string v0, "key_security"

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 771
    const-string v0, "key_psktype"

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 773
    :cond_1
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 774
    const-string v0, "key_scanresultcache"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 776
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    .line 777
    const-string v0, "key_networkinfo"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 779
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    .line 783
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    .line 710
    return-void
.end method

.method public showDetails()V
    .locals 4

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings_ex/wifi/WifiDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_config"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1026
    const-string v1, "key_scanresult"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const-string v1, "key_wifiinfo"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1029
    const-string v1, "key_level"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v1, "key_security"

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1032
    const-string v1, "key_state"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1035
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInAnimRes:I

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mOutAnimRes:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1037
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connectable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_3
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 843
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 844
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V

    .line 847
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 788
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 794
    .local v1, "oldLevel":I
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getRssi()I

    move-result v2

    .line 795
    .local v2, "oldRssi":I
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSeen()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 796
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Lnubia/net/wifi/WifiRssiInfo;->updateLastSignalRssi(I)V

    .line 797
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getRssi()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 798
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Lnubia/net/wifi/WifiRssiInfo;->setNewRssi(I)V

    .line 799
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    iget v4, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v4}, Lnubia/net/wifi/WifiRssiInfo;->updateNewFreq(I)V

    .line 800
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 802
    .local v0, "newLevel":I
    if-lez v0, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    if-eqz v3, :cond_0

    .line 803
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v3, p0}, Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V

    .line 806
    :cond_0
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 807
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:I

    .line 810
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    if-eqz v3, :cond_2

    .line 811
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v3, p0}, Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V

    .line 814
    :cond_2
    const/4 v3, 0x1

    .line 816
    .end local v0    # "newLevel":I
    .end local v1    # "oldLevel":I
    .end local v2    # "oldRssi":I
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, "reorder":Z
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 823
    :goto_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 824
    iput-object p2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 825
    iput-object p3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 826
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V

    .line 837
    :cond_0
    :goto_1
    return v0

    .line 822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 830
    const/4 v0, 0x1

    .line 831
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 832
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 833
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;Lnubia/net/wifi/WifiRssiInfo;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p4, "rssi"    # Lnubia/net/wifi/WifiRssiInfo;

    .prologue
    const/4 v2, 0x0

    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, "reorder":Z
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1002
    :goto_0
    iput-object p4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;

    .line 1003
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 1004
    iput-object p2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1005
    iput-object p3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1006
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V

    .line 1017
    :cond_0
    :goto_1
    return v0

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1009
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 1010
    const/4 v0, 0x1

    .line 1011
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1012
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1013
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settings_ex/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_ex/wifi/AccessPoint;)V

    goto :goto_1
.end method
