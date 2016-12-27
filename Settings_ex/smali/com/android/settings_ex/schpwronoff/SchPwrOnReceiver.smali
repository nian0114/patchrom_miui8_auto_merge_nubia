.class public Lcom/android/settings_ex/schpwronoff/SchPwrOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SchPwrOnReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 26
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "onReceive"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x0

    .line 32
    .local v0, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    const-string v7, "intent.extra.alarm_raw"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 35
    .local v3, "in":Landroid/os/Parcel;
    array-length v7, v1

    invoke-virtual {v3, v1, v12, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 36
    invoke-virtual {v3, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sget-object v7, Lcom/android/settings_ex/schpwronoff/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    check-cast v0, Lcom/android/settings_ex/schpwronoff/Alarm;

    .line 40
    .end local v3    # "in":Landroid/os/Parcel;
    .restart local v0    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    :cond_0
    if-nez v0, :cond_2

    .line 41
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver failed to parse the alarm from the intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    const/16 v6, 0x3e8

    .line 47
    .local v6, "stateWindowTimeoff":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 48
    .local v4, "now":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm:ss.SSS aaa"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const-string v7, "SchPwrOnReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SchPwrOnReceiver.onReceive() id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " setFor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    iget-wide v10, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-wide v8, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    const-wide/32 v10, 0x1b7740

    add-long/2addr v8, v10

    cmp-long v7, v4, v8

    if-lez v7, :cond_3

    .line 53
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver ignoring stale alarm"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_3
    const-string v7, "SchPwrOnReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SchPwrOnReceiver.onReceive() id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget v7, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 68
    iget-object v7, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v7}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 71
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver.onReceive(): isRepeatSet()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p1}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlertPowerOn(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 74
    :cond_4
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver.onReceive(): not isRepeatSet()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v7, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-static {p1, v7, v12}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 77
    :cond_5
    iget v7, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 78
    const-string v7, "SchPwrOnReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SchPwrOnReceiver.onReceive() id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " get power off time out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
