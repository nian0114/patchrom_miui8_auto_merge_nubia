.class public Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
.super Ljava/lang/Object;
.source "DataUsageUtilitys.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageUtilitys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/DataUsageUtilitys$AppItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/DataUsageUtilitys$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem$1;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageUtilitys$AppItem$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 389
    iput p1, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    .line 390
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    .line 396
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 400
    return-void
.end method

.method public compareTo(Lcom/android/settings_ex/DataUsageUtilitys$AppItem;)I
    .locals 4
    .param p1, "another"    # Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .prologue
    .line 416
    iget-wide v0, p1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    iget-wide v2, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 382
    check-cast p1, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->compareTo(Lcom/android/settings_ex/DataUsageUtilitys$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 404
    iget v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 406
    iget-wide v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 407
    return-void
.end method
