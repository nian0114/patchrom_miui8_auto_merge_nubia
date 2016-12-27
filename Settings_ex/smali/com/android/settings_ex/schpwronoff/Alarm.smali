.class public final Lcom/android/settings_ex/schpwronoff/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;,
        Lcom/android/settings_ex/schpwronoff/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/schpwronoff/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlert:Landroid/net/Uri;

.field public mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

.field public mEnabled:Z

.field public mHour:I

.field public mId:I

.field public mLabel:Ljava/lang/String;

.field public mMinutes:I

.field public mSilent:Z

.field public mTime:J

.field public mVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/settings_ex/schpwronoff/Alarm$1;

    invoke-direct {v0}, Lcom/android/settings_ex/schpwronoff/Alarm$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/schpwronoff/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    .line 177
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    .line 178
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    .line 179
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    .line 180
    new-instance v1, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    .line 181
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    .line 182
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mVibrate:Z

    .line 183
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mLabel:Ljava/lang/String;

    .line 184
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "alertString":Ljava/lang/String;
    const-string v1, "silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    const-string v1, "Settings/Alarm"

    const-string v3, "Alarm is marked as silent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean v2, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mSilent:Z

    .line 199
    :cond_1
    :goto_1
    return-void

    .end local v0    # "alertString":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 177
    goto :goto_0

    .line 189
    .restart local v0    # "alertString":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mAlert:Landroid/net/Uri;

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mAlert:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 196
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mAlert:Landroid/net/Uri;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    .line 210
    new-instance v0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mVibrate:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mLabel:Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mAlert:Landroid/net/Uri;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mSilent:Z

    .line 216
    return-void

    :cond_0
    move v0, v2

    .line 207
    goto :goto_0

    :cond_1
    move v0, v2

    .line 212
    goto :goto_1

    :cond_2
    move v1, v2

    .line 215
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-wide v4, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mVibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mAlert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm;->mSilent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v0, v2

    .line 47
    goto :goto_1

    :cond_2
    move v1, v2

    .line 50
    goto :goto_2
.end method
