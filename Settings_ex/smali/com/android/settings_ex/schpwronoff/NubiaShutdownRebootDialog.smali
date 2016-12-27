.class public Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
.super Landroid/app/Dialog;
.source "NubiaShutdownRebootDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$CallbackAction;,
        Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mCallbackAction:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$CallbackAction;

.field private mCancelImageView:Landroid/widget/ImageView;

.field private mCancelTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCountDownText:Landroid/widget/TextView;

.field private mDarkenLayerImageView:Landroid/widget/ImageView;

.field private mFuzzyLayerImageView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHandlerTakescreen:Landroid/os/Handler;

.field private mHomeEnable:Z

.field private mMainContent:Landroid/view/View;

.field private mMessage:Ljava/lang/String;

.field private mRebootFlag:Z

.field private mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

.field private mSecondsCountdown:I

.field private mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

.field private mShutdownFlag:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private sCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "NubiaShutdownRebootDialog"

    sput-object v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p3, "theme"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 57
    iput-boolean v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootFlag:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCallbackAction:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$CallbackAction;

    .line 60
    iput-boolean v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHomeEnable:Z

    .line 66
    new-instance v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHandlerTakescreen:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$2;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    .line 135
    iput-boolean v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootFlag:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->fireShutDown()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->startEnterAnimator()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->isCanInterrupt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMainContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->cancelCountDownTimer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->getWallpaperGrayValue()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHandlerTakescreen:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->taskScreenShot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootFlag:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Lcom/android/settings_ex/schpwronoff/NubiaSlideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V

    return-void
.end method

.method private cancelCountDownTimer()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->TAG:Ljava/lang/String;

    const-string v1, "cancel sCountDownTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 397
    :cond_0
    return-void
.end method

.method private fireShutDown()V
    .locals 3

    .prologue
    .line 399
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 402
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method private getWallpaperGrayValue()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v13

    .line 301
    .local v13, "wm":Landroid/app/WallpaperManager;
    const-class v1, Landroid/app/WallpaperManager;

    const-string v2, "clipBlurWallpaper"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 303
    .local v9, "getBlurWallpaper":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 304
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 305
    .local v10, "h":I
    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 306
    .local v12, "w":I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v11, v1, v2, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 307
    .local v11, "rect":Landroid/graphics/Rect;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v9, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 309
    .local v0, "wallpaper":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 310
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 311
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    .end local v0    # "wallpaper":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v9    # "getBlurWallpaper":Ljava/lang/reflect/Method;
    .end local v10    # "h":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "w":I
    .end local v13    # "wm":Landroid/app/WallpaperManager;
    :goto_0
    return-object v0

    .line 313
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0e49

    .line 216
    const v0, 0x7f1202b0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCountDownText:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f1202b3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 219
    const v0, 0x7f1202ac

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f1202ad

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f1202b1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02033b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setText(Ljava/lang/String;)V

    .line 225
    const v0, 0x7f1202b2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020315

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setText(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setDarkenAndFuzzyImage(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setOnChangeListener(Lcom/android/settings_ex/schpwronoff/NubiaSlideView$OnShutDownRebootListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setOnChangeListener(Lcom/android/settings_ex/schpwronoff/NubiaSlideView$OnShutDownRebootListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setHandler(Landroid/os/Handler;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setMessageFlag(I)V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setHandler(Landroid/os/Handler;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->setMessageFlag(I)V

    .line 236
    const v0, 0x7f1202b4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$5;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method private isCanInterrupt()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mHomeEnable:Z

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 346
    goto :goto_0

    :cond_1
    move v1, v2

    .line 347
    goto :goto_1
.end method

.method private registerScreenOnReceiver()V
    .locals 3

    .prologue
    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 409
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    new-instance v1, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$7;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$7;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    .line 419
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    return-void
.end method

.method private setCancelAlpha(FF)V
    .locals 3
    .param p1, "shift"    # F
    .param p2, "maxScrollerDistance"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 320
    div-float v1, p2, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 326
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    .line 330
    return-void

    .line 323
    .end local v0    # "alpha":F
    :cond_0
    sub-float p1, p2, p1

    .line 324
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v2, p1

    div-float/2addr v2, p2

    sub-float v0, v1, v2

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private startEnterAnimator()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const-wide/16 v6, 0xe1

    const/4 v5, 0x2

    .line 351
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 353
    .local v0, "oa1":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 355
    .local v1, "oa2":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 358
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 359
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 360
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 361
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 362
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 363
    return-void

    .line 351
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 353
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 281
    .local v11, "mWindowManager":Landroid/view/WindowManager;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 282
    .local v10, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 283
    .local v8, "mDisplay":Landroid/view/Display;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 285
    .local v9, "mDisplayMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 286
    const/4 v0, 0x2

    new-array v7, v0, [F

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    aput v0, v7, v3

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    aput v0, v7, v2

    .line 289
    .local v7, "dims":[F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aget v1, v7, v3

    float-to-int v1, v1

    aget v2, v7, v2

    float-to-int v2, v2

    const/4 v4, -0x1

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 291
    .local v12, "screenBitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 295
    .end local v12    # "screenBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v12

    .line 293
    .restart local v12    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v12, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 294
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_0
.end method

.method private taskScreenShot()V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$6;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 276
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 143
    sget-object v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SchPwrWakeLock.isScreenOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v0, 0x7f040112

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->setContentView(I)V

    .line 145
    const v0, 0x7f1202ab

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMainContent:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mMainContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->init()V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->taskScreenShot()V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 157
    const/16 v6, 0x10

    .line 158
    .local v6, "countSeconds":I
    const/16 v7, 0x3e8

    .line 159
    .local v7, "millisSeconds":I
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I

    .line 160
    new-instance v0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;

    iget v1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mSecondsCountdown:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$3;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;JJ)V

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->dismiss()V

    .line 195
    :goto_1
    return-void

    .line 153
    .end local v6    # "countSeconds":I
    .end local v7    # "millisSeconds":I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->registerScreenOnReceiver()V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    goto :goto_0

    .line 192
    .restart local v6    # "countSeconds":I
    .restart local v7    # "millisSeconds":I
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->isCanInterrupt()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    .line 376
    .local v0, "mBackEnable":Z
    :goto_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .end local v0    # "mBackEnable":Z
    :cond_3
    move v0, v1

    .line 375
    goto :goto_0
.end method

.method public setCallbackShutdownOrReboot(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$CallbackAction;)V
    .locals 0
    .param p1, "callbackAction"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$CallbackAction;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCallbackAction:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$CallbackAction;

    .line 371
    return-void
.end method

.method public setCountDownText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mCountDownText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/settings_ex/schpwronoff/NubiaSlideView;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaSlideView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$4;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 211
    return-void
.end method
