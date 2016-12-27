.class public Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
.super Ljava/lang/Object;
.source "AppSettingsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mFlag:I

.field private mIsInserted:Z

.field private mIsModified:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo$1;

    invoke-direct {v0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mPackageName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mFlag:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mAppName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mIsInserted:Z

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mFlag:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isInserted()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mIsInserted:Z

    return v0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mIsModified:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mAppName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mFlag:I

    .line 41
    return-void
.end method

.method public setInserted(Z)V
    .locals 0
    .param p1, "isInserted"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mIsInserted:Z

    .line 53
    return-void
.end method

.method public setIsModified(Z)V
    .locals 0
    .param p1, "mIsModified"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mIsModified:Z

    .line 57
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mPackageName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->mIsInserted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
