.class public Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SchPwrOffReceiver.java"


# instance fields
.field private isInKeyguard:Z

.field mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

.field private mOringinDate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mOringinDate:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->isInKeyguard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->showKeyGuardDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->showShutdownAlert()V

    return-void
.end method

.method private createKeyGuardDialog()Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 181
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, "params":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 183
    new-instance v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0058

    invoke-direct {v0, v2, v1, v3}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;I)V

    .line 185
    .local v0, "dialog":Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->setCanceledOnTouchOutside(Z)V

    .line 186
    new-instance v2, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$2;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)V

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->setCallbackShutdownOrReboot(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$CallbackAction;)V

    .line 208
    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 210
    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 212
    return-object v0
.end method

.method private static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 175
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 177
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 176
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showKeyGuardDialog()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mDialog:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->createKeyGuardDialog()Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mDialog:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mDialog:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->show()V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mDialog:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 225
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mDialog:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->dismiss()V

    goto :goto_0
.end method

.method private showShutdownAlert()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "alert":Lcom/android/settings_ex/schpwronoff/ShutdownAlert;
    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->create()V

    .line 230
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "intent action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v18, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 47
    .local v11, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v11}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->isInKeyguard:Z

    .line 48
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isInKeyguard : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->isInKeyguard:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v18, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 50
    sget-object v18, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v18, :cond_0

    .line 51
    const-string v18, "SchPwrOffReceiver"

    const-string v19, "ShutdownAlert.sCountDownTimer != null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v18, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual/range {v18 .. v18}, Landroid/os/CountDownTimer;->cancel()V

    .line 53
    const/16 v18, 0x0

    sput-object v18, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v18, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 58
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    goto :goto_0

    .line 62
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mContext:Landroid/content/Context;

    .line 63
    const/4 v4, 0x0

    .line 64
    .local v4, "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 65
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mOringinDate:I

    .line 66
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mOringinDate : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mOringinDate:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v18, "intent.extra.alarm_raw"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 72
    .local v7, "data":[B
    if-eqz v7, :cond_3

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 74
    .local v9, "in":Landroid/os/Parcel;
    const/16 v18, 0x0

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v7, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 75
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    sget-object v18, Lcom/android/settings_ex/schpwronoff/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    check-cast v4, Lcom/android/settings_ex/schpwronoff/Alarm;

    .line 79
    .end local v9    # "in":Landroid/os/Parcel;
    .restart local v4    # "alarm":Lcom/android/settings_ex/schpwronoff/Alarm;
    :cond_3
    if-nez v4, :cond_4

    .line 80
    const-string v18, "SchPwrOffReceiver"

    const-string v19, "SchPwrOffReceiver failed to parse the alarm from the intent"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_4
    const/16 v13, 0x3e8

    .line 87
    .local v13, "millisInSeconds":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 88
    .local v14, "now":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v18, "HH:mm:ss.SSS aaa"

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    .local v8, "format":Ljava/text/SimpleDateFormat;
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SchPwrOffReceiver.onReceive() id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " setFor "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    iget-wide v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-wide v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x1b7740

    add-long v18, v18, v20

    cmp-long v18, v14, v18

    if-lez v18, :cond_5

    .line 92
    const-string v18, "SchPwrOffReceiver"

    const-string v19, "SchPwrOffReceiver ignoring stale alarm"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "now = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "stale time = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mTime:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x1b7740

    add-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, "closeDialogs":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    const/16 v16, 0x384

    .line 108
    .local v16, "schduleTimeOff":I
    iget v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 109
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SchPwrOffReceiver.onReceive() id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " get power on time out "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 110
    :cond_6
    iget v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v10, 0x0

    .line 112
    .local v10, "isInCall":Z
    const-string v18, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 113
    .local v17, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v18

    if-eqz v18, :cond_7

    const/4 v10, 0x1

    .line 114
    :goto_1
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SchPwrOffReceiver.onReceive() id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in call "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->isAlarmBoot()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 117
    const-string v18, "SchPwrOffReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SchPwrOffReceiver.onReceive() id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isAlarmboot= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->isAlarmBoot()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_2
    iget-object v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 159
    const-string v18, "SchPwrOffReceiver"

    const-string v19, "SchPwrOffReceiver.onReceive(): not isRepeatSet()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/schpwronoff/Alarms;->setNextAlertPowerOff(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 113
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 118
    :cond_8
    if-eqz v10, :cond_9

    .line 119
    new-instance v12, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;-><init>(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)V

    .line 143
    .local v12, "listener":Landroid/telephony/PhoneStateListener;
    const/16 v18, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_2

    .line 145
    .end local v12    # "listener":Landroid/telephony/PhoneStateListener;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->isInKeyguard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->showKeyGuardDialog()V

    goto :goto_2

    .line 152
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->showShutdownAlert()V

    goto :goto_2

    .line 162
    :cond_b
    const-string v18, "SchPwrOffReceiver"

    const-string v19, "SchPwrOffReceiver.onReceive(): isRepeatSet() "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v0, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    goto/16 :goto_0
.end method
