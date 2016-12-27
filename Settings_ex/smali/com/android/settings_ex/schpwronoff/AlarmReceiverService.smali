.class public Lcom/android/settings_ex/schpwronoff/AlarmReceiverService;
.super Landroid/app/IntentService;
.source "AlarmReceiverService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "AlarmReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 67
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 69
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 68
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "broadcastIntent"    # Landroid/content/Intent;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/schpwronoff/AlarmReceiverService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    const-string v1, "AlarmReceiverService"

    const-string v2, "startService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 38
    .local v3, "userId":I
    const-string v4, "AlarmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHandleIntent, User Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string v4, "broadcast_receiver"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 46
    .local v2, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "broadcastAction":Ljava/lang/String;
    const-string v4, "AlarmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    const/4 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-static {p0, v4, v6, v7}, Lcom/android/settings_ex/schpwronoff/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 53
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 54
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v4, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/AlarmReceiverService;->bootFromPoweroffAlarm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {p0}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0
.end method
