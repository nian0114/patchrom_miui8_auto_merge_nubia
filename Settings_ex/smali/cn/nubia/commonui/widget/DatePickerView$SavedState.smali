.class Lcn/nubia/commonui/widget/DatePickerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/DatePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/commonui/widget/DatePickerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final sDay:I

.field final sMonth:I

.field final sYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/widget/DatePickerView$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sYear:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sMonth:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sDay:I

    .line 251
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 241
    iput p2, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sYear:I

    .line 242
    iput p3, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sMonth:I

    .line 243
    iput p4, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sDay:I

    .line 244
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 256
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    return-void
.end method
