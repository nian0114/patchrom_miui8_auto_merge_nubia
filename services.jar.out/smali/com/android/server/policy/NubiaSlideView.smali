.class public Lcom/android/server/policy/NubiaSlideView;
.super Landroid/view/View;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FIRST_ALPHA_STATE:I = 0x0

.field private static final ANIMATION_SECOND_ALPHA_STATE:I = 0x2

.field private static final ANIMATION_TRANSITION_STATE:I = 0x1

.field private static final COLORS_TEXT:I = 0xffffff

.field public static final DARK_LAYER_ALPHA:F = 0.6f

.field public static final MESSAGE_REBOOT_FLAG:I = 0x2

.field public static final MESSAGE_REBOOT_IS_TOUCH:I = 0x1235

.field public static final MESSAGE_REBOOT_IS_UP:I = 0x1237

.field public static final MESSAGE_SHUTDOWN_FLAG:I = 0x1

.field public static final MESSAGE_SHUTDOWN_IS_TOUCH:I = 0x1234

.field public static final MESSAGE_SHUTDOWN_IS_UP:I = 0x1236

.field private static final TEXT_DISTANCE:I = 0x12

.field private static final TIME_FOUR:I = 0x64

.field private static final TIME_ONE:I = 0xc8

.field private static final TIME_THREE:I = 0x96

.field private static final TIME_TWO:I = 0x15e


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanInterrupt:Z

.field private mCircleStartOriginX:F

.field private mCircleStartOriginY:F

.field private mContext:Landroid/content/Context;

.field private mCurrX:F

.field private mDarkenLayerImageView:Landroid/widget/ImageView;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnterBgAlpha:F

.field private mFuzzyLayerImageView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mInitPosX:F

.field private mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

.field private mMaxScrollerDistance:F

.field private mMinRailWidth:I

.field private mMsgFlag:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointerID:I

.field private mRailHeight:I

.field private mShift:F

.field private mStr:Ljava/lang/String;

.field private mTextAlpha:I

.field private mTextBottom:F

.field private mTextLeft:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mViewAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/NubiaSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/NubiaSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mEnterBgAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mViewAlpha:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mCurrX:F

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mInitPosX:F

    iput-boolean v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/NubiaSlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/NubiaSlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/NubiaSlideView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mEnterBgAlpha:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/policy/NubiaSlideView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/server/policy/NubiaSlideView;->mEnterBgAlpha:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/NubiaSlideView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDarkenLayerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/NubiaSlideView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/NubiaSlideView;)Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/NubiaSlideView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/NubiaSlideView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/NubiaSlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMsgFlag:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/NubiaSlideView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/NubiaSlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/NubiaSlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/NubiaSlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/NubiaSlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/NubiaSlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/NubiaSlideView;->startLastDismissAnimator()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/NubiaSlideView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaSlideView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    return v0
.end method

.method private actionEventUP()V
    .locals 5

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCurrX:F

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mInitPosX:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mCurrX:F

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mInitPosX:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    :cond_1
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    rsub-int v0, v0, 0xff

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/NubiaSlideView;->onDismiss()V

    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    invoke-virtual {p0}, Lcom/android/server/policy/NubiaSlideView;->invalidate()V

    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/NubiaSlideView;->onRollBack()V

    goto :goto_2
.end method

