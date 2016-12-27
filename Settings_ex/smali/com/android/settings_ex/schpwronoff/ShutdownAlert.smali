.class public Lcom/android/settings_ex/schpwronoff/ShutdownAlert;
.super Ljava/lang/Object;
.source "ShutdownAlert.java"


# static fields
.field public static sCountDownTimer:Landroid/os/CountDownTimer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mMessage:Ljava/lang/String;

.field private mSecondsCountdown:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->fireShutDown()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->cancelCountDownTimer()V

    return-void
.end method

.method private cancelCountDownTimer()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "ShutdownAlert"

    const-string v1, "cancel sCountDownTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 98
    :cond_0
    return-void
.end method

.method private fireShutDown()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method


# virtual methods
.method public create()V
    .locals 9

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 46
    const/16 v6, 0x10

    .line 47
    .local v6, "countSeconds":I
    const/16 v7, 0x3e8

    .line 48
    .local v7, "millisSeconds":I
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0e46

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->createDialog()V

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 52
    .local v8, "win":Landroid/view/Window;
    const/high16 v0, 0x480000

    invoke-virtual {v8, v0}, Landroid/view/Window;->addFlags(I)V

    .line 54
    new-instance v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;

    iget v1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mSecondsCountdown:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$1;-><init>(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;JJ)V

    sput-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 82
    const-string v0, "ShutdownAlert"

    const-string v1, "ShutdonwActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "ShutdownAlert"

    const-string v1, "sCountDownTimer.start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method protected createDialog()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "ShutdownAlert"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01c8

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$3;-><init>(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$2;-><init>(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 125
    return-void
.end method
