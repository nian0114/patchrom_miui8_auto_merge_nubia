.class final Lcom/cmx/cmplus/ContainerInfo$1;
.super Ljava/lang/Object;
.source "ContainerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmx/cmplus/ContainerInfo;
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
        "Lcom/cmx/cmplus/ContainerInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cmx/cmplus/ContainerInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Lcom/cmx/cmplus/ContainerInfo;

    invoke-direct {v0, p1}, Lcom/cmx/cmplus/ContainerInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/cmx/cmplus/ContainerInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cmx/cmplus/ContainerInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/cmx/cmplus/ContainerInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/cmx/cmplus/ContainerInfo$1;->newArray(I)[Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v0

    return-object v0
.end method
