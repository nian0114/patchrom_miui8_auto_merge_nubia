.class public Lcn/nubia/accounts/auth/NubiaAccountInfo;
.super Ljava/lang/Object;
.source "NubiaAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/accounts/auth/NubiaAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeadImage:Landroid/graphics/Bitmap;

.field private final mKeyValueBundle:Landroid/os/Bundle;

.field private mTokenId:Ljava/lang/String;

.field private mTokenKey:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcn/nubia/accounts/auth/NubiaAccountInfo$1;

    invoke-direct {v0}, Lcn/nubia/accounts/auth/NubiaAccountInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/accounts/auth/NubiaAccountInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcn/nubia/accounts/auth/NubiaAccountInfo$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/accounts/auth/NubiaAccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmHeadImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v1, "key_nubia_account_head_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v1, "key_nubia_account_head_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/accounts/auth/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method
