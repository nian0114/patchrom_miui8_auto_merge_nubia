.class public Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "FingerprintIdentifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;
    }
.end annotation


# static fields
.field private static final imageIds:[I


# instance fields
.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCancelSignal:Landroid/os/CancellationSignal;

.field private mClickTime:J

.field private mCurrentImageId:I

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field protected mToken:[B

.field private mTutorialPic:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->imageIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200af
        0x7f0200b0
        0x7f0200b1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCurrentImageId:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mClickTime:J

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->updateImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startEnrollActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->showFingerprintExistAlertDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startAuthenticate()V

    return-void
.end method

.method private isFingerprintAuthAvailable()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method private static readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 259
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 261
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 262
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 264
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private releaseImageViewResouce()V
    .locals 4

    .prologue
    .line 268
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mTutorialPic:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mTutorialPic:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 271
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 272
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private showFingerprintExistAlertDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 208
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400a6

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 210
    .local v2, "tipsEntryView":Landroid/view/View;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "dialogBuilder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 212
    const v3, 0x7f0c0138

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 213
    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 221
    return-void
.end method

.method private startAuthenticate()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 137
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCancelSignal:Landroid/os/CancellationSignal;

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCancelSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;

    invoke-direct {v4, p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;)V

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 140
    return-void
.end method

.method private startEnrollActivity()V
    .locals 4

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 201
    const-string v1, "add_finger_for"

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "add_finger_for"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method private startListenEnroll()V
    .locals 5

    .prologue
    .line 103
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCancelSignal:Landroid/os/CancellationSignal;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mToken:[B

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mToken:[B

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCancelSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "FingerprintIdentifyActivity"

    const-string v1, "startListenEnroll BUT token is null error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopAuthenticateOrEnroll()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCancelSignal:Landroid/os/CancellationSignal;

    .line 147
    :cond_0
    return-void
.end method

.method private updateImage()V
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCurrentImageId:I

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->imageIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCurrentImageId:I

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->releaseImageViewResouce()V

    .line 253
    sget-object v0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->imageIds:[I

    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCurrentImageId:I

    aget v0, v0, v1

    invoke-static {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mTutorialPic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCurrentImageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mCurrentImageId:I

    .line 256
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 65
    const v1, 0x7f0400a5

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->setContentView(I)V

    .line 66
    const v1, 0x7f1201a6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mTutorialPic:Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f0c0b45

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->setTitle(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    :cond_0
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mToken:[B

    .line 78
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mToken:[B

    if-nez v1, :cond_1

    .line 79
    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mToken:[B

    .line 82
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 236
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b48

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mClickTime:J

    .line 244
    :goto_0
    const/4 v0, 0x1

    .line 246
    :goto_1
    return v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->finish()V

    goto :goto_0

    .line 246
    :cond_1
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 230
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 227
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->onBackPressed()V

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->stopAuthenticateOrEnroll()V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->finish()V

    .line 186
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->isFingerprintAuthAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startAuthenticate()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startListenEnroll()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mTutorialPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->releaseImageViewResouce()V

    .line 194
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onStop()V

    .line 195
    return-void
.end method
