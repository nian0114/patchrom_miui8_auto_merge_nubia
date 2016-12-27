.class final Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/schpwronoff/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static final DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p1, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    .line 235
    return-void
.end method

.method private isSet(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 278
    iget v1, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 302
    new-array v1, v3, [Z

    .line 303
    .local v1, "ret":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 304
    invoke-direct {p0, v0}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 6
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x7

    .line 320
    const/4 v2, 0x5

    .line 321
    .local v2, "days":I
    iget v4, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    if-nez v4, :cond_1

    .line 322
    const/4 v1, -0x1

    .line 335
    :cond_0
    return v1

    .line 325
    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    rem-int/lit8 v3, v4, 0x7

    .line 327
    .local v3, "today":I
    const/4 v0, 0x0

    .line 328
    .local v0, "day":I
    const/4 v1, 0x0

    .line 329
    .local v1, "dayCount":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 330
    add-int v4, v3, v1

    rem-int/lit8 v0, v4, 0x7

    .line 331
    invoke-direct {p0, v0}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 294
    iput p1, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    .line 295
    return-void
.end method

.method public set(IZ)V
    .locals 2
    .param p1, "day"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 282
    if-eqz p2, :cond_0

    .line 283
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z

    .prologue
    const/4 v8, 0x1

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v5, "ret":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    if-nez v6, :cond_1

    .line 242
    if-eqz p2, :cond_0

    const v6, 0x7f0c0e42

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 274
    :goto_0
    return-object v6

    .line 242
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 246
    :cond_1
    iget v6, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2

    .line 247
    const v6, 0x7f0c0e43

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x0

    .line 252
    .local v0, "dayCount":I
    iget v2, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    .line 253
    .local v2, "days":I
    :goto_1
    if-lez v2, :cond_4

    .line 254
    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_3

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_3
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    :cond_4
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 262
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    if-le v0, v8, :cond_6

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "dayList":[Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v6, 0x7

    if-ge v4, v6, :cond_7

    .line 266
    iget v6, p0, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->mDays:I

    shl-int v7, v8, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 267
    sget-object v6, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v6, v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    add-int/lit8 v0, v0, -0x1

    .line 269
    if-lez v0, :cond_5

    .line 270
    const v6, 0x7f0c0e44

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 265
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 262
    .end local v1    # "dayList":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 274
    .restart local v1    # "dayList":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
