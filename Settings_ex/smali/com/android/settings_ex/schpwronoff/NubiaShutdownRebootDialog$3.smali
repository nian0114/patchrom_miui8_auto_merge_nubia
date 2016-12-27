.class Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;
.super Landroid/os/CountDownTimer;
.source "NubiaShutdownRebootDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1400(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone is incall, countdown end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->dismiss()V

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "count down timer arrived, shutdown phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->fireShutDown()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1602(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 9
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    div-long v2, p1, v6

    long-to-int v1, v2

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1002(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;I)I

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)I

    move-result v0

    if-le v0, v4, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1200(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0e46

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1102(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    :goto_0
    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1100(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->setCountDownText(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1200(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0e47

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1102(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
