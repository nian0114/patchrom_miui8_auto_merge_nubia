.class public Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;
.super Ljava/lang/Object;
.source "NubiaWifiP2pDeviceSpecInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NubiaWifiP2pDeviceSpecInfo"


# instance fields
.field public mInterfaceMac:Ljava/lang/String;

.field public mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo$1;

    invoke-direct {v0}, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo$1;-><init>()V

    sput-object v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, p1}, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->getInterfaceMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mInterfaceMac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;)V
    .locals 1
    .param p1, "source"    # Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p1, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mInterfaceMac:Ljava/lang/String;

    iput-object v0, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mInterfaceMac:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getInterfaceMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const-string v4, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .local v2, "threeTokenPattern":Ljava/util/regex/Pattern;
    const/4 v0, 0x0

    .local v0, "interfaceMac":Ljava/lang/String;
    const-string v4, "[ \n]"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "match":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;

    .local v0, "other":Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "DeviceSepcInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n interfaceMac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mInterfaceMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mInterfaceMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
