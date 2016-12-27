.class public Lcom/android/settings_ex/schpwronoff/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field public static ALARM_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "alarm_type"

    sput-object v0, Lcom/android/settings_ex/schpwronoff/Alarms;->ALARM_TYPE:Ljava/lang/String;

    return-void
.end method

.method static calculateAlarm(IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "daysOfWeek"    # Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 440
    .local v1, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 442
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 443
    .local v2, "nowHour":I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 446
    .local v3, "nowMinute":I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 447
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 449
    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 450
    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 451
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 452
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 454
    invoke-virtual {p2, v1}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 459
    .local v0, "addDays":I
    if-lez v0, :cond_2

    .line 460
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 462
    :cond_2
    return-object v1
.end method

.method public static calculateNextAlert(Landroid/content/Context;I)Lcom/android/settings_ex/schpwronoff/Alarm;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmId"    # I

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    const/4 v2, 0x0

    .line 196
    .local v2, "cursor":Landroid/database/Cursor;
    const-wide v4, 0x7fffffffffffffffL

    .line 197
    .local v4, "minTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 198
    .local v6, "now":J
    const-string v3, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_now = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", alarmId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/settings_ex/schpwronoff/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;I)Landroid/database/Cursor;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_3

    .line 202
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    :cond_0
    new-instance v0, Lcom/android/settings_ex/schpwronoff/Alarm;

    invoke-direct {v0, v2}, Lcom/android/settings_ex/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 205
    .local v0, "a":Lcom/android/settings_ex/schpwronoff/Alarm;
    const-string v3, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_atime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v3, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_min_time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-wide v8, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_5

    .line 210
    iget v3, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget v8, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v9, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-static {v3, v8, v9}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateAlarm(IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    .line 212
    const-string v3, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_calculateAlarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    :goto_0
    iget-wide v8, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_2

    .line 222
    iget-wide v4, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    .line 223
    move-object v1, v0

    .line 225
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 229
    .end local v0    # "a":Lcom/android/settings_ex/schpwronoff/Alarm;
    :cond_3
    if-eqz v2, :cond_4

    .line 230
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_4
    return-object v1

    .line 213
    .restart local v0    # "a":Lcom/android/settings_ex/schpwronoff/Alarm;
    :cond_5
    :try_start_1
    iget-wide v8, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    cmp-long v3, v8, v6

    if-gez v3, :cond_7

    .line 214
    const-string v3, "Settings/Alarms"

    const-string v8, "Alarms.calculateNextAlert()_atime < now"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 229
    .end local v0    # "a":Lcom/android/settings_ex/schpwronoff/Alarm;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    .line 230
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 218
    .restart local v0    # "a":Lcom/android/settings_ex/schpwronoff/Alarm;
    :cond_7
    :try_start_2
    iget-boolean v3, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    if-eqz v3, :cond_1

    .line 219
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static clearSnoozePreference(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p0, "ed"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 421
    const-string v0, "snooze_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 422
    const-string v0, "snooze_time"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    return-void
.end method

.method private static disableAlert(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 328
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 330
    .local v0, "am":Landroid/app/AlarmManager;
    const/high16 v3, 0x10000000

    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 332
    .local v2, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancelPowerOnOffAlarm(I)V

    .line 333
    const-string v3, "Settings/Alarms"

    const-string v4, "Alarms.disableAlertPowerOff(): disableForPowerOff"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method private static disableAlertPowerOn(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/schpwronoff/SchPwrOnReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 387
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 397
    .local v2, "sender":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/Alarms;->getPowerOnAlarmType()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancelPowerOnOffAlarm(I)V

    .line 400
    const-string v3, "Settings/Alarms"

    const-string v4, "Alarms.disableAlertPowerOn(): disableForPowerOn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    .local v2, "now":J
    if-eqz v1, :cond_2

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    :cond_0
    new-instance v0, Lcom/android/settings_ex/schpwronoff/Alarm;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 251
    .local v0, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    iget-wide v4, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 252
    const-string v4, "Settings/Alarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** DISABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;Z)V

    .line 256
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 260
    .end local v0    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    :cond_2
    if-eqz v1, :cond_3

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_3
    return-void

    .line 260
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 149
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 150
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 151
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlertPowerOn(Landroid/content/Context;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlertPowerOff(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings_ex/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    .line 159
    .local v0, "al":Lcom/android/settings_ex/schpwronoff/Alarm;
    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0, v0, p2}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;Z)V

    .line 162
    :cond_0
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/settings_ex/schpwronoff/Alarm;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 169
    .local v1, "values":Landroid/content/ContentValues;
    const-string v5, "enabled"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    if-eqz p2, :cond_1

    .line 174
    const-wide/16 v2, 0x0

    .line 175
    .local v2, "time":J
    iget-object v4, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    iget v4, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget v5, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v6, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateAlarm(IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 179
    :cond_0
    iput-wide v2, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    .line 180
    const-string v4, "alarmtime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    .end local v2    # "time":J
    :cond_1
    sget-object v4, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    int-to-long v6, v5

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    return-void

    .line 169
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static enableAlert(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/settings_ex/schpwronoff/Alarm;
    .param p2, "atTimeInMillis"    # J

    .prologue
    const/4 v8, 0x0

    .line 308
    if-nez p1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 312
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 315
    .local v3, "out":Landroid/os/Parcel;
    invoke-virtual {p1, v3, v8}, Lcom/android/settings_ex/schpwronoff/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 317
    const-string v5, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 318
    const/high16 v5, 0x10000000

    invoke-static {p0, v8, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 320
    .local v4, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v8, p2, p3, v4}, Landroid/app/AlarmManager;->setPowerOnOffAlarm(IJLandroid/app/PendingIntent;)V

    .line 321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 322
    .local v1, "c":Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 323
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alarms.enableAlertPowerOff(): setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static enableAlertPowerOn(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/settings_ex/schpwronoff/Alarm;
    .param p2, "atTimeInMillis"    # J

    .prologue
    const/4 v8, 0x0

    .line 360
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 362
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/schpwronoff/SchPwrOnReceiver;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 364
    .local v3, "out":Landroid/os/Parcel;
    invoke-virtual {p1, v3, v8}, Lcom/android/settings_ex/schpwronoff/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 365
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 366
    const-string v5, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 367
    const/high16 v5, 0x10000000

    invoke-static {p0, v8, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 377
    .local v4, "sender":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/Alarms;->getPowerOnAlarmType()I

    move-result v5

    invoke-virtual {v0, v5, p2, p3, v4}, Landroid/app/AlarmManager;->setPowerOnOffAlarm(IJLandroid/app/PendingIntent;)V

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 379
    .local v1, "c":Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 380
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alarms.enableAlertPowerOn(): setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method static formatTime(Landroid/content/Context;IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "daysOfWeek"    # Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    .prologue
    .line 467
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateAlarm(IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .line 468
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/android/settings_ex/schpwronoff/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 473
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 474
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 473
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm aa"

    goto :goto_0

    .line 474
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getAlarm(Landroid/content/ContentResolver;I)Lcom/android/settings_ex/schpwronoff/Alarm;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarmId"    # I

    .prologue
    .line 77
    const/4 v7, 0x0

    .line 78
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 80
    .local v6, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    if-eqz v7, :cond_0

    .line 83
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v6, Lcom/android/settings_ex/schpwronoff/Alarm;

    .end local v6    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-direct {v6, v7}, Lcom/android/settings_ex/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .restart local v6    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    :cond_0
    if-eqz v7, :cond_1

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_1
    return-object v6

    .line 88
    .end local v6    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x0

    .line 58
    sget-object v1, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;I)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarmId"    # I

    .prologue
    const/4 v4, 0x0

    .line 63
    const-string v0, "Settings/Alarms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getPowerOnAlarmType()I
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/Alarms;->isMTKplatformSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v0, 0x7

    .line 504
    .local v0, "POWER_ON_TYPE":I
    :goto_0
    return v0

    .line 499
    .end local v0    # "POWER_ON_TYPE":I
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 500
    const/4 v0, 0x5

    .restart local v0    # "POWER_ON_TYPE":I
    goto :goto_0

    .line 502
    .end local v0    # "POWER_ON_TYPE":I
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "POWER_ON_TYPE":I
    goto :goto_0
.end method

.method private static isMTKplatformSupported()Z
    .locals 4

    .prologue
    .line 485
    const-string v0, "com.mediatek.pq.PictureQuality"

    .line 486
    .local v0, "PICTURE_QUALITY_CLAZZ":Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "com.mediatek.pq.PictureQuality"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 492
    :goto_0
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 492
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "time"    # J

    .prologue
    .line 404
    const-string v2, "Settings/Alarms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarms.saveSnoozeAlert(): id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 406
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 408
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/Alarms;->clearSnoozePreference(Landroid/content/SharedPreferences$Editor;)V

    .line 415
    :goto_0
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 416
    return-void

    .line 410
    :cond_0
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 411
    const-string v2, "snooze_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "hour"    # I
    .param p4, "minutes"    # I
    .param p5, "daysOfWeek"    # Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;
    .param p6, "vibrate"    # Z
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "alert"    # Ljava/lang/String;

    .prologue
    .line 109
    const/16 v2, 0x8

    .line 110
    .local v2, "initSize":I
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0x8

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 111
    .local v6, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 114
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-wide/16 v4, 0x0

    .line 115
    .local v4, "time":J
    invoke-virtual {p5}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    invoke-static {p3, p4, p5}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateAlarm(IILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 119
    :cond_0
    const-string v7, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "**  setAlarm * idx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hour "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " minutes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v8, "enabled"

    if-eqz p2, :cond_2

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v7, "hour"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v7, "minutes"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v7, "alarmtime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    const-string v7, "daysofweek"

    invoke-virtual {p5}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->getCoded()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v7, "vibrate"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    const-string v7, "message"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v7, "alert"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v7, Lcom/android/settings_ex/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, p1

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    .line 135
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlertPowerOn(Landroid/content/Context;)V

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 122
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 136
    :cond_3
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    .line 138
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlertPowerOff(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    .line 274
    .local v0, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->disableAlertPowerOn(Landroid/content/Context;)V

    .line 275
    if-eqz v0, :cond_0

    .line 276
    iget-wide v2, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlertPowerOn(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;J)V

    .line 279
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    .line 280
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->disableAlert(Landroid/content/Context;)V

    .line 281
    if-eqz v0, :cond_1

    .line 282
    iget-wide v2, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlert(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;J)V

    .line 284
    :cond_1
    return-void
.end method

.method public static setNextAlertPowerOff(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    .line 292
    .local v0, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    if-nez v0, :cond_0

    .line 293
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->disableAlert(Landroid/content/Context;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-wide v2, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlert(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;J)V

    goto :goto_0
.end method

.method public static setNextAlertPowerOn(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings_ex/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    .line 343
    .local v0, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    if-nez v0, :cond_0

    .line 344
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->disableAlertPowerOn(Landroid/content/Context;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-wide v2, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlertPowerOn(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm;J)V

    goto :goto_0
.end method
