.class final Lnubia/net/wifi/WifiRssiInfo$1;
.super Ljava/lang/Object;
.source "WifiRssiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/net/wifi/WifiRssiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnubia/net/wifi/WifiRssiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lnubia/net/wifi/WifiRssiInfo$1;->createFromParcel(Landroid/os/Parcel;)Lnubia/net/wifi/WifiRssiInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnubia/net/wifi/WifiRssiInfo;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "lastRssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "freq":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "subtypeName":Ljava/lang/String;
    new-instance v3, Lnubia/net/wifi/WifiRssiInfo;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lnubia/net/wifi/WifiRssiInfo;-><init>(Landroid/content/Context;)V

    .local v3, "rssiInfo":Lnubia/net/wifi/WifiRssiInfo;
    # setter for: Lnubia/net/wifi/WifiRssiInfo;->mLastSignalRssi:I
    invoke-static {v3, v1}, Lnubia/net/wifi/WifiRssiInfo;->access$002(Lnubia/net/wifi/WifiRssiInfo;I)I

    # setter for: Lnubia/net/wifi/WifiRssiInfo;->mNewRssi:I
    invoke-static {v3, v2}, Lnubia/net/wifi/WifiRssiInfo;->access$102(Lnubia/net/wifi/WifiRssiInfo;I)I

    # setter for: Lnubia/net/wifi/WifiRssiInfo;->mNewFreq:I
    invoke-static {v3, v0}, Lnubia/net/wifi/WifiRssiInfo;->access$202(Lnubia/net/wifi/WifiRssiInfo;I)I

    return-object v3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lnubia/net/wifi/WifiRssiInfo$1;->newArray(I)[Lnubia/net/wifi/WifiRssiInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnubia/net/wifi/WifiRssiInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lnubia/net/wifi/WifiRssiInfo;

    return-object v0
.end method
