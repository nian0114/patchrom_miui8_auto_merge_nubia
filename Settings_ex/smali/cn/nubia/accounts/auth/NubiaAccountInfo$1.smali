.class final Lcn/nubia/accounts/auth/NubiaAccountInfo$1;
.super Ljava/lang/Object;
.source "NubiaAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accounts/auth/NubiaAccountInfo;
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
        "Lcn/nubia/accounts/auth/NubiaAccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/accounts/auth/NubiaAccountInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    new-instance v0, Lcn/nubia/accounts/auth/NubiaAccountInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/accounts/auth/NubiaAccountInfo;-><init>(Landroid/os/Parcel;Lcn/nubia/accounts/auth/NubiaAccountInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/accounts/auth/NubiaAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/accounts/auth/NubiaAccountInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lcn/nubia/accounts/auth/NubiaAccountInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountInfo$1;->newArray(I)[Lcn/nubia/accounts/auth/NubiaAccountInfo;

    move-result-object v0

    return-object v0
.end method
