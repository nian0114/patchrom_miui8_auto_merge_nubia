.class public Lcom/android/phone/NBCallPromptsManager;
.super Ljava/lang/Object;
.source "NBCallPromptsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;,
        Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;
    }
.end annotation


# instance fields
.field private isNBCallPrompts:Z

.field private mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;

.field protected mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

.field protected mSoundWorkerThread:Landroid/os/HandlerThread;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p1, "callManager"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NBCallPromptsManager;->isNBCallPrompts:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mToneGeneratorLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/NBCallPromptsManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBCallPromptsManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsManager;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsManager;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/NBCallPromptsManager;Lcom/android/phone/NBCallPromptsSound;)Lcom/android/phone/NBCallPromptsSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsManager;
    .param p1, "x1"    # Lcom/android/phone/NBCallPromptsSound;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/NBCallPromptsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsManager;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NBCallPromptsManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCallPromptsManager;->playCustomSound(I)V

    return-void
.end method

.method private cancelMinuteAlarm()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.phone.SET_MINUTE_TONE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private controlEndVabritate(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HANG_UP_VIBRATION_SETTING"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "mHangupVibration":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager;->controlResponseVibration()V

    .end local v0    # "mHangupVibration":I
    :cond_1
    return-void
.end method

.method private controlMinuteTone()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.android.phone.SET_MINUTE_TONE"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, "sender":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xd6d8

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private controlResponseVibration()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/Motor/VibrationMotorFactory;->createVibrationMotor()Lcn/nubia/Motor/IVibrationMotor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    invoke-interface {v0}, Lcn/nubia/Motor/IVibrationMotor;->notificationVibrator1()V

    return-void
.end method

.method public static createNBCallPromptsManager(Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/NBCallPromptsManager;
    .locals 1
    .param p0, "callManager"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    new-instance v0, Lcom/android/phone/NBCallPromptsManager;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCallPromptsManager;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-object v0
.end method

.method private handleCallPrompts(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .param p1, "fgCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "MINUTE_TONE_SETTING"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "mMinuteToneOpen":I
    iget-object v4, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "CALL_LINK_TONE_SETTING"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "mCallLinkTone":I
    iget-object v4, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "RESPONSE_VIBRATION_SETTING"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, "mResponseVibration":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .local v0, "earliestConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NBCallPromptsManager;->playResponseVibration(Lcom/android/internal/telephony/Connection;I)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/NBCallPromptsManager;->playCallLinkTone(I)V

    invoke-direct {p0, v2}, Lcom/android/phone/NBCallPromptsManager;->playMinuteTone(I)V

    iput-boolean v7, p0, Lcom/android/phone/NBCallPromptsManager;->isNBCallPrompts:Z

    return-void
.end method

.method private playCallLinkTone(I)V
    .locals 1
    .param p1, "callLinkValue"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallPromptsManager;->playCustomSound(I)V

    :cond_0
    return-void
.end method

.method private playCustomSound(I)V
    .locals 4
    .param p1, "soundIndex"    # I

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msgPlayTone":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private playEndSound(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    .local v0, "ifPlay":Z
    iget-object v4, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "CALL_END_TONE_SETTING"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "mCallEndTone":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v4

    if-eq v4, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .local v1, "isMissed":Z
    :cond_0
    :goto_0
    if-eq v2, v6, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, v6}, Lcom/android/phone/NBCallPromptsManager;->playCustomSound(I)V

    :cond_3
    return-void

    .end local v1    # "isMissed":Z
    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method private playMinuteTone(I)V
    .locals 1
    .param p1, "minuteToneValue"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager;->controlMinuteTone()V

    :cond_0
    return-void
.end method

.method private playResponseVibration(Lcom/android/internal/telephony/Connection;I)V
    .locals 1
    .param p1, "mConnection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "responseValue"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager;->controlResponseVibration()V

    :cond_0
    return-void
.end method


# virtual methods
.method public exitSoundThread()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    :cond_1
    return-void
.end method

.method public handleCdmaCallPrompts()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    iget-boolean v1, p0, Lcom/android/phone/NBCallPromptsManager;->isNBCallPrompts:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/NBCallPromptsManager;->handleCallPrompts(Lcom/android/internal/telephony/Call;)V

    :cond_1
    return-void
.end method

.method public handleEndPrompt(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NBCallPromptsManager;->isNBCallPrompts:Z

    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager;->cancelMinuteAlarm()V

    invoke-direct {p0, p1}, Lcom/android/phone/NBCallPromptsManager;->controlEndVabritate(Lcom/android/internal/telephony/Connection;)V

    invoke-direct {p0, p1}, Lcom/android/phone/NBCallPromptsManager;->playEndSound(Lcom/android/internal/telephony/Connection;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager;->cancelMinuteAlarm()V

    goto :goto_0
.end method

.method public handleGsmCallPrompts(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "fgPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    iget-boolean v1, p0, Lcom/android/phone/NBCallPromptsManager;->isNBCallPrompts:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallPromptsManager;->handleCallPrompts(Lcom/android/internal/telephony/Call;)V

    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    return-void
.end method

.method public initSoundThread()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SoundWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;-><init>(Lcom/android/phone/NBCallPromptsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;-><init>(Lcom/android/phone/NBCallPromptsManager;)V

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager;->mAlarmReceiver:Lcom/android/phone/NBCallPromptsManager$AlarmReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.phone.SET_MINUTE_TONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method
