.class final Lcom/vzw/nfc/RouteEntry$1;
.super Ljava/lang/Object;
.source "RouteEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/nfc/RouteEntry;
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
        "Lcom/vzw/nfc/RouteEntry;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/nfc/RouteEntry;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-byte v5, v5

    if-ne v5, v2, :cond_0

    .local v2, "allowed":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "location":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "powerState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "aidLength":I
    new-array v0, v1, [B

    .local v0, "aid":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v5, Lcom/vzw/nfc/RouteEntry;

    invoke-direct {v5, v0, v4, v3, v2}, Lcom/vzw/nfc/RouteEntry;-><init>([BIIZ)V

    return-object v5

    .end local v0    # "aid":[B
    .end local v1    # "aidLength":I
    .end local v2    # "allowed":Z
    .end local v3    # "location":I
    .end local v4    # "powerState":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/nfc/RouteEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/nfc/RouteEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/nfc/RouteEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/vzw/nfc/RouteEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/nfc/RouteEntry$1;->newArray(I)[Lcom/vzw/nfc/RouteEntry;

    move-result-object v0

    return-object v0
.end method
