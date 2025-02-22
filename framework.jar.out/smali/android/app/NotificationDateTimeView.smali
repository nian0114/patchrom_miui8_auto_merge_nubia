.class public Landroid/app/NotificationDateTimeView;
.super Landroid/widget/TextView;
.source "NotificationDateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final MINUTES_IN_MILLIS:J = 0xea60L

.field private static final ONE_HOURS_IN_MILLIS:J = 0x36ee80L

.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NotificationDateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L


# instance fields
.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/NotificationDateTimeView;->mLastDisplay:I

    new-instance v0, Landroid/app/NotificationDateTimeView$1;

    invoke-direct {v0, p0}, Landroid/app/NotificationDateTimeView$1;-><init>(Landroid/app/NotificationDateTimeView;)V

    iput-object v0, p0, Landroid/app/NotificationDateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/app/NotificationDateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/app/NotificationDateTimeView$2;-><init>(Landroid/app/NotificationDateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/NotificationDateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/NotificationDateTimeView;->mLastDisplay:I

    new-instance v0, Landroid/app/NotificationDateTimeView$1;

    invoke-direct {v0, p0}, Landroid/app/NotificationDateTimeView$1;-><init>(Landroid/app/NotificationDateTimeView;)V

    iput-object v0, p0, Landroid/app/NotificationDateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/app/NotificationDateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/app/NotificationDateTimeView$2;-><init>(Landroid/app/NotificationDateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/NotificationDateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const-string v2, "MM/dd"

    .local v2, "format":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yy"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .local v0, "curYear":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .local v4, "strCurYear":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/NotificationDateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .local v5, "strNotificationYear":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/app/NotificationDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {v8}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_2
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v8}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v6

    goto :goto_0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/NotificationDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private registerReceivers()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/app/NotificationDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/NotificationDateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/app/NotificationDateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/app/NotificationDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/NotificationDateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationDateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/app/NotificationDateTimeView;->registerReceivers()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationDateTimeView;->mAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/app/NotificationDateTimeView;->unregisterReceivers()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationDateTimeView;->mAttachedToWindow:Z

    return-void
.end method

.method public setTime(J)V
    .locals 9
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    iput v6, v7, Landroid/text/format/Time;->second:I

    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/NotificationDateTimeView;->mTimeMillis:J

    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/app/NotificationDateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {p0}, Landroid/app/NotificationDateTimeView;->update()V

    return-void
.end method

.method update()V
    .locals 26

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationDateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .local v14, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationDateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v18, v0

    .local v18, "time":Ljava/util/Date;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .local v16, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/NotificationDateTimeView;->mTimeMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    .local v22, "twelveHoursBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .local v20, "twelveHoursAfter":J
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->minute:I

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .local v10, "midnightBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .local v8, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "nowMillis":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    cmp-long v19, v12, v10

    if-ltz v19, :cond_1

    cmp-long v19, v12, v8

    if-ltz v19, :cond_2

    :cond_1
    cmp-long v19, v12, v22

    if-ltz v19, :cond_3

    cmp-long v19, v12, v20

    if-gez v19, :cond_3

    :cond_2
    const/4 v4, 0x0

    .local v4, "display":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/NotificationDateTimeView;->mLastDisplay:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationDateTimeView;->mLastFormat:Ljava/text/DateFormat;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/NotificationDateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .local v5, "format":Ljava/text/DateFormat;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationDateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/NotificationDateTimeView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_6

    cmp-long v19, v20, v8

    if-lez v19, :cond_5

    .end local v20    # "twelveHoursAfter":J
    :goto_3
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/NotificationDateTimeView;->mUpdateTimeMillis:J

    .end local v22    # "twelveHoursBefore":J
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .local v6, "finish":J
    goto/16 :goto_0

    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v6    # "finish":J
    .end local v17    # "text":Ljava/lang/String;
    .restart local v20    # "twelveHoursAfter":J
    .restart local v22    # "twelveHoursBefore":J
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "display":I
    goto :goto_1

    :cond_4
    packed-switch v4, :pswitch_data_0

    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "unknown display value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/app/NotificationDateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v5

    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_5
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/app/NotificationDateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_2

    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/app/NotificationDateTimeView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v5

    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_5

    .restart local v17    # "text":Ljava/lang/String;
    :cond_5
    move-wide/from16 v20, v8

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/NotificationDateTimeView;->mTimeMillis:J

    move-wide/from16 v24, v0

    cmp-long v19, v24, v12

    if-gez v19, :cond_7

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/NotificationDateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    :cond_7
    cmp-long v19, v22, v10

    if-gez v19, :cond_8

    .end local v22    # "twelveHoursBefore":J
    :goto_6
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/NotificationDateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .restart local v22    # "twelveHoursBefore":J
    :cond_8
    move-wide/from16 v22, v10

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
