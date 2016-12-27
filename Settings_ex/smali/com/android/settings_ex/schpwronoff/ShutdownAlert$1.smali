.class Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;
.super Landroid/os/CountDownTimer;
.source "ShutdownAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$400(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "ShutdownAlert"

    const-string v1, "phone is incall, countdown end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$300(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "ShutdownAlert"

    const-string v1, "count down timer arrived, shutdown phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # invokes: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->fireShutDown()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$500(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)V

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 9
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    div-long v2, p1, v6

    long-to-int v1, v2

    # setter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$002(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;I)I

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$000(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$200(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0e46

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$000(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$102(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    :goto_0
    const-string v0, "ShutdownAlert"

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

    .line 64
    const-string v0, "ShutdownAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$100(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$300(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$100(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$200(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0e47

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$000(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$102(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
