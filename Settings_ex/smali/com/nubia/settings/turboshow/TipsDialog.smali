.class public Lcom/nubia/settings/turboshow/TipsDialog;
.super Ljava/lang/Object;
.source "TipsDialog.java"


# static fields
.field private static final mContentInterpolatorIn:Landroid/view/animation/Interpolator;

.field private static final mContentInterpolatorOut:Landroid/view/animation/Interpolator;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContentLayout:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingOutAnimation:Z

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x3ee66666    # 0.45f

    .line 40
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3fe66666    # 1.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentInterpolatorIn:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    const v3, -0x41666666    # -0.3f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentInterpolatorOut:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    .line 36
    const-string v0, "TipsDialog"

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->TAG:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/nubia/settings/turboshow/TipsDialog$5;

    invoke-direct {v0, p0}, Lcom/nubia/settings/turboshow/TipsDialog$5;-><init>(Lcom/nubia/settings/turboshow/TipsDialog;)V

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/nubia/settings/turboshow/TipsDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TipsDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->createDialogOutAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/nubia/settings/turboshow/TipsDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TipsDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nubia/settings/turboshow/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mPlayingOutAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nubia/settings/turboshow/TipsDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TipsDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->closeDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/nubia/settings/turboshow/TipsDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/nubia/settings/turboshow/TipsDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->createDialogInAnimation()V

    return-void
.end method

.method private closeDialog()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "TipsDialog"

    const-string v2, "close dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TipsDialog"

    const-string v2, "Exception closeDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createDialogInAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x190

    const/4 v7, 0x2

    .line 120
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 123
    .local v2, "totalscaleXAnim":Landroid/animation/Animator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 124
    sget-object v4, Lcom/nubia/settings/turboshow/TipsDialog;->mContentInterpolatorIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 127
    .local v3, "totalscaleYAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 128
    sget-object v4, Lcom/nubia/settings/turboshow/TipsDialog;->mContentInterpolatorIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 131
    .local v1, "totalAlphaAnim":Landroid/animation/Animator;
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 132
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 135
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v1, v4, v7

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 137
    return-void

    .line 122
    nop

    :array_0
    .array-data 4
        0x3f3851ec    # 0.72f
        0x3f800000    # 1.0f
    .end array-data

    .line 126
    :array_1
    .array-data 4
        0x3f3851ec    # 0.72f
        0x3f800000    # 1.0f
    .end array-data

    .line 130
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createDialogOutAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, 0x2

    .line 153
    iget-boolean v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mPlayingOutAnimation:Z

    if-eqz v4, :cond_0

    .line 182
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 155
    .local v0, "animOutSet":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 156
    .local v1, "contentAlphaAnim":Landroid/animation/Animator;
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 157
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 160
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 161
    .local v2, "totalscaleXAnim":Landroid/animation/Animator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 162
    sget-object v4, Lcom/nubia/settings/turboshow/TipsDialog;->mContentInterpolatorOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    iget-object v4, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 164
    .local v3, "totalscaleYAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 165
    sget-object v4, Lcom/nubia/settings/turboshow/TipsDialog;->mContentInterpolatorOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v1, v4, v7

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 168
    new-instance v4, Lcom/nubia/settings/turboshow/TipsDialog$4;

    invoke-direct {v4, p0}, Lcom/nubia/settings/turboshow/TipsDialog$4;-><init>(Lcom/nubia/settings/turboshow/TipsDialog;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 155
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 160
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f3851ec    # 0.72f
    .end array-data

    .line 163
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f3851ec    # 0.72f
    .end array-data
.end method

.method private initDialog()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContext:Landroid/content/Context;

    const v2, 0x30e0007

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    .line 89
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/nubia/settings/turboshow/TipsDialog$3;

    invoke-direct {v1, p0}, Lcom/nubia/settings/turboshow/TipsDialog$3;-><init>(Lcom/nubia/settings/turboshow/TipsDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 102
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f0401c9

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 68
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 69
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f1203ed

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    .line 70
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f1203f1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 71
    .local v1, "mTurboShowLeadPageButton":Landroid/widget/Button;
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f1203ee

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, "mCloseTextView":Landroid/widget/TextView;
    new-instance v2, Lcom/nubia/settings/turboshow/TipsDialog$1;

    invoke-direct {v2, p0}, Lcom/nubia/settings/turboshow/TipsDialog$1;-><init>(Lcom/nubia/settings/turboshow/TipsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v2, Lcom/nubia/settings/turboshow/TipsDialog$2;

    invoke-direct {v2, p0}, Lcom/nubia/settings/turboshow/TipsDialog$2;-><init>(Lcom/nubia/settings/turboshow/TipsDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private initWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 50
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 51
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 53
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContext:Landroid/content/Context;

    const v3, 0x10c000b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 57
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 58
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 59
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 62
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    return-void
.end method

.method private prepareEnterAnim()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContentLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 193
    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "turbo_show_first"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->closeDialog()V

    .line 108
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->initDialog()V

    .line 109
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->initWindow()V

    .line 110
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->initView()V

    .line 112
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 114
    invoke-direct {p0}, Lcom/nubia/settings/turboshow/TipsDialog;->prepareEnterAnim()V

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TipsDialog;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method