.method private actionMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, -0x1

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .local v1, "pointerIndex":I
    if-eq v1, v4, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/policy/NubiaSlideView;->mCurrX:F

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v4, p0, Lcom/android/server/policy/NubiaSlideView;->mCurrX:F

    iget v5, p0, Lcom/android/server/policy/NubiaSlideView;->mInitPosX:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v4, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_4

    :goto_1
    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    :cond_3
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    rsub-int v2, v2, 0xff

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCurrX:F

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mInitPosX:F

    invoke-virtual {p0}, Lcom/android/server/policy/NubiaSlideView;->invalidate()V

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMsgFlag:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1234

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :pswitch_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x1235

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createEnterIntoAnimator(IIILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 4
    .param p1, "mode"    # I
    .param p2, "time"    # I
    .param p3, "delaytime"    # I
    .param p4, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/server/policy/NubiaSlideView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/NubiaSlideView$6;-><init>(Lcom/android/server/policy/NubiaSlideView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3020143

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mRailHeight:I

    :cond_0
    return-void
.end method

.method private isOnTouchOk(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .local v0, "index":I
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    sub-float v1, v2, v3

    .local v1, "shift":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginY:F

    iget-object v4, p0, Lcom/android/server/policy/NubiaSlideView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginX:F

    add-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginX:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/policy/NubiaSlideView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onDismiss()V
    .locals 8

    .prologue
    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    .local v3, "dis":F
    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    .local v1, "alphaText":I
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    .local v0, "alpha":I
    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    div-float v2, v5, v6

    .local v2, "delay":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .local v4, "valueAnimator":Landroid/animation/ValueAnimator;
    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/server/policy/NubiaSlideView$2;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/android/server/policy/NubiaSlideView$2;-><init>(Lcom/android/server/policy/NubiaSlideView;IIF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/server/policy/NubiaSlideView$3;

    invoke-direct {v5, p0}, Lcom/android/server/policy/NubiaSlideView$3;-><init>(Lcom/android/server/policy/NubiaSlideView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onRollBack()V
    .locals 8

    .prologue
    iget v3, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    .local v3, "dis":F
    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I

    .local v1, "alphaText":I
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mAlpha:I

    .local v0, "alpha":I
    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    sub-float/2addr v6, v3

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    div-float v2, v5, v6

    .local v2, "delay":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .local v4, "valueAnimator":Landroid/animation/ValueAnimator;
    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/server/policy/NubiaSlideView$4;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/android/server/policy/NubiaSlideView$4;-><init>(Lcom/android/server/policy/NubiaSlideView;IIF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/server/policy/NubiaSlideView$5;

    invoke-direct {v5, p0}, Lcom/android/server/policy/NubiaSlideView$5;-><init>(Lcom/android/server/policy/NubiaSlideView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLastDismissAnimator()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/server/policy/NubiaSlideView$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaSlideView$7;-><init>(Lcom/android/server/policy/NubiaSlideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Lcom/android/server/policy/NubiaSlideView$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaSlideView$8;-><init>(Lcom/android/server/policy/NubiaSlideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public getMaxScrollDistance()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    return v0
.end method

.method public getShift()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isCanInterrupt()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mViewAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/server/policy/NubiaSlideView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mRailHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mStr:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextLeft:F

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mTextBottom:F

    iget-object v3, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mShift:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginY:F

    iget-object v3, p0, Lcom/android/server/policy/NubiaSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/server/policy/NubiaSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .local v0, "textSize":F
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextLeft:F

    iget v1, p0, Lcom/android/server/policy/NubiaSlideView;->mRailHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float v2, v0, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/NubiaSlideView;->mTextBottom:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-boolean v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z

    if-nez v2, :cond_1

    iput v3, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput v3, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaSlideView;->isOnTouchOk(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mInitPosX:F

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaSlideView;->actionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaSlideView;->isOnTouchOk(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .local v1, "pointerIndex_local":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .local v0, "pointerId":I
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    if-ne v0, v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z

    invoke-direct {p0}, Lcom/android/server/policy/NubiaSlideView;->actionEventUP()V

    goto :goto_0

    .end local v0    # "pointerId":I
    .end local v1    # "pointerIndex_local":I
    :pswitch_5
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mPointerID:I

    if-eq v2, v3, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z

    invoke-direct {p0}, Lcom/android/server/policy/NubiaSlideView;->actionEventUP()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAllowInterrupt(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "canInterrupt"    # Ljava/lang/Boolean;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .local v1, "circleWidth":I
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, "circleHeight":I
    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMinRailWidth:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginX:F

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mRailHeight:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/NubiaSlideView;->mCircleStartOriginY:F

    return-void
.end method

.method public setDarkenAndFuzzyImage(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "fuzzyImageView"    # Landroid/widget/ImageView;
    .param p2, "darkenImageView"    # Landroid/widget/ImageView;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/server/policy/NubiaSlideView;->mDarkenLayerImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setMessageFlag(I)V
    .locals 0
    .param p1, "msgFlag"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/NubiaSlideView;->mMsgFlag:I

    return-void
.end method

.method public setOnChangeListener(Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView;->mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView;->mStr:Ljava/lang/String;

    return-void
.end method

.method public setThisViewAlpha(F)V
    .locals 3
    .param p1, "shift"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mViewAlpha:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    sub-float p1, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/NubiaSlideView;->mViewAlpha:F

    goto :goto_0
.end method

.method public startEnterIntoAnimator(I)V
    .locals 14
    .param p1, "delaytime"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/16 v13, 0xc8

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, v10, v13, v10, v4}, Lcom/android/server/policy/NubiaSlideView;->createEnterIntoAnimator(IIILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "animatorFirstAlpha":Landroid/animation/Animator;
    const/16 v4, 0x15e

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3eeb851f    # 0.46f

    const v7, 0x3e19999a    # 0.15f

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {p0, v11, v4, v10, v5}, Lcom/android/server/policy/NubiaSlideView;->createEnterIntoAnimator(IIILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v3

    .local v3, "animatorTransition":Landroid/animation/Animator;
    const/16 v4, 0x96

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, v12, v13, v4, v5}, Lcom/android/server/policy/NubiaSlideView;->createEnterIntoAnimator(IIILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    .local v1, "animatorSecondAlpha":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v10

    aput-object v1, v4, v11

    aput-object v3, v4, v12

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v4, Lcom/android/server/policy/NubiaSlideView$1;

    invoke-direct {v4, p0}, Lcom/android/server/policy/NubiaSlideView$1;-><init>(Lcom/android/server/policy/NubiaSlideView;)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
